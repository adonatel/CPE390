#!/usr/bin/env python

import serial
usbCom=serial.Serial('/dev/ttyACMO', 9600)
usbCom.open()
usbCom.write('1')
