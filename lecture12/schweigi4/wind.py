import tkinter as tk

import serial
import time
ser = serial.Serial('COM3', 9600, timeout=0,parity=serial.PARITY_NONE, rtscts=1)



root = tk.Tk()

# specify size of window.
root.geometry("500x400")

# Create text widget and specify size.
T = tk.Text(root, height = 10, width = 50)

# Create label
l = tk.Label(root, text = "Fact of the Day")
l.config(font =("Courier", 14))

Fact = """A man can be arrested in
Italy for wearing a skirt in public."""

# Create button for next text.
#b1 = tk.Button(root, text = "Next", )

# Create an Exit button.
#b2 = tk.Button(root, text = "Exit", command = root.destroy)

l.pack()
T.pack()
#b1.pack()
#b2.pack()

# Insert The Fact.
#T.insert(tk.END, Fact)

frame = tk.Frame(master=root, width=150, height=150)
frame.pack()

try:
    while True:
        # Read data from the serial port
        data = ser.readline().decode('utf-8').strip()

        # If data received, print it
        if data:
            label2 = tk.Label(master=frame, text=data, bg="yellow")
            label2.place(x=75, y=75)
            #print("Received data from serial port: ", data)
            # Give the device time to send data again
            time.sleep(0.5)

# To close the serial port gracefully, use Ctrl+C to break the loop
except KeyboardInterrupt:
    print("Closing the serial port.")
    ser.close()


tk.mainloop()
