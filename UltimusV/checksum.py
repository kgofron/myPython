"""
Communication to control an ultimus V pump connected using a serial com port and optional
    digital out.

Created on Friday January 31 11:45 am 2020
Modified 

@author: Kazimierz Gofron
"""

import time
import serial
from re import split
from errors import print_error

class Ultimus_V_Pump():
    '''
    Class to control an ultimus V pump connected via serial
    
    Command Structure:
        [STX] [No. of Byte] [Command] [Data] [Checksum] [ETX]
        STX: start of packet char: 0x02h
        #Byte: sum of the number of chars in command and data portion, 2 digit hex encoded as ascii
        Cmd: 4 char command, empty space is space char 0x20h, encoded in ascii
        data: 0-251 chars, xmit in ascii
        ChkSum: subtrac ascii values of #btys, cmd and data from zero, 2 digit hex encoded in ascii
        ETX: end of packet char, 0x03h
        
        Acknowledge :   0x06h
        Not Ack:        0x15h
        Enquiry:        0x05h
        End of Xmssion: 0x04h
        Success Command: A0
        Failure Command: A2
    '''
    
    VAC_UNITS = {   'kpa' :  0,
                    'inh2o': 1,
                    'inhg':  2,
                    'mmhg':  3,
                    'torr':  4}
    
    PRESS_UNITS = { 'psi' :  0,
                    'bar':   1,
                    'kpa':   2}
    
    VAC_MULT = {   'kpa' :   100,
                    'inh2o': 10,
                    'inhg':  100,
                    'mmhg':  10,
                    'torr':  10}
     
    PRESS_MULT = { 'psi' :  10,
                    'bar':   1000,
                    'kpa':   10}
    
    def __init__(self, com, **kwargs):
        '''
        Set up a pump object, connect to the pump via serial io and optionally 
            run initial configurations.
        
        Input:
            com: the serial port number that the pump is connected to as an int.
            **kwargs <optional keyword arguments>
                stop_on_errors: instruct the error handling to halt the program 
                    upon an error if Boolean True defaults to False
                trigger: set the trigger method 'com' or 'DO' defaults to 'com'
                pressure_units: the pressure units you would like to set,
                    defaults to whatever is on the pump
                vacuum_units: the vacuum units you would like to set,
                    defaults to whatever is on the pump
                pressure: float value of the pressure to set 
                For DO only:
                A3200: the A3200 instance
                
        
        '''
        self.no_pump = False
        self.debug = False
        self.pressure_units = None
        self.vacuum_units = None
        self.pressure = -1
        self.vacuum = -1
        self.pump = serial.Serial(
            port = "COM" + str(com),
            baudrate = 115200,
            parity = serial.PARITY_NONE,
            bytesize=serial.EIGHTBITS,
            stopbits = serial.STOPBITS_ONE,
            timeout = 0.125)
        self.dispensing = False
        if 'stop_on_errors' in kwargs:
            self.stop_on_errors = kwargs['stop_on_errors']
        else:
            self.stop_on_errors = False
        if 'trigger' in kwargs:
            self.trigger = 'com' #default to com
            if kwargs['trigger'].lower() is 'do':
                self.trigger = "DO"
                try:
                    self.A3200 = kwargs['A3200']
                    self.trigger_bit = kwargs['bit']
                    self.trigger_axis = kwargs['axis']
                except KeyError:
                    print_error("DO triggering requires an A3200 instance, axis, and bit number, defaulting to com", self.stop_on_errors)
                    self.trigger = 'com'
        else:
            self.trigger = 'com'
        if 'pressure_units' in kwargs:
            self.set_pressure_units(kwargs['pressure_units'])
        else:
            self.get_pressure_units()
        if 'vacuum_units' in kwargs:
            self.set_vacuum_units(kwargs['pressure_units'])
        else:
            self.get_vacuum_units()
        if 'pressure' in kwargs:
            self.set_pressure(kwargs['pressure'])
        if 'vacuum' in kwargs:
            self.set_pressure(kwargs['vacuum'])
    

    def calc_checksum(self, code):
        '''
        Calculate a checsum value from a given code
        '''  
        return '%2X' % (-(sum(ord(c) for c in code) %256) & 0xFF)          
    
    def format_command(self, code):
        '''
        For a given string containing the command and data, format a complete command
        '''
        #calculate and append the Byte Count:
        code = "{length:02X}{text}".format(length = len(code), text = code)
        #calculate and append the checksum:
        code = code + self.calc_checksum(code)
        code = "\x02" + code + "\x03"
        return code

