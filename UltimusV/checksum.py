"""
Communication to control an ultimus V pump connected using a serial com port and optional
    digital out.

Created on Friday January 31 11:45 am 2020
Modified 

@author: Kazimierz Gofron
"""

import time
#import serial
from re import split
#from errors import print_error


def calc_checksum(code):
    '''
    Calculate a checsum value from a given code
    checksum = 0 - Sum(0->n, byts)
    The checksum is calculated by subtracting the actual value of each ASCII byte (“0” in ASCII is 0x20 in hex, 32 in decimal) from zero (0x00h). 
    The resulting negative value’s least significant byte is the checksum value.
    '''  
    sumN = 0;
    sumP = 0;
    for x in code:
        print (-ord(x)%256);
        print("modulo",ord(x)%256);
        sumP += -ord(x);
        sumN += -ord(x)%256;
    
    print("sunP=",sumP & 0xFF,"sumN=",sumN & 0xFF);
#    return '%2X' % (-(sum(ord(c) for c in code) %256) & 0xFF)          
    return '%2X' % (- (sum(ord(c) for c in code)) & 0xFF)          


'''
test code to run the pump
'''
if __name__ == "__main__":
    print("checksum =", calc_checksum("08PS  0500")); # => F0
