import serial
from tkinter import *
import threading

stop_event = threading.Event()

root = Tk()
root.geometry("700x530")
frame = Frame(root)
frame.pack()
var = StringVar()
label2 = Label( root, textvariable=var, relief=RAISED )
label2.config(font=('Helvetica bold', 16))
b2 = Button(root, text = "Exit", command = root.destroy)

def terminate_prog():
    stop_event.set()
    root.destroy()

#b2 = Button(root, text="Exit", command=terminate_prog)
b2.pack()

serialPort = serial.Serial('COM3', 9600, timeout=10,parity=serial.PARITY_NONE, rtscts=1)
res = 114


def reset():
    serialPort.write(b'r') #'r'

def _readline():
    #eol = b'\r'
    eol = b'$'
    leneol = len(eol)
    line = bytearray()
    while True:
        #print("RL")
        c = serialPort.read(1)
        #print(c)
        if c:
            #if c != b'$':
            line += c
            if line[-leneol:] == eol:
                break
        else:
            break
        #if stop_event.is_set():
            #break
    return bytes(line)



def myClick():
    while serialPort:
        
        serialPort.flush()
        data = _readline()
        
        if data:
            var.set(data)
            #print(data)
            label2.pack(anchor="w")
            label2.place(x=45, y=100)




#threading.Thread(target=myClick).start

myButton = Button(root, text="Get testbus data", command=threading.Thread(target=myClick).start)
#myButton = Button(root, text="Get testbus data", command=myClick)
myButton.pack()
resetButton = Button(root, text="Reset", command=reset)
resetButton.pack()

root.mainloop()