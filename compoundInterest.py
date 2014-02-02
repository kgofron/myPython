#!/usr/bin/env python
principal = 1000 # Initial amount
rate = 0.25      # Initial rate
numyears = 5     # Number of years
# principal = 1000; rate = 0.25; numyears =5;
year =1
while year <= numyears:
    principal = principal * (1 + rate)
#    print year, principal # Reminder: print(year, principal) in Python 3
    print "%3d %0.2f" % (year, principal)     
    year += 1
