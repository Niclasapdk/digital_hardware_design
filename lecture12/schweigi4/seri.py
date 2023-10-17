import serial
import time
ser = serial.Serial('COM3', 9600, timeout=0,parity=serial.PARITY_NONE, rtscts=1)
try:
    while True:
        # Read data from the serial port
        data = ser.readline().decode('utf-8').strip()

        # If data received, print it
        if data:
            print("Received data from serial port: ", data)
            # Give the device time to send data again
            time.sleep(0.5)

# To close the serial port gracefully, use Ctrl+C to break the loop
except KeyboardInterrupt:
    print("Closing the serial port.")
    ser.close()