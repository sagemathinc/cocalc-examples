#######################################################
##                                                   ##
##  RSA.sage                                         ##
##                                                   ##
##  These routines are the only ones needed for the  ##
##  RSA application from the textbook "Abstract      ##
##  Algebra, an Interactive Approach" by William     ##
##  Paulsen.                                         ##
##                                                   ##
##  These routines are free to the public            ##
##                                                   ##
##  Last Updated:  11/18/2022                        ##
##                                                   ##
#######################################################


## Allow alias of several Sage functions to be consistent with the CamelCase convention of Mathematica

def PowerMod(x, r, n): 
    return pow(x, r, n)  

def NextPrime(n):
    if n%2 == 0:
       n = n+1
    while not(is_prime(n)):
       n = n+2
    return n
   
def CentToAscii(x):
    if x < 1:
        y = 32
    elif x < 30:
        y = x + 64
    elif x < 47:
        y = x + 18
    elif x < 48:
        y = 33
    elif x < 81:
        y = x + 46
    elif x < 95:
        y = x - 47
    elif x == 95:
        y = 196
    elif x == 96:
        y = 203
    elif x == 97:
        y = 214
    elif x == 98:
        y = 220
    elif x == 99:
        y = 223
    else:
        y = 0
    return y

def AsciiToCent(x):
    if x < 33:
        y = 0
    elif x < 34:
        y = 47
    elif x < 48:
        y = x + 47
    elif x < 65:
        y = x - 18
    elif x < 94:
        y = x - 64
    elif x < 127:
        y = x - 46
    else:
        y = 0
    return y

def MessageToNumber(s):
    total = 0
    for i in range(len(s)):
        total = total * 100 + AsciiToCent(ord(s[i]))
    return total

def NumberToMessage(n):
    strlist = ""
    Temp = int(n)
    while Temp > 0:
        m = Temp % 100
        Temp = Temp // 100
        strlist = chr(CentToAscii(m)) + strlist
    return strlist    	
	
print("RSA routines loaded.")	