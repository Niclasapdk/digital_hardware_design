#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

#define PROMPT "> "

#define FRAME_DELIM 'S'
#define ACK 0x06

#define BUFSIZE 64 // max 256
typedef struct msgBuf {
    char name[8]; // name for debugging. Max length 7 bytes
    uint8_t txIdx;
    uint8_t rxIdx;
    int16_t dataWaiting;
    char data[BUFSIZE];
} msgBuf_t;

int bufSendByte(msgBuf_t *buf, uint8_t data); // returns negative number if ERR
uint8_t bufRecvByte(msgBuf_t *buf);

void dbgShowBuf(msgBuf_t *buf);

size_t getCommand(char *inpBuf, int maxSize); // returns number of bytes read

void bufSendFrame(msgBuf_t *buf, char *data, int n);
size_t bufRecvFrame(msgBuf_t *buf, char *data, int maxLen);

int main() {
    msgBuf_t *txBuf = calloc(1, sizeof(msgBuf_t));
    strcpy(txBuf->name, "txBuf");
    msgBuf_t *rxBuf = calloc(1, sizeof(msgBuf_t));
    strcpy(rxBuf->name, "rxBuf");

    char inpBuf[BUFSIZE];
    char recvBuf[BUFSIZE];
    size_t cmdLen;
    while (1) {
        cmdLen = getCommand(inpBuf, BUFSIZE); // master
        //printf("cmdLen: %llu, inpBuf: %s\n", cmdLen, inpBuf);
        bufSendFrame(txBuf, inpBuf, cmdLen); // master
        dbgShowBuf(txBuf); // master
        size_t count = bufRecvFrame(txBuf, recvBuf, BUFSIZE); // slave
        printf("Slave receive buf: count: %llu, data: %s\n", count, recvBuf); // slave
    }
}

int bufSendByte(msgBuf_t *buf, uint8_t data) {
    if (buf->txIdx >= BUFSIZE)
        buf->txIdx = 1;
    else
        buf->txIdx++;
    buf->data[buf->txIdx-1] = data;
}

uint8_t bufRecvByte(msgBuf_t *buf) {
    if (buf->rxIdx >= BUFSIZE)
        buf->rxIdx = 1;
    else
        buf->rxIdx++;
    return buf->data[buf->rxIdx-1];
}

void dbgShowBuf(msgBuf_t *buf) {
    printf("\n%s debug\ntxIdx: %hu, rxIdx: %hu, data: %s\n", buf->name, buf->txIdx, buf->rxIdx, buf->data);
    for (int i = 0; i < BUFSIZE; i++) {
        printf("%p (%1$c);", buf->data[i]);
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
