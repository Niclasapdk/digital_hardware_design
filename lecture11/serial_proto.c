#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <stdbool.h>
#include <errno.h>

/* **** User Interface **** */
#define PROMPT "> "
/* **** User Interface **** */

/* **** PROTOCOL **** */
#define FRAME_DELIM 'S'
#define DATA_DELIM ','
#define ACK 'Y'

// Command mnemonics
#define CMD_LEN 3
#define CMD_READ  "RDA"
#define CMD_WRITE "WRA"

// Number of digits
#define PORT_NUM_DIGITS 2
#define VAL_NUM_DIGITS 4
/* **** PROTOCOL **** */

/* **** Serial Emulation **** */
#define BUFSIZE 64 // max 256
typedef struct msgBuf {
    char name[8]; // name for debugging. Max length 7 bytes
    uint8_t txIdx;
    uint8_t rxIdx;
    int16_t dataWaiting;
    char data[BUFSIZE];
} msgBuf_t;
/* **** Serial Emulation **** */

/* **** Slave Port Emulation **** */
#define NUM_PORTS 100
typedef struct portArray {
    uint16_t ports[NUM_PORTS];
} portArray_t;
/* **** Slave Port Emulation **** */

void portsDbgShow(portArray_t *portArr);
void bufDbgShow(msgBuf_t *buf);

int bufSendByte(msgBuf_t *buf, uint8_t data); // returns negative number if ERR
uint8_t bufRecvByte(msgBuf_t *buf);

size_t getCommand(char *inpBuf, int maxSize); // returns number of bytes read

void bufSendFrame(msgBuf_t *buf, char *data, int n);
size_t bufRecvFrame(msgBuf_t *buf, char *data, int maxLen);

int slaveParseCommand(portArray_t *portArr, msgBuf_t *buf, char *cmdBuf);

int main() {
    msgBuf_t *txBuf = calloc(1, sizeof(msgBuf_t));
    strcpy(txBuf->name, "txBuf");
    msgBuf_t *rxBuf = calloc(1, sizeof(msgBuf_t));
    strcpy(rxBuf->name, "rxBuf");
    portArray_t *portArr = calloc(1, sizeof(portArray_t));

    char inpBuf[BUFSIZE];
    char recvBuf[BUFSIZE];
    while (1) {
        portsDbgShow(portArr);
        bufDbgShow(txBuf);
        bufDbgShow(rxBuf);

        // Master
        // Receive stuff
        size_t parrotLen = bufRecvFrame(rxBuf, recvBuf, BUFSIZE);
        printf("Master receive buf: count: %llu, data: %s\n\n", parrotLen, recvBuf);
        // Get command from prompt and send to slave
        size_t cmdLen = getCommand(inpBuf, BUFSIZE);
        bufSendFrame(txBuf, inpBuf, cmdLen);

        // Slave
        size_t recvCmdLen = bufRecvFrame(txBuf, recvBuf, BUFSIZE);
        printf("\nSlave receive buf: count: %llu, data: %s\n\n", recvCmdLen, recvBuf);
        slaveParseCommand(portArr, rxBuf, recvBuf);
    }
}

void portsDbgShow(portArray_t *portArr) {
    printf("Analog ports debug\n");
    for (int i = 0; i < NUM_PORTS; i++) {
        printf("%04u;", portArr->ports[i]);
        if (i % 10 == 9)
            putc('\n', stdout);
        else
            putc(' ', stdout);
    }
    putc('\n', stdout);
}

int bufSendByte(msgBuf_t *buf, uint8_t data) {
    if (buf->txIdx >= BUFSIZE)
        buf->txIdx = 1;
    else
        buf->txIdx++;
    buf->dataWaiting++;
    buf->data[buf->txIdx-1] = data;
}

uint8_t bufRecvByte(msgBuf_t *buf) {
    if (!buf->dataWaiting)
        return 0xff; // Error
    if (buf->rxIdx >= BUFSIZE)
        buf->rxIdx = 1;
    else
        buf->rxIdx++;
    buf->dataWaiting--;
    return buf->data[buf->rxIdx-1];
}

