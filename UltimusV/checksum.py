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
    '''  
    return '%2X' % (-(sum(ord(c) for c in code) %256) & 0xFF)          


'''
test code to run the pump
'''
if __name__ == "__main__":
    print("checksum =", calc_checksum("08PS  0500")); # => F0