void bufDbgShow(msgBuf_t *buf) {
    printf("%s debug\ntxIdx: %hu, rxIdx: %hu, data: %s\n", buf->name, buf->txIdx, buf->rxIdx, buf->data);
    for (int i = 0; i < BUFSIZE; i++) {
        printf("%1$p (%1$c);", buf->data[i]);
        if (i % 8 == 7)
            putc('\n', stdout);
        else
            putc(' ', stdout);
    }
    putc('\n', stdout);
}

size_t getCommand(char *inpBuf, int maxSize) {
    memset(inpBuf, 0, maxSize);
    printf(PROMPT);
    if (fgets(inpBuf, maxSize, stdin) == NULL)
        return 0;
    char *bufEnd = strchr(inpBuf, '\n');
    if (bufEnd == NULL)
        return 0;
    *bufEnd = '\0';
    return bufEnd - inpBuf;
}

void bufSendFrame(msgBuf_t *buf, char *data, int n) {
    bufSendByte(buf, FRAME_DELIM);
    for (int i = 0; i < n; i++) {
        bufSendByte(buf, data[i]);
    }
    bufSendByte(buf, FRAME_DELIM);
}

size_t bufRecvFrame(msgBuf_t *buf, char *data, int maxLen) {
    memset(data, 0, maxLen);
    size_t count;
    if (bufRecvByte(buf) != FRAME_DELIM)
        return 0;
    char c;
    for (count = 0; count < maxLen; count++) {
        c = bufRecvByte(buf);
        if (c == FRAME_DELIM) {
            break;
        } else {
            data[count] = c;
        }
    }
    return count;
}

int slaveParseCommand(portArray_t *portArr, msgBuf_t *buf, char *cmdBuf) {
    int ret = 0;
    char *endptr;

    // check command type
    bool isRead = strncmp(cmdBuf, CMD_READ, CMD_LEN) == 0;
    bool isWrite = strncmp(cmdBuf, CMD_WRITE, CMD_LEN) == 0;
    cmdBuf += CMD_LEN;
    // check for data delimiter
    if (*cmdBuf++ != DATA_DELIM) goto EXIT_ERR;

    // parse port number
    uint8_t port = strtoul(cmdBuf, &endptr, 10);
    if (endptr - cmdBuf != PORT_NUM_DIGITS) goto EXIT_ERR;
    cmdBuf += PORT_NUM_DIGITS;
    if (port >= NUM_PORTS) goto EXIT_ERR;

    if (isRead) {
        uint16_t value = portArr->ports[port];
        // do your best parrot impression
        char frameBuf[CMD_LEN + PORT_NUM_DIGITS + VAL_NUM_DIGITS + 8] = {0};
        int n = sprintf(frameBuf, "%c"CMD_READ",%02u,%04u", ACK, port, value);
        bufSendFrame(buf, frameBuf, n);
        goto EXIT;
    } else if (isWrite) {
        // check for data delimiter
        if (*cmdBuf++ != DATA_DELIM) goto EXIT_ERR;

        // parse value number
        uint16_t value = strtoul(cmdBuf, &endptr, 10);
        if (endptr - cmdBuf != VAL_NUM_DIGITS) goto EXIT_ERR;
        cmdBuf += VAL_NUM_DIGITS;

        // write to port
        portArr->ports[port] = value;

        // do your best parrot impression
        char frameBuf[CMD_LEN + PORT_NUM_DIGITS + 8] = {0};
        int n = sprintf(frameBuf, "%c"CMD_WRITE",%d", ACK, port);
        bufSendFrame(buf, frameBuf, n);
        goto EXIT;
    }
EXIT_ERR:
    // Malformed packet (we could use this for proper error handling but why bother)
    ret = -EINVAL;
EXIT:
    return ret;
}
