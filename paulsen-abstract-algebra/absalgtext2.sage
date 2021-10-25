#######################################################
##                                                   ##
##  absalgtext.sage                                  ##
##                                                   ##
##  These routines are used with the sage workbooks  ##
##  that are provided with the book "Abstract        ##
##  Algebra, an Interactive Approach" by William     ##
##  Paulsen.                                         ##
##                                                   ##
##  It is not to be distributed without the          ##
##  textbook, nor used by anyone without possession  ##
##  of a copy of the textbook.                       ##
##                                                   ##
##  Last Updated:  9/13/2020                         ##
##                                                   ##
#######################################################

from numpy import array

## Set up type of elements to test whether an element is of a certain type 

GapInstance = type(gap("(1,2)")) # used for isinstance to detect Gap elements
IntModType = type(Integers(2)(1)) # used for isinstance to detect multiplication mod n
IntType = type(1)  
GFType = type(GF(2))
QuatType = type(QuaternionAlgebra(SR, -1, -1).gens()[0])

## Set flags to their default position

reset("e")
E = e # since e is often used for the identity element of a group, we need a way to access 2.718281828...

IdentityElement = "e"
GeneratorList = []
RelationsList1 = []
RelationsList2 = []
ModuloList = []
RingDefArray = []
LastInit = "None"
RingPolyVar = ""
UnivFieldVar = ""
LastFieldVar = ""

## Allow alias of several Sage functions to be consistent with the CamelCase convention of Mathematica
    
def EulerPhi(x):
    return euler_phi(x)
    
def PowerMod(x, r, n): 
    return pow(x, r, n)    
    
def PartitionsP(x):
    return Partitions(x).cardinality()    

def ConwayPolynomial(p,d):
    return conway_polynomial(p, d)    
        
def PolynomialQuotient(dividend, divisor):
    return (dividend._maxima_().divide(divisor).sage())[0]   

def PolynomialRemainder(dividend, divisor):
    return (dividend._maxima_().divide(divisor).sage())[1]
   
maxima_calculus('algebraic: true;') # allows Together to also rationalize the denominator.
        
def Together(x):
    if isinstance(x, QuatType):
        return x[0].simplify_rational() + x[1].simplify_rational() * i + x[2].simplify_rational() * j + x[3].simplify_rational() * k
    return x.simplify_rational()
    
def AddMod(x):
    return ZGroup(x)
    
def MultMod(x):
    return ZRing(x)  

def TrigReduce(x):
    y = expand(x)
    try:
        y = y.trig_reduce()
    except:
        return y    
    y = y.subs(cos(4*pi/9) == cos(pi/9) - cos(2*pi/9))
    y = y.subs(cos(5*pi/9) == cos(2*pi/9) - cos(pi/9))
    y = y.subs(cos(3*pi/7) == cos(2*pi/7) - cos(pi/7) + 1/2) 
    y = y.subs(cos(4*pi/7) == cos(pi/7) - cos(2*pi/7) - 1/2)   
    y = expand(y)
    return y #y.trig_reduce()  

########################################################
##                                                    ##
##  Graphical Routines                                ##
##                                                    ##
##  These routines take advantage of Sage's graphics  ##
##  capabilities.  They include Terry the triangle,   ##
##  swapping books, the octahedron, and the Pyriminx  ##
##  puzzle.                                           ##
##                                                    ##
########################################################

ColorTable = {0:'#000000', 1:'#FFFF00', 2:'#FF00FF', 3:'#00FFFF', 4:'#FF0000', 5:'#00FF00', 6:'#9966CC', 7:'#FF9900', 8:'#B3CCB3',
9:'#CC9980', 10:'#8099CC', 11:'#CC3380', 12:'#CC9933', 13:'#999933', 14:'#FF6666', 15:'#33CCB3', 16:'#FF99FF', 17:'#B3FF00',
18:'#0000FF', 19:'#996666', 20:'#0099FF', 21:'#FFCCB3', 22:'#6633FF', 23:'#FFCC66', 24:'#339966', 25:'#80CCCC', 26:'#66CC80',
27:'#00FF99', 28:'#CC8033', 29:'#3333E5'}

       
TerryColor = ['#FF0000', '#00FF00', '#00FFFF']

def ShowTerry():
    global TerryColor
    global Stay
    global FlipRt
    global RotRt
    global FlipLft
    global RotLft
    global Spin
    global IdentityElement
    global GeneratorList
    global RelationsList1
    global RelationsList2
    if LastInit != "InitTerry":
        # If Terry's group is not already defined, create a free group over 6 indeterminates.
        IdentityElement = "e"
        GeneratorList = ["FlipRt", "RotRt", "FlipLft", "RotLft", "Spin", "Stay"]
        RelationsList1 = []
        RelationsList2 = []
        FlipRt = StringElement("A")
        RotRt = StringElement("B")
        FlipLft = StringElement("C")
        RotLft = StringElement("D")
        Spin = StringElement("E")
        Stay = StringElement("F")
    sqrt3 = sqrt(3).n()
    Graff = Graphics()
    Graff += polygon([(0,0),(0,2),(sqrt3,-1)], color = TerryColor[0])
    Graff += polygon([(0,0),(0,2),(-sqrt3,-1)], color = TerryColor[1]) 
    Graff += polygon([(0,0),(sqrt3,-1),(-sqrt3,-1)], color = TerryColor[2])
    return Graff.show(axes = false, aspect_ratio = 1, xmin = -2, xmax = 2, ymin = -2, ymax = 2)
       
def Terry(arg):
    global TerryColor
    sqrt3 = sqrt(3).n()
    v = []
    s = arg._x  
    if s == "":  # Stay converts to "F"
        s = "F"
    for c in s:
        if(c == 'F'): #Stay
            Graff = Graphics()
            Graff += polygon([(0,0),(0,2),(sqrt3,-1)], color = TerryColor[0])
            Graff += polygon([(0,0),(0,2),(-sqrt3,-1)], color = TerryColor[1]) 
            Graff += polygon([(0,0),(sqrt3,-1),(-sqrt3,-1)], color = TerryColor[2])
            for i in range(5):    
                v.append(Graff)
        elif(c == 'B'): #RotRt
            for i in range(6): 
                th = 2*pi*i/3/5.0  # theta ranges from 0 to 2pi/3, inclusive   
                Graff = Graphics()
                Graff += polygon([(0,0),(2*sin(th),2*cos(th)), (2*sin(th + 2*pi/3),2*cos(th + 2*pi/3))], color = TerryColor[0])
                Graff += polygon([(0,0), (2*sin(th + 2*pi/3),2*cos(th + 2*pi/3)), (2*sin(th - 2*pi/3),2*cos(th - 2*pi/3))], color = TerryColor[2])
                Graff += polygon([(0,0), (2*sin(th - 2*pi/3),2*cos(th - 2*pi/3)), (2*sin(th),2*cos(th))], color = TerryColor[1])
                v.append(Graff)
            Temp = TerryColor[0]
            TerryColor[0] = TerryColor[1]
            TerryColor[1] = TerryColor[2]
            TerryColor[2] = Temp        
        elif(c == 'D'): #RotLft
            for i in range(6): 
                th = 2*pi*i/3/5.0  # theta ranges from 0 to 2pi/3, inclusive   
                Graff = Graphics()
                Graff += polygon([(0,0),(-2*sin(th),2*cos(th)), (2*sin(2*pi/3 - th),2*cos(2*pi/3 - th))], color = TerryColor[0])
                Graff += polygon([(0,0), (2*sin(2*pi/3-th),2*cos(2*pi/3-th)), (-2*sin(th + 2*pi/3),2*cos(th + 2*pi/3))], color = TerryColor[2])
                Graff += polygon([(0,0), (-2*sin(th + 2*pi/3),2*cos(th + 2*pi/3)), (-2*sin(th),2*cos(th))], color = TerryColor[1])
                v.append(Graff)
            Temp = TerryColor[0]
            TerryColor[0] = TerryColor[2]
            TerryColor[2] = TerryColor[1]
            TerryColor[1] = Temp  
        elif(c == 'E'): #Spin
            for i in range(6): 
                th = pi*i/5.0  # theta ranges from 0 to pi, inclusive   
                Graff = Graphics()
                Graff += polygon([(0,0),(0,2),(sqrt3*cos(th),sin(th)/2-1)], color = TerryColor[0])
                Graff += polygon([(0,0), (sqrt3*cos(th),sin(th)/2-1), (-sqrt3*cos(th),-sin(th)/2-1)], color = TerryColor[2])
                Graff += polygon([(0,0), (-sqrt3*cos(th),-sin(th)/2-1), (0,2)], color = TerryColor[1])
                v.append(Graff)
            Temp = TerryColor[0]
            TerryColor[0] = TerryColor[1]
            TerryColor[1] = Temp  
        elif(c == 'A'): #FlipRt
            for i in range(6): 
                th = pi*i/5.0  # theta ranges from 0 to pi, inclusive   
                Graff = Graphics()
                Graff += polygon([(0,0),(-sqrt3,-1),(sqrt3/2 - sqrt3*cos(th)/2 - sqrt3*sin(th)/4, 1/2 + 3*cos(th)/2 - sin(th)/4)], color = TerryColor[1])
                Graff += polygon([(0,0), (sqrt3/2 - sqrt3*cos(th)/2 - sqrt3*sin(th)/4, 1/2 + 3*cos(th)/2 - sin(th)/4),
                                         (sqrt3/2 + sqrt3*cos(th)/2 + sqrt3*sin(th)/4, 1/2 - 3*cos(th)/2 + sin(th)/4)], color = TerryColor[0])
                Graff += polygon([(0,0), (sqrt3/2 + sqrt3*cos(th)/2 + sqrt3*sin(th)/4, 1/2 - 3*cos(th)/2 + sin(th)/4), 
                                         (-sqrt3,-1)], color = TerryColor[2])
                v.append(Graff)
            Temp = TerryColor[1]
            TerryColor[1] = TerryColor[2]
            TerryColor[2] = Temp 
        elif(c == 'C'): #FlipLft
            for i in range(6): 
                th = pi*i/5.0  # theta ranges from 0 to pi, inclusive   
                Graff = Graphics()
                Graff += polygon([(0,0),(sqrt3,-1),(-sqrt3/2 - sqrt3*cos(th)/2 + sqrt3*sin(th)/4, 1/2 - 3*cos(th)/2 - sin(th)/4)], color = TerryColor[2])
                Graff += polygon([(0,0), (-sqrt3/2 - sqrt3*cos(th)/2 + sqrt3*sin(th)/4, 1/2 - 3*cos(th)/2 - sin(th)/4),
                                         (-sqrt3/2 + sqrt3*cos(th)/2 - sqrt3*sin(th)/4, 1/2 + 3*cos(th)/2 + sin(th)/4)], color = TerryColor[1])
                Graff += polygon([(0,0), (-sqrt3/2 + sqrt3*cos(th)/2 - sqrt3*sin(th)/4, 1/2 + 3*cos(th)/2 + sin(th)/4), 
                                         (sqrt3,-1)], color = TerryColor[0])
                v.append(Graff)
            Temp = TerryColor[0]
            TerryColor[0] = TerryColor[2]
            TerryColor[2] = Temp                     
        else:
            print("Invalid rotation")
    aniTerry = animate(v, xmin = -2, xmax = 2, ymin = -2, ymax = 2, aspect_ratio = 1, axes = false)
    try:
        return aniTerry.show(delay = 50, iterations = 1, gif = True)
    except:
        return aniTerry.show(delay = 50, iterations = 1)      
       
BookColor = []  # Initialize so we can use it later
 
def ShowBooks():
    global BookColor
    Graff = Graphics()
    for i in range(len(BookColor)):
        Graff += polygon([(2*i,-i),(2*i+.16,-.34-i),(2*i+.382,-.618-i),(2*i+.66,-.84-i),(2*i+1,-1-i),(2*i+1.421,-1.079-i),(2*i+2,-1-i), (2*i+2,-.875-i),(2*i+2.25,-.75-i),(2*i+5.333,2.333-i),(2*i+5.333,9.333-i),(2*i+5.167,9.417-i),(2*i+3.5,7.75-i),(2*i+3.5,10.25-i), (2*i+3.333,10.333-i),(2*i+.25,7.25-i),(2*i+.125,7-i),(2*i,7-i)], color = BookColor[i])
        Graff += polygon([(2*i+4.5,8.75-i),(2*i+2,6.25-i),(2*i+2,6-i),(2*i+1.421,5.921-i),(2*i+1,6-i), (2*i+.66,6.16-i),(2*i+.382,6.382-i),(2*i+.271,6.521-i),(2*i+3.167,9.417-i)], rgbcolor=(1,1,1))
        Graff += line([(2*i,-i),(2*i+.16,-.34-i),(2*i+.382,-.618-i),(2*i+.66,-.84-i),(2*i+1,-1-i),(2*i+1.421,-1.079-i),(2*i+2,-1-i),(2*i+2,6-i), (2*i+1.421,5.921-i),(2*i+1,6-i),(2*i+.66,6.16-i),(2*i+.382,6.382-i),(2*i+.16,6.66-i),(2*i,7-i),(2*i,-i)], rgbcolor=(0,0,0))
        Graff += line([(2*i+3.167,9.417-i),(2*i+4.5,8.75-i)], rgbcolor=(0,0,0))
        Graff += line([(2*i+5.333,9.333-i),(2*i+2.25,6.25-i),(2*i+2,6.125-i)], rgbcolor=(0,0,0))
        Graff += line([(2*i,7-i),(2*i+.25,7-i),(2*i+3.5,10.25-i)], rgbcolor=(0,0,0))
        Graff += line([(2*i+2,6-i),(2*i+2,6.25-i),(2*i+5.167,9.417-i),(2*i+5.333,9.333-i)], rgbcolor=(0,0,0))
        Graff += line([(2*i+.25,6.547-i),(2*i+.25,7-i)], rgbcolor=(0,0,0))
        Graff += line([(2*i+.125,7-i),(2*i+.25,7.25-i),(2*i+3.333,10.333-i),(2*i+3.5,10.25-i),(2*i+3.5,9.25-i)], rgbcolor=(0,0,0))
    i = len(BookColor)-1    
    Graff += line([(2*i+2.25,6.25-i),(2*i+2.25,-.75-i),(2*i+5.333,2.333-i),(2*i+5.333,9.333-i)], rgbcolor=(0,0,0))   
    return Graff.show(axes = false)
   
def InitBooks(n):
    global BookColor
    global Stay
    global Left
    global Right
    global First
    global Last
    global Rev
    Stay = var('Stay')
    Left = var('Left')
    Right = var('Right')
    First = var('First')
    Last = var('Last')
    Rev = var('Rev')
    BookColor = []
    for i in range(n):
        BookColor.append(ColorTable[i+4])
    return ShowBooks()
            
def MoveBooks(*args):
    global BookColor
    n = len(BookColor)
    if n > 1:
        for arg in args:
            if (arg == Stay):
                ShowBooks()
            elif (arg == Left):
                BookColor.append(BookColor.pop(0))
                ShowBooks()
            elif (arg == Right):
                BookColor.insert(0,BookColor.pop())
                ShowBooks()
            elif (arg == First):
                Temp = BookColor[0]
                BookColor[0] = BookColor[1]
                BookColor[1] = Temp
                ShowBooks()
            elif (arg == Last):
                Temp = BookColor[n-1]
                BookColor[n-1] = BookColor[n-2]
                BookColor[n-2] = Temp
                ShowBooks()
            elif (arg == Rev):
                BookColor.reverse()
                ShowBooks()
            else:
                print("Invalid step")
    return            
                
OctColor = [(1,0,0), (0,1,0), (0,0,1), (1,1,0), (1,0,1), (0,1,1), (1,.6,0), (0,0,0)]

def OctProj(x,y,z):  # projects a 3D point into 2D, using the projection angle that was used in TeX
    return (-0.3*x + y, -0.375*x -0.15*y + z) 
    
def ShowOctahedron():
    global OctColor
    Graff = Graphics()
    Graff += polygon([OctProj(0,0,1), OctProj(0,1,0), OctProj(1,0,0)], rgbcolor = OctColor[0])
    Graff += polygon([OctProj(0,0,1), OctProj(0,-1,0), OctProj(1,0,0)], rgbcolor = OctColor[2])
    Graff += polygon([OctProj(0,0,-1), OctProj(0,1,0), OctProj(1,0,0)], rgbcolor = OctColor[4])
    Graff += polygon([OctProj(0,0,-1), OctProj(0,-1,0), OctProj(1,0,0)], rgbcolor = OctColor[6])
    return Graff.show(axes = false, aspect_ratio = 1)

def ShowOctahedronWithQuaternions():
    global OctColor
    Graff = Graphics()
    Graff += polygon([OctProj(0,0,1), OctProj(0,1,0), OctProj(1,0,0)], rgbcolor = OctColor[0])
    Graff += polygon([OctProj(0,0,1), OctProj(0,-1,0), OctProj(1,0,0)], rgbcolor = OctColor[2])
    Graff += polygon([OctProj(0,0,-1), OctProj(0,1,0), OctProj(1,0,0)], rgbcolor = OctColor[4])
    Graff += polygon([OctProj(0,0,-1), OctProj(0,-1,0), OctProj(1,0,0)], rgbcolor = OctColor[6])
    Graff += text("i", OctProj(0,1.1,0), fontsize=20, rgbcolor=(0,0,0))
    Graff += text("-i", OctProj(0,-1.1,0), fontsize=20, rgbcolor=(0,0,0))
    Graff += text("j", OctProj(0.7,0,0), fontsize=20, rgbcolor=(0,0,0))
    Graff += text("k", OctProj(0,0,1.1), fontsize=20, rgbcolor=(0,0,0))
    Graff += text("-k", OctProj(0,0,-1.1), fontsize=20, rgbcolor=(0,0,0))
    Graff += text("<--------  -j", OctProj(-1,0,0), horizontal_alignment='left', fontsize=20, rgbcolor=(0,0,0))
    return Graff.show(axes = false, aspect_ratio = 1)
    
def InitOctahedron():
    global OctColor
    global a
    global b
    global c
    a = var('a')
    b = var('b')
    c = var('c')    
    OctColor = [(1,0,0), (0,1,0), (0,0,1), (1,1,0), (1,0,1), (0,1,1), (1,.6,0), (0,0,0)]
    return ShowOctahedron()
    
def RotateOctahedron(*args):
    global OctColor
    v = [] 
    for arg in args:
        if(arg == a):
            for i in range(11): 
                th = pi*i/10.0  # theta ranges from 0 to pi, inclusive  
                X = OctProj(N((1 + cos(th))/2), N((-1 + cos(th))/2), N(-sqrt(2)*sin(th)/2))
                nX = OctProj(N((-1 - cos(th))/2), N((1 - cos(th))/2), N(sqrt(2)*sin(th)/2))
                Y = OctProj(N((-1 + cos(th))/2), N((1 + cos(th))/2), N(-sqrt(2)*sin(th)/2))
                nY = OctProj(N((1 - cos(th))/2), N((-1 - cos(th))/2), N(sqrt(2)*sin(th)/2))
                Z = OctProj(N(sqrt(2)*sin(th)/2), N(sqrt(2)*sin(th)/2), N(cos(th)))
                nZ = OctProj(N(-sqrt(2)*sin(th)/2), N(-sqrt(2)*sin(th)/2), N(-cos(th)))
                Graff = Graphics()
                if th < 0.3455: # cutoff for this particular projection function
                    Graff += polygon([X,Y,Z], rgbcolor = OctColor[0])
                    Graff += polygon([X,nY,Z], rgbcolor = OctColor[2])
                    Graff += polygon([X,Y,nZ], rgbcolor = OctColor[4])
                    Graff += polygon([X,nY,nZ], rgbcolor = OctColor[6])
                elif th < 0.5278:
                    Graff += polygon([X,Y,Z], rgbcolor = OctColor[0])
                    Graff += polygon([X,nY,Z], rgbcolor = OctColor[2])
                    Graff += polygon([X,Y,nZ], rgbcolor = OctColor[4])
                    Graff += polygon([nX,Y,Z], rgbcolor = OctColor[1])
                elif th < 1.7593:
                    Graff += polygon([X,Y,Z], rgbcolor = OctColor[0])
                    Graff += polygon([X,nY,Z], rgbcolor = OctColor[2])
                    Graff += polygon([nX,nY,Z], rgbcolor = OctColor[3])
                    Graff += polygon([nX,Y,Z], rgbcolor = OctColor[1])
                elif th < 1.9478:    
                    Graff += polygon([nX,nY,nZ], rgbcolor = OctColor[7])
                    Graff += polygon([X,nY,Z], rgbcolor = OctColor[2])
                    Graff += polygon([nX,nY,Z], rgbcolor = OctColor[3])
                    Graff += polygon([nX,Y,Z], rgbcolor = OctColor[1])
                else: 
                    Graff += polygon([nX,nY,nZ], rgbcolor = OctColor[7])
                    Graff += polygon([X,nY,Z], rgbcolor = OctColor[2])
                    Graff += polygon([nX,nY,Z], rgbcolor = OctColor[3])
                    Graff += polygon([X,nY,nZ], rgbcolor = OctColor[6])   
                v.append(Graff)    
            Temp = OctColor[0]
            OctColor[0] = OctColor[7]
            OctColor[7] = Temp
            Temp = OctColor[3]
            OctColor[3] = OctColor[4]
            OctColor[4] = Temp
            Temp = OctColor[1]
            OctColor[1] = OctColor[5]
            OctColor[5] = Temp
            Temp = OctColor[2]
            OctColor[2] = OctColor[6]
            OctColor[6] = Temp      
        elif(arg == b):
            for i in range(11):
                th = 2*pi*i/3/10.0  # theta ranges from 0 to 2pi/3, inclusive 
                X = OctProj(N(1/3 + 2*cos(th)/3), N(1/3 - cos(th)/3 + sin(th)/sqrt(3)), N(1/3 - cos(th)/3 - sin(th)/sqrt(3)))
                nX = OctProj(N(-1/3 - 2*cos(th)/3), N(-1/3 + cos(th)/3 - sin(th)/sqrt(3)), N(-1/3 + cos(th)/3 + sin(th)/sqrt(3)))
                Y = OctProj(N(1/3 - cos(th)/3 - sin(th)/sqrt(3)), N(1/3 + 2*cos(th)/3), N(1/3 - cos(th)/3 + sin(th)/sqrt(3))) 
                nY = OctProj(N(-1/3 + cos(th)/3 + sin(th)/sqrt(3)), N(-1/3 - 2*cos(th)/3), N(-1/3 + cos(th)/3 - sin(th)/sqrt(3)))    
                Z = OctProj(N(1/3 - cos(th)/3 + sin(th)/sqrt(3)), N(1/3 - cos(th)/3 - sin(th)/sqrt(3)), N(1/3 + 2*cos(th)/3)) 
                nZ = OctProj(N(-1/3 + cos(th)/3 - sin(th)/sqrt(3)), N(-1/3 + cos(th)/3 + sin(th)/sqrt(3)), N(-1/3 - 2*cos(th)/3)) 
                Graff = Graphics()
                if th < .68:
                    Graff += polygon([X,Y,Z], rgbcolor = OctColor[0])
                    Graff += polygon([X,nY,Z], rgbcolor = OctColor[2])
                    Graff += polygon([X,Y,nZ], rgbcolor = OctColor[4])
                    Graff += polygon([X,nY,nZ], rgbcolor = OctColor[6])
                elif th < 1.09:
                    Graff += polygon([X,Y,Z], rgbcolor = OctColor[0])
                    Graff += polygon([X,nY,Z], rgbcolor = OctColor[2])
                    Graff += polygon([X,Y,nZ], rgbcolor = OctColor[4])
                    Graff += polygon([nX,Y,Z], rgbcolor = OctColor[1])  
                else:
                    Graff += polygon([X,Y,Z], rgbcolor = OctColor[0])
                    Graff += polygon([X,nY,Z], rgbcolor = OctColor[2])
                    Graff += polygon([nX,nY,Z], rgbcolor = OctColor[3])
                    Graff += polygon([nX,Y,Z], rgbcolor = OctColor[1])    
                v.append(Graff)
            Temp = OctColor[1]
            OctColor[1] = OctColor[4]
            OctColor[4] = OctColor[2]
            OctColor[2] = Temp
            Temp = OctColor[3]
            OctColor[3] = OctColor[5]
            OctColor[5] = OctColor[6]
            OctColor[6] = Temp
        elif(arg == c):
            for i in range(11):
                th = pi*i/2/10.0  # theta ranges from 0 to pi/2, inclusive
                X = OctProj(1.0,0.0,0.0)
                nX = OctProj(-1.0,0.0,0.0)
                Y = OctProj(0.0, N(cos(th)), N(-sin(th)))
                nY = OctProj(0.0, N(-cos(th)), N(sin(th)))
                Z = OctProj(0.0, N(sin(th)), N(cos(th)))
                nZ = OctProj(0.0, N(-sin(th)), N(-cos(th)))
                Graff = Graphics()
                Graff += polygon([X,Y,Z], rgbcolor = OctColor[0])
                Graff += polygon([X,nY,Z], rgbcolor = OctColor[2])
                Graff += polygon([X,Y,nZ], rgbcolor = OctColor[4])
                Graff += polygon([X,nY,nZ], rgbcolor = OctColor[6])
                v.append(Graff)
            Temp = OctColor[0]
            OctColor[0] = OctColor[2]
            OctColor[2] = OctColor[6]
            OctColor[6] = OctColor[4]
            OctColor[4] = Temp
            Temp = OctColor[1]
            OctColor[1] = OctColor[3]
            OctColor[3] = OctColor[7]
            OctColor[7] = OctColor[5]
            OctColor[5] = Temp
        else:
            print("Invalid rotation")
    aniOct = animate(v, xmin = -1, xmax = 1, ymin = -1.03, ymax = 1.03, aspect_ratio = 1, axes = false)
    try:
        return aniOct.show(delay = 50, iterations = 1, gif = True)
    except:
        return aniOct.show(delay = 50, iterations = 1)
    
PuzColor = [(1,0,0), (1,0,0), (1,0,0), (1,0,0), (1,0,0), (1,0,0), (1,1,0), (1,1,0), (1,1,0), (1,1,0), (1,1,0), (1,1,0), (0,1,0), (0,1,0), (0,1,0), (0,1,0), (0,1,0), (0,1,0), (0,0,1), (0,0,1), (0,0,1), (0,0,1), (0,0,1), (0,0,1)]    
    
def PuzProj(x,y,z):  # projects a 3D point into 2D, using the projection angle that was used in TeX
    return (-0.45*x + 0.55*y+0.05*z, -0.3125*x -0.3125*y + .5625*z)    
    
def ShowPuzzle():
    global PuzColor
    Graff = Graphics()
    if PuzColor[0] != 0:
        Graff += polygon([PuzProj(-1,-1,-1),PuzProj(-3,1,-1),PuzProj(-3,-1,1)], rgbcolor = PuzColor[18])
        Graff += polygon([PuzProj(-1,-1,-1),PuzProj(-3,-1,1),PuzProj(-1,-3,1)], rgbcolor = PuzColor[19])
        Graff += polygon([PuzProj(-1,-1,-1),PuzProj(-1,-3,1),PuzProj(1,-3,-1)], rgbcolor = PuzColor[20])
        Graff += polygon([PuzProj(-1,-1,-1),PuzProj(1,-3,-1),PuzProj(1,-1,-3)], rgbcolor = PuzColor[21])
        Graff += polygon([PuzProj(-1,-1,-1),PuzProj(1,-1,-3),PuzProj(-1,1,-3)], rgbcolor = PuzColor[22])
        Graff += polygon([PuzProj(-1,-1,-1),PuzProj(-1,1,-3),PuzProj(-3,1,-1)], rgbcolor = PuzColor[23])
        Graff += polygon([PuzProj(-1,1,1),PuzProj(1,3,1),PuzProj(1,1,3)], rgbcolor = PuzColor[0])
        Graff += polygon([PuzProj(-1,1,1),PuzProj(1,1,3),PuzProj(-1,-1,3)], rgbcolor = PuzColor[1])
        Graff += polygon([PuzProj(-1,1,1),PuzProj(-1,-1,3),PuzProj(-3,-1,1)], rgbcolor = PuzColor[2])
        Graff += polygon([PuzProj(-1,1,1),PuzProj(-3,-1,1),PuzProj(-3,1,-1)], rgbcolor = PuzColor[3])
        Graff += polygon([PuzProj(-1,1,1),PuzProj(-3,1,-1),PuzProj(-1,3,-1)], rgbcolor = PuzColor[4])
        Graff += polygon([PuzProj(-1,1,1),PuzProj(-1,3,-1),PuzProj(1,3,1)], rgbcolor = PuzColor[5])
        Graff += polygon([PuzProj(1,-1,1),PuzProj(1,1,3),PuzProj(3,1,1)], rgbcolor = PuzColor[6])
        Graff += polygon([PuzProj(1,-1,1),PuzProj(3,1,1),PuzProj(3,-1,-1)], rgbcolor = PuzColor[7])
        Graff += polygon([PuzProj(1,-1,1),PuzProj(3,-1,-1),PuzProj(1,-3,-1)], rgbcolor = PuzColor[8])
        Graff += polygon([PuzProj(1,-1,1),PuzProj(1,-3,-1),PuzProj(-1,-3,1)], rgbcolor = PuzColor[9])
        Graff += polygon([PuzProj(1,-1,1),PuzProj(-1,-3,1),PuzProj(-1,-1,3)], rgbcolor = PuzColor[10])
        Graff += polygon([PuzProj(1,-1,1),PuzProj(-1,-1,3),PuzProj(1,1,3)], rgbcolor = PuzColor[11])
        Graff += polygon([PuzProj(1,1,-1),PuzProj(3,1,1),PuzProj(1,3,1)], rgbcolor = PuzColor[12])
        Graff += polygon([PuzProj(1,1,-1),PuzProj(1,3,1),PuzProj(-1,3,-1)], rgbcolor = PuzColor[13])
        Graff += polygon([PuzProj(1,1,-1),PuzProj(-1,3,-1),PuzProj(-1,1,-3)], rgbcolor = PuzColor[14])
        Graff += polygon([PuzProj(1,1,-1),PuzProj(-1,1,-3),PuzProj(1,-1,-3)], rgbcolor = PuzColor[15])
        Graff += polygon([PuzProj(1,1,-1),PuzProj(1,-1,-3),PuzProj(3,-1,-1)], rgbcolor = PuzColor[16])
        Graff += polygon([PuzProj(1,1,-1),PuzProj(3,-1,-1),PuzProj(3,1,1)], rgbcolor = PuzColor[17])
        Graff += line([(-0.3214, 0.0625),(0.8214, 0.0625)], rgbcolor = (0,0,0))
        Graff += line([(-0.57857, -0.6875),(0.33571, 0.9125)], rgbcolor = (0,0,0))
        Graff += line([(0.27857, -0.6875),(-0.23571, 0.2125)], rgbcolor = (0,0,0))
        Graff += line([PuzProj(3,1,1), PuzProj(1,3,1), PuzProj(1,1,3), PuzProj(3,1,1), PuzProj(3,-1,-1), PuzProj(-1,-1,3), PuzProj(-1,3,-1), PuzProj(3,-1,-1), PuzProj(1,-3,-1), PuzProj(1,1,3), PuzProj(-3,1,-1), PuzProj(-3,-1,1), PuzProj(1,3,1), PuzProj(1,-1,-3), PuzProj(-1,1,-3), PuzProj(3,1,1), PuzProj(-1,-3,1), PuzProj(-1,-1,3), PuzProj(1,1,3)], rgbcolor = (0,0,0))
        Graff += line([PuzProj(1,-3,-1),PuzProj(-1,-3,1)], rgbcolor = (0,0,0))
        Graff += line([PuzProj(3,-1,-1),PuzProj(1,-1,-3)], rgbcolor = (0,0,0))
        Graff += line([PuzProj(-1,-1,3),PuzProj(-3,-1,1)], rgbcolor = (0,0,0))
        Graff += line([PuzProj(-1,3,-1),PuzProj(1,3,1)], rgbcolor = (0,0,0))
        Graff += line([PuzProj(-1,3,-1),PuzProj(-3,1,-1)], rgbcolor = (0,0,0))
        Graff += line([PuzProj(-1,3,-1),PuzProj(-1,1,-3)], rgbcolor = (0,0,0))        
    else:    
        Graff += polygon([PuzProj(-1,-1,-1),PuzProj(-3,1,-1),PuzProj(-3,-1,1)], rgbcolor = PuzColor[18])
        Graff += polygon([PuzProj(-1,-1,-1),PuzProj(-1,-3,1),PuzProj(1,-3,-1)], rgbcolor = PuzColor[20])
        Graff += polygon([PuzProj(-1,-1,-1),PuzProj(1,-1,-3),PuzProj(-1,1,-3)], rgbcolor = PuzColor[22])
        Graff += polygon([PuzProj(-1,1,1),PuzProj(1,1,3),PuzProj(-1,-1,3)], rgbcolor = PuzColor[1])
        Graff += polygon([PuzProj(-1,1,1),PuzProj(-3,-1,1),PuzProj(-3,1,-1)], rgbcolor = PuzColor[3])
        Graff += polygon([PuzProj(-1,1,1),PuzProj(-1,3,-1),PuzProj(1,3,1)], rgbcolor = PuzColor[5])
        Graff += polygon([PuzProj(1,-1,1),PuzProj(3,1,1),PuzProj(3,-1,-1)], rgbcolor = PuzColor[7])
        Graff += polygon([PuzProj(1,-1,1),PuzProj(1,-3,-1),PuzProj(-1,-3,1)], rgbcolor = PuzColor[9])
        Graff += polygon([PuzProj(1,-1,1),PuzProj(-1,-1,3),PuzProj(1,1,3)], rgbcolor = PuzColor[11])
        Graff += polygon([PuzProj(1,1,-1),PuzProj(1,3,1),PuzProj(-1,3,-1)], rgbcolor = PuzColor[13])
        Graff += polygon([PuzProj(1,1,-1),PuzProj(-1,1,-3),PuzProj(1,-1,-3)], rgbcolor = PuzColor[15])
        Graff += polygon([PuzProj(1,1,-1),PuzProj(3,-1,-1),PuzProj(3,1,1)], rgbcolor = PuzColor[17])
        Graff += line([PuzProj(3,1,1), PuzProj(-1,-3,1), PuzProj(1,-3,-1), PuzProj(1,1,3), PuzProj(-1,-1,3), PuzProj(3,-1,-1), PuzProj(3,1,1), PuzProj(-1,1,-3), PuzProj(1,-1,-3), PuzProj(1,3,1), PuzProj(-1,3,-1), PuzProj(3,-1,-1)], rgbcolor = (0,0,0)) 
        Graff += line([PuzProj(1,3,1), PuzProj(-3,-1,1), PuzProj(-3,1,-1), PuzProj(1,1,3)], rgbcolor = (0,0,0)) 
        Graff += line([PuzProj(-1,-1,3), PuzProj(-1,3,-1)], rgbcolor = (0,0,0)) 
        Graff += line([(-2.15, 0.0625), (-1.2457,  0.0625)], rgbcolor = (0,0,0)) 
        Graff += line([(1.85, 0.0625), (1.3357,  0.0625)], rgbcolor = (0,0,0))   
        Graff += line([(0.85, -1.6875), (0.5643, -1.1875)], rgbcolor = (0,0,0))  
        Graff += line([(-1.15, -1.6875), (-0.8543, -1.1875)], rgbcolor = (0,0,0))   
        Graff += line([(-1.15, 1.8125), (-0.6929, 1.0125)], rgbcolor = (0,0,0)) 
        Graff += line([(0.85, 1.8125), (0.5929, 1.3625)], rgbcolor = (0,0,0))   
        Graff += line([(-0.6237, -0.7664), (0.3763, 0.9836)], rgbcolor = (0,0,0))  
        Graff += line([(-0.87, 0.0625), (1.13,  0.0625)], rgbcolor = (0,0,0))   
        Graff += line([(0.4654, -1.0144), (-0.5346,  0.7356)], rgbcolor = (0,0,0))   
    return Graff.show(axes = false, aspect_ratio = 1)
    
def InitPuzzle():
    global PuzColor
    global f
    global b
    global r
    global l   
    f = var('f')
    b = var('b')
    r = var('r')
    l = var('l')
    PuzColor = [(1,0,0), (1,0,0), (1,0,0), (1,0,0), (1,0,0), (1,0,0), (1,1,0), (1,1,0), (1,1,0), (1,1,0), (1,1,0), (1,1,0), (0,1,0), (0,1,0), (0,1,0), (0,1,0), (0,1,0), (0,1,0), (0,0,1), (0,0,1), (0,0,1), (0,0,1), (0,0,1), (0,0,1)]    
    return ShowPuzzle()   
    
def RotatePuzzle(*args):
    global PuzColor   
    for arg in args:
        if arg == f:
            Temp = PuzColor[0]
            PuzColor[0] = PuzColor[6]
            PuzColor[6] = PuzColor[12]
            PuzColor[12] = Temp
            Temp = PuzColor[1]
            PuzColor[1] = PuzColor[7]
            PuzColor[7] = PuzColor[13]
            PuzColor[13] = Temp
            Temp = PuzColor[5]
            PuzColor[5] = PuzColor[11]
            PuzColor[11] = PuzColor[17]
            PuzColor[17] = Temp
        elif arg == b:    
            Temp = PuzColor[1]
            PuzColor[1] = PuzColor[18]
            PuzColor[18] = PuzColor[9]
            PuzColor[9] = Temp
            Temp = PuzColor[2]
            PuzColor[2] = PuzColor[19]
            PuzColor[19] = PuzColor[10]
            PuzColor[10] = Temp
            Temp = PuzColor[3]
            PuzColor[3] = PuzColor[20]
            PuzColor[20] = PuzColor[11]
            PuzColor[11] = Temp            
        elif arg == r:    
            Temp = PuzColor[3]
            PuzColor[3] = PuzColor[13]
            PuzColor[13] = PuzColor[22]
            PuzColor[22] = Temp
            Temp = PuzColor[4]
            PuzColor[4] = PuzColor[14]
            PuzColor[14] = PuzColor[23]
            PuzColor[23] = Temp
            Temp = PuzColor[5]
            PuzColor[5] = PuzColor[15]
            PuzColor[15] = PuzColor[18]
            PuzColor[18] = Temp              
        elif arg == l:    
            Temp = PuzColor[7]
            PuzColor[7] = PuzColor[20]
            PuzColor[20] = PuzColor[15]
            PuzColor[15] = Temp
            Temp = PuzColor[8]
            PuzColor[8] = PuzColor[21]
            PuzColor[21] = PuzColor[16]
            PuzColor[16] = Temp
            Temp = PuzColor[9]
            PuzColor[9] = PuzColor[22]
            PuzColor[22] = PuzColor[17]
            PuzColor[17] = Temp 
        else:
            print("Invalid rotation")
        ShowPuzzle()
    return None    

def PuzzlePosition1():
    global PuzColor
    PuzColor = [(1,1,0), (1,0,0), (1,0,0), (1,0,0), (1,0,0), (1,0,0), (0,1,0), (1,1,0), (1,1,0), (1,1,0), (1,1,0), (1,1,0), (1,0,0), (0,1,0), (0,1,0), (0,1,0), (0,1,0), (0,1,0), (0,0,1), (0,0,1), (0,0,1), (0,0,1), (0,0,1), (0,0,1)]
    return ShowPuzzle()        
    
def PuzzlePosition2():
    global PuzColor
    PuzColor = [(1,0,0), (1,1,0), (1,0,0), (0,0,1), (1,0,0), (0,1,0), (1,1,0), (0,1,0), (1,1,0), (0,0,1), (1,1,0), (1,0,0), (0,1,0), (1,0,0), (0,1,0), (0,0,1), (0,1,0), (1,1,0), (1,0,0), (0,0,1), (1,1,0), (0,0,1), (0,1,0), (0,0,1)]
    return ShowPuzzle()     
    
def HideCorners():
    global PuzColor
    for i in [0,2,4,6,8,10,12,14,16,19,21,23]:
        PuzColor[i] = 0
    return ShowPuzzle()   

    
def ShowRationals(a,b):
    import fractions
    A = N(a)
    B = N(b)
    if A == B:
        print("Endpoints must be different")
        return None   
    if A > B:
        q = A
        A = B
        B = q
    QuoList = []
    r = 1
    q = 1
    while r < 18:
        PrintPoint = False
        for p in range(ceil(A*q), floor(B*q +1)):
            if math.gcd(p, q) == 1:
                QuoList.append((N(p)/N(q), 0.75^(r-1)))
                PrintPoint = True
        if PrintPoint:
            r = r+1  
        q = q+1
    P = list_plot(QuoList, aspect_ratio = (B-A)/2, frame = True, axes = False)        
#    G = Graphics()
#    G += point(QuoList)
#    G.show(aspect_ratio = (B-A)/2, frame = True, axes = False) 
#    return G
    return P

def CountableQ(n):
    import fractions
    global QuoList
    global G
    G = Graphics()
    NN = abs(floor(n))
    if NN == 0:
        NN = 1
    QuoList = []    
    LineList = []
    for q in range(1,17):
        for p in range(-NN*q, NN*q +1):
            if math.gcd(p, q) == 1:
                QuoList.append((N(p)/N(q), 0.75^(q-1)))
    G += point(QuoList)            
    for q in range(-floor(NN/2),(NN+1)/2):
        G += line([(2*q,1),(2*q+1,1)])
    for q in range(1, NN+1):
        G += line([(q-.5,.75),(q,1)])    
        G += line([(-q+.5,.75),(-q,1)])    
        G += line([(-N(1)/(q+1),(.75)^q),(N(1)/(q+1),(.75)^q)])
    for p in range(1,NN):
        for q in range(2, NN-p+2):
            G += line([(p+N(1)/(q+1)-1,(.75)^q),  (p-N(1)/(q+1),(.75)^q),  (p+N(1)/q,(.75)^(q-1))])    
            G += line([(1-p-N(1)/(q+1),(.75)^q),  (N(1)/(q+1)-p,(.75)^q),  (-p-N(1)/q,(.75)^(q-1))])
    return G.show(aspect_ratio = NN, frame = True, axes = False)           
        
def PolarPlot():
    Graff = Graphics()
    Graff.set_aspect_ratio(1.0)
    Graff += line([(0,0), (3,4)], rgbcolor=(0,0,0))
    Graff += arc((0,0), 1, sector = (0, 0.92729), rgbcolor=(0,0,0))
    Graff += text("0", (0.7, 0.4), rgbcolor=(0,0,0), fontsize = 18)
    Graff += text("-", (0.7, 0.4), rgbcolor=(0,0,0), fontsize = 18) # How to make a theta
    Graff += text("r", (1.5, 2.5), rgbcolor=(0,0,0), fontsize = 18)
    Graff += text("(x,y) = x + y i", (3.2, 4), rgbcolor=(0,0,0), horizontal_alignment = "left", fontsize = 18) 
    return Graff.show() 

def DrawGalois(n):
    Graff = Graphics()
    Graff += line([(.47, .95), (0.05, .55)], rgbcolor=(0,0,0))
    Graff += line([(.49, .95), (0.35, .55)], rgbcolor=(0,0,0))
    Graff += line([(.51, .95), (0.65, .55)], rgbcolor=(0,0,0))
    Graff += line([(.53, .95), (0.95, .55)], rgbcolor=(0,1,0)) 
    Graff += line([(.47, .05), (0.05, .45)], rgbcolor=(0,1,0))
    Graff += line([(.49, .05), (0.35, .45)], rgbcolor=(0,1,0))
    Graff += line([(.51, .05), (0.65, .45)], rgbcolor=(0,1,0))
    Graff += line([(.53, .05), (0.95, .45)], rgbcolor=(0,1,0))
    Graff += line([(.50, .05), (0.50, .95)], rgbcolor=(0,1,0))
    Graff += text("Z", (0.76, 0.77), rgbcolor=(0,0,1), fontsize = 12)
    Graff += text("2", (0.78, 0.76), rgbcolor=(0,0,1), fontsize = 9)
    Graff += text("S", (0.52, 0.77), rgbcolor=(0,0,1), fontsize = 12)
    Graff += text("3", (0.54, 0.76), rgbcolor=(0,0,1), fontsize = 9)
    Graff += text("Z", (0.22, 0.23), rgbcolor=(0,0,1), fontsize = 12)
    Graff += text("2", (0.24, 0.22), rgbcolor=(0,0,1), fontsize = 9)
    Graff += text("Z", (0.39, 0.23), rgbcolor=(0,0,1), fontsize = 12)
    Graff += text("2", (0.41, 0.22), rgbcolor=(0,0,1), fontsize = 9)
    Graff += text("Z", (0.59, 0.23), rgbcolor=(0,0,1), fontsize = 12)
    Graff += text("2", (0.61, 0.22), rgbcolor=(0,0,1), fontsize = 9)
    Graff += text("Z", (0.76, 0.23), rgbcolor=(0,0,1), fontsize = 12)
    Graff += text("3", (0.78, 0.22), rgbcolor=(0,0,1), fontsize = 9)
    if n == 1:
        Graff += text("Q", (0.494, 1.0), rgbcolor=(0,0,0), fontsize = 12, horizontal_alignment = "left")
        Graff += text("I", (0.501, 1.0), rgbcolor=(0,0,0), fontsize = 10, horizontal_alignment = "left")
        Graff += text("Q(2    )", (-0.04, 0.5), rgbcolor=(0,0,0), fontsize = 12, horizontal_alignment = "left")
        Graff += text("I", (-0.033, 0.5), rgbcolor=(0,0,0), fontsize = 10, horizontal_alignment = "left")
        Graff += text("1/3", (0.02, 0.51), rgbcolor=(0,0,0), fontsize = 9, horizontal_alignment = "left")
        Graff += text("Q(w  2   )", (0.30, 0.5), rgbcolor=(0,0,0), fontsize = 12, horizontal_alignment = "left")
        Graff += text("I", (0.307, 0.5), rgbcolor=(0,0,0), fontsize = 10, horizontal_alignment = "left")
        Graff += text("1/3", (0.41, 0.51), rgbcolor=(0,0,0), fontsize = 9, horizontal_alignment = "left")
        Graff += text("3", (0.365, 0.48), rgbcolor=(0,0,0), fontsize = 9, horizontal_alignment = "left")
        Graff += text("Q(w  2   )", (0.60, 0.5), rgbcolor=(0,0,0), fontsize = 12, horizontal_alignment = "left")
        Graff += text("I", (0.607, 0.5), rgbcolor=(0,0,0), fontsize = 10, horizontal_alignment = "left")
        Graff += text("2  1/3", (0.675, 0.51), rgbcolor=(0,0,0), fontsize = 9, horizontal_alignment = "left")
        Graff += text("3", (0.665, 0.48), rgbcolor=(0,0,0), fontsize = 9, horizontal_alignment = "left")
        Graff += text("Q((-3)    )", (1.0, 0.5), rgbcolor=(0,0,0), fontsize = 12, horizontal_alignment = "left")
        Graff += text("1/2", (1.11, 0.51), rgbcolor=(0,0,0), fontsize = 9, horizontal_alignment = "left")
        Graff += text("I", (1.007, 0.5), rgbcolor=(0,0,0), fontsize = 10, horizontal_alignment = "left")
        Graff += text("Q(2    , w  2   )", (0.4, 0.0), rgbcolor=(0,0,0), fontsize = 12, horizontal_alignment = "left")
        Graff += text("I", (0.407, 0.0), rgbcolor=(0,0,0), fontsize = 10, horizontal_alignment = "left")
        Graff += text("1/3           1/3", (0.46, 0.01), rgbcolor=(0,0,0), fontsize = 9, horizontal_alignment = "left")
        Graff += text("3", (0.555, -0.02), rgbcolor=(0,0,0), fontsize = 9, horizontal_alignment = "left")
    if n == 2:
        Graff += text("S", (0.49, 1.0), rgbcolor=(0,0,0), fontsize = 12)
        Graff += text("3", (0.505, 0.98), rgbcolor=(0,0,0), fontsize = 9)
        Graff += text("{(), (1 2)}", (0.0, 0.5), rgbcolor=(0,0,0), fontsize = 12, horizontal_alignment = "right")
        Graff += text("{(), (1 3)}", (0.35, 0.5), rgbcolor=(0,0,0), fontsize = 12)
        Graff += text("{(), (2 3)}", (0.65, 0.5), rgbcolor=(0,0,0), fontsize = 12)
        Graff += text("A", (1.0, 0.5), rgbcolor=(0,0,0), fontsize = 12)
        Graff += text("3", (1.015, 0.48), rgbcolor=(0,0,0), fontsize = 9)
        Graff += text("{()}", (0.5, 0.0), rgbcolor=(0,0,0), fontsize = 12)    
    return Graff.show(axes = False)
        
######################################################
##                                                  ##
## Utility routines - each of these does something  ##
## simple in a Python way                           ##
##                                                  ##
######################################################

def Flatten(Set):  # Fast way to flatten a list by 1 level
    if isinstance(Set, list):
        if len(Set) > 0:
            if isinstance(Set[0], (list, GroupSet)):
                return [item for sublist in Set for item in sublist]  
    return Set

def Uniquify(Set):  # Eliminate duplicates in a list while preserving order
    if isinstance(Set, list):
        out = []
        [out.append(item) for item in Set if item not in out]
    return out
    
def IsSubset(shortlist, longlist): # determines if shortlist is a subset of longlist
    for item in shortlist:
        if not(item in longlist):
            return false
    return true        
   
def Intersection(arg1, *args):
    if len(args) == 0:        #If there is only one argument, see if it is a list of lists.
        T = list(arg1)
        if isinstance(T[0], list):
            S = Uniquify(T[0])
            for i in range(1,len(T)):
                S = [item for item in S if item in T[i] ]
            return sorted(S)
    if isinstance(arg1, GroupSet):
        S = Uniquify(arg1._List)
    else:        
        S = Uniquify(arg1)
    for arg in args:
        if isinstance(arg, GroupSet):
            S = [item for item in S if item in arg._List ]
        else:   
            S = [item for item in S if item in arg ]
    if isinstance(arg1, GroupSet):    
        return GroupSet(sorted(S))
    return sorted(S) 
    
def ConvertIdentity(str):  # Converts <Identity ...> in a string to the name of the identity
    ss = str
    ss = ss.replace("spin","Spin")
    ii = ss.find("<")         # if we find a <, we can assume that everything up to > will be converted to
    if ii > -1:               # the identity element.
        jj = ss.find(">",ii)
        if jj > -1:                        # here is a twist.  When the identity element is displayed in a pc
            if(len(ss)>jj+7):              # group, it is "<identity> of ..."  (of... is not in the brackets!)
                if(ss[jj+1:jj+8] == " of ..."):
                    jj = jj + 7
            ss = ss[:ii] + IdentityElement + ss[jj+1:]  
    return ss  
    
#################################################################
##                                                             ##
##  Many of the group elements are defined as instances of a   ##
##  class.  Here we see the classes that define the different  ##
##  types of groups and rings.                                 ##
##                                                             ##
#################################################################
    
class SumModN:   ## The group Zn
    def __init__(self, x, mod):
        self._x = x
        self._mod = mod    
    def __eq__(self, other):
        if isinstance(other, SumModN):
            return (self._x == other._x) and (self._mod == other._mod)
        else:
            return NotImplemented            
    def __ne__(self, other):
        result = self.__eq__(other)
        if result is NotImplemented:
            return result
        return not result          
    def __mul__(self, other): # the * symbol means addition modulo n
        if isinstance(other, SumModN):
            if self._mod == other._mod:
                return SumModN((self._x + other._x) % self._mod, self._mod ) 
        return NotImplemented
    # We also allow addition by an integer, to allow for the CircleGraph with Add(n)    
    def __add__(self, other):
        if isinstance(other, (int, IntType)):
            return SumModN((self._x + other) % self._mod, self._mod )
        return NotImplemented   
    def __radd__(self, other):
        if isinstance(other, (int, IntType)):
            return SumModN((self._x + other) % self._mod, self._mod )
        return NotImplemented    
    def __pow__(self, exp):
        if isinstance(exp, (int, IntType)):
            return SumModN((self._x * exp) % self._mod, self._mod )
        return NotImplemented   
    # We want subgroups to appear in order, such as [0,2,4,6,8] 
#    def __cmp__(self, other):
#        if isinstance(other, SumModN):
#            if self._mod == other._mod:
#                return cmp(self._x, other._x)                      
#        else:
#            return NotImplemented      
    def __lt__(self, other):
        if isinstance(other, SumModN):
            if self._mod == other._mod:
                return (self._x < other._x)                      
        else:
            return NotImplemented 
    def __gt__(self, other):
        if isinstance(other, SumModN):
            if self._mod == other._mod:
                return (self._x > other._x)                      
        else:
            return NotImplemented 
    def __le__(self, other):
        if isinstance(other, SumModN):
            if self._mod == other._mod:
                return (self._x <= other._x)                      
        else:
            return NotImplemented 
    def __ge__(self, other):
        if isinstance(other, SumModN):
            if self._mod == other._mod:
                return (self._x <= other._x)                      
        else:
            return NotImplemented 
    def __str__(self):
        return str(self._x)    
    def __repr__(self):
        return str(self._x)   

class StringElement:
    def __init__(self, x):
        if isinstance(x, str):
            self._x = x
        else:
            return NotImplemented
    def Reduce(self):
        # Use the defined commands to reduce the string
        x = self._x
        repeat = True
        while repeat:
            repeat = False
            for i in range(len(RelationsList1)):
                if x.rfind(RelationsList1[i]) > -1:
                    repeat = True
                    x = x.replace(RelationsList1[i],RelationsList2[i])
                    # Prioritize the earlier substitutions
                    break
        self._x = x
        return self
    def __eq__(self, other):
        if isinstance(other, StringElement):
            # Reduce both strings before comparing
            self.Reduce()
            other.Reduce()
            return(self._x == other._x)
        return NotImplemented
    def __ne__(self, other):
        result = self.__eq__(other)
        if result is NotImplemented:
            return result
        return not result
    # To compare two strings, we sort the reverse of the strings to agree with the old ListGroup
    def __lt__(self, other):
        if isinstance(other, StringElement):
            return (self._x[::-1] < other._x[::-1]) 
        return NotImplemented
    def __gt__(self, other):
        if isinstance(other, StringElement):
            return (self._x[::-1] > other._x[::-1]) 
        return NotImplemented
    def __le__(self, other):
        if isinstance(other, StringElement):
            return (self._x[::-1] <= other._x[::-1]) 
        return NotImplemented
    def __ge__(self, other):
        if isinstance(other, StringElement):
            return (self._x[::-1] >= other._x[::-1]) 
        return NotImplemented    
    def __invert__(self):
        # This trick reverses the string
        y = self._x[::-1]
        # Then we swap upper and lower case
        y = y.swapcase()
        return StringElement(y).Reduce()
    def __mul__(self,other):
        if isinstance(other, StringElement):
            y = self._x + other._x
            return StringElement(y).Reduce()
        # TODO: multiply by a GroupSet
        return NotImplemented
    def __pow__(self, exp):
        if isinstance(exp, (int, IntType)):
            if exp < 0:
                y = self.__invert__()
                s = y._x * (-exp)
                return StringElement(s).Reduce()
            y = self._x * exp
            return StringElement(y).Reduce()
        return NotImplemented
    def __str__(self):
        x = self._x
        if x == "":
            return IdentityElement
        char = x[0]
        count = 1
        y = GeneratorList[ord(char.upper())-65]
        for i in range(1,len(x)):
            if x[i-1] == x[i]:
                count = count + 1
            else:
                #Finish the current power
                #Lower case goes to inverse powers
                if ord(char) > 96:
                    count = -count
                if count != 1:
                    y = y + '^' + str(count)
                char = x[i]
                count = 1
                y = y + '*' + GeneratorList[ord(char.upper())-65]
        # Finish the power of the final variable
        if ord(char) > 96:
            count = -count
        if count != 1:
            y = y + '^' + str(count)
        return y
    def __repr__(self):
        return str(self)
        
        
class RingElement:
    def __init__(self, x):
        if isinstance(x, list):
            self._x = array(x)
        else:
            return NotImplemented
    def Reduce(self):
        # Use the ModuloList for each component
        for i in range(len(self._x)):
            if ModuloList[i] != 0:
                self._x[i] = self._x[i] % ModuloList[i]
        return self
    def __eq__(self, other):
        if isinstance(other, RingElement):
            # Reduce both strings before comparing
            self.Reduce()
            other.Reduce()
            return(list(self._x) == list(other._x))
        return NotImplemented
    def __ne__(self, other):
        result = self.__eq__(other)
        if result is NotImplemented:
            return result
        return not result
    def __lt__(self, other):
        if isinstance(other, RingElement):
            return (list(self._x) < list(other._x)) 
        return NotImplemented
    def __gt__(self, other):
        if isinstance(other, RingElement):
            return (list(self._x) > list(other._x)) 
        return NotImplemented
    def __le__(self, other):
        if isinstance(other, RingElement):
            return (list(self._x) <= list(other._x)) 
        return NotImplemented
    def __ge__(self, other):
        if isinstance(other, RingElement):
            return (list(self._x) >= list(other._x)) 
        return NotImplemented 
    def __add__(self,other):
        if isinstance(other, RingElement):
            y = self._x + other._x
            return RingElement(list(y)).Reduce()
        return NotImplemented
    def __sub__(self,other):
        if isinstance(other, RingElement):
            y = self._x - other._x
            return RingElement(list(y)).Reduce()
        return NotImplemented
    def __neg__(self):
        y = - self._x
        return RingElement(list(y)).Reduce()
    def __mul__(self,other):
        if isinstance(other, RingElement):
            #We use the distributive law, using the RingDefArray for a product of generators.
            #Note that we use lazy evalution, so that a pure product of generators can produce a StringElement.
            total = 0
            zerototal = True
            for i in range(len(self._x)):
                for j in range(len(other._x)):
                    k = self._x[i]*other._x[j]
                    if k != 0:
                        try:
                            term = RingDefArray[i][j]
                            if k != 1:
                                term = k*term
                            if zerototal:
                                total = term
                                zerototal = False
                            else:
                                total = total + term
                        except TypeError:
                            print(term, "must first be defined.")
                            return None
            if zerototal:
                # answer will be the zero vector
                return RingElement([0 for i in self._x])
            if isinstance(total, StringElement):
                # simple product of generators whose product is yet to be defined
                return total
            else:
                return RingElement(list(total)).Reduce()
        if isinstance(other, (IntType, int)):
            L = other*self._x
            return RingElement(list(L)).Reduce()
        return NotImplemented 
    def __rmul__(self,other):
        if isinstance(other, (IntType, int)):
            L = other*self._x
            return RingElement(list(L)).Reduce()
        return NotImplemented
    def __pow__(self,other):
        if isinstance(other, (IntType, int)):
            # only defined if other is a positive integer, since there is no identity.
            if other < 1:
                return NotImplemented
            # base case
            if other == 1:
                return self
            # inductively defined
            T = pow(self,other-1)
            if T == None:
                #Because of the recursion, an error could occur on the previous step.
                #The error would already have been printed, and T would be None.
                return None
            if isinstance(T, StringElement):
                print(T, "must first be defined")
                return None
            return T * self
    def __str__(self):
        x = list(self._x)
        y = ""
        for i in range(len(x)):
            if x[i] != 0:
                if y == "":
                    if x[i] == -1:
                        y = "-"
                    if abs(x[i]) != 1:
                        y = str(x[i]) + " "
                    y = y + GeneratorList[i]
                else:
                    if x[i] > 0:
                        y = y + " + "
                    else:
                        y = y + " - "
                    if abs(x[i]) != 1:
                        y = y + str(abs(x[i])) + " "
                    y = y + GeneratorList[i]
        if y == "":
            y = "0"
        return y
    def __repr__(self):
        return str(self)

        
####################################################################
##
## The GroupSet class is in essence a wrapper for a list of elements.
## GroupSets differ from lists and sets in the following ways:
## 1) we can add and multiply two GroupSets together, like cosets
## 2) Unlike sets, GroupSets can contain mutable items, such as other GroupSets
## 3) Unlike sets, GroupSets do not have to be sorted, although the sum and 
##     product of GroupSets yields a _sorted_ GroupSet, for comparison
## 4) Unlike lists, GroupSets are displayed with curly braces  
##
## This version is without Gap elements
########################################################################

class GroupSet:                    
    def __init__(self, L):
        if isinstance(L, list):
            self._List = L        
        else:
            return NotImplemented    
    def __eq__(self, other):
        if isinstance(other, GroupSet):
            # Since both cosets should already be sorted, we just have to compare the lists to each other.
            return(self._List == other._List)
        return NotImplemented
    def __ne__(self, other):
        result = self.__eq__(other)
        if result is NotImplemented:
            return result
        return not result 
    def __mul__(self, other):
        if isinstance(other, GroupSet):
            # we are multiplying two Cosets together
            if (len(self._List) == 0) or (len(other._List) == 0): # if either is the empty coset, return the empty coset.
                return GroupSet([])  
            # Find all possible products
            Prod = []
            for x1 in self._List:
                for x2 in other._List:
                    ##  We could be dealing with cosets of cosets.
                    ##  In which case, there is the posibility that x1 or x2 is a GroupSet
                    ##  This will not cause a problem if x1 is a GroupSet, since we will just have recursion.
                    ##  But if x2 is a GroupSet and x1 is NOT, we need to convert x1 to a GroupSet with a single element.
                    if isinstance(x2, GroupSet) and (not isinstance(x1, GroupSet)):
                        p = GroupSet([x1]) * x2
                    else:    
                        p = x1 * x2    
                    Prod.append(p)
            Prod.sort()
            for i in range(len(Prod)-1,0,-1): # Count backwards
                if Prod[i] == Prod[i-1]:      # Delete duplicates - which will be together after the sort
                    del Prod[i]    
            return GroupSet(Prod)  
        # if other is not a coset, it might be a list or single element
        if isinstance(other, list):
            return self * GroupSet(other)
        # last chance - single element    
        return self * GroupSet([other])         
    def __rmul__(self, other):
        # obviously other is not a GroupSet, or it would have been covered by __mul__
        if isinstance(other, list):
            return GroupSet(other) * self
        # last chance - single element    
        return GroupSet([other]) * self  
    def __add__(self, other):
        if isinstance(other, GroupSet):
            # we are adding two Cosets together
            if (len(self._List) == 0) or (len(other._List) == 0): # if either is the empty coset, return the empty coset.
                return GroupSet([])   
            # Find all possible sums
            PSum = []
            for x1 in self._List:
                for x2 in other._List:
                    ##  We could be dealing with cosets of cosets.
                    ##  In which case, there is the posibility that x1 or x2 is a GroupSet
                    ##  This will not cause a problem if x1 is a GroupSet, since we will just have recursion.
                    ##  But if x2 is a GroupSet and x1 is NOT, we need to convert x1 to a GroupSet with a single element.
                    if isinstance(x2, GroupSet) and (not isinstance(x1, GroupSet)):
                        p = GroupSet([x1]) + x2
                    else:    
                        p = x1 + x2    
                    PSum.append(p)
            PSum.sort()
            for i in range(len(PSum)-1,0,-1): # Count backwards
                if PSum[i] == PSum[i-1]:      # Delete duplicates - which will be together after the sort
                    del PSum[i]    
            return GroupSet(PSum)  
        # if other is not a coset, it might be a list or single element
        if isinstance(other, list):
            return self + GroupSet(other)
        # last chance - single element    
        return self + GroupSet([other])
    def __radd__(self, other):
        # obviously other is not a GroupSet, or it would have been covered by __add__
        if isinstance(other, list):
            return GroupSet(other) + self
        # last chance - single element    
        return GroupSet([other]) + self      
    def __neg__(self):
        # this is only used for rings.  We take the negative of all of the elements in the list.
        NN = []
        for item in self._List:
            NN.append(-item)
        NN.sort()
        return GroupSet(NN)    
    def __sub__(self, other):
        return self + (-other) # this should work is all cases.    
    def __lt__(self, other):
        if isinstance(other, GroupSet):
            return (sorted(self._List) < sorted(other._List))
        return NotImplemented 
    def __gt__(self, other):
        if isinstance(other, GroupSet):
            return (sorted(self._List) > sorted(other._List))
        return NotImplemented 
    def __le__(self, other):
        if isinstance(other, GroupSet):
            return (sorted(self._List) <= sorted(other._List))
        return NotImplemented 
    def __ge__(self, other):
        if isinstance(other, GroupSet):
            return (sorted(self._List) >= sorted(other._List))
        return NotImplemented    
    def __len__(self):
        return len(self._List)    
    def __iter__(self):              # Allows iteration constructions such as
        return iter(self._List)      # [order(x) for x in G] 
    def __getitem__(self, index):
        return self._List[index]    
    def __pow__(self, exp):          # Raising a set to a power, think of it as a coset (element of a quotient group)
        if isinstance(exp, (int, IntType)):
            x = self._List[0]^(exp - 1)
            return self * x 
        return NotImplemented      
    def Sort(self):
        self._List.sort()
        return None                  
    def __str__(self):
        s = str(self._List)
        s = "{" + s[1:-1] + "}"  # replace the square brackets (guaranteed to be on the outside) with curly braces.
        return(s) 
    def __repr__(self):
        return str(self)

  
class Homomorph:
    def __init__(self, domain, target):
        # convert domain and target to lists, and strip off wrappers if present.
        if isinstance(domain, GroupSet):
            self.Domain = domain._List
        elif isinstance(domain, list):
            self.Domain = domain
        else:
            print("Domain must be a group or list") 
        if isinstance(target, GroupSet):
            self.Target = target._List
        elif isinstance(target, list):
            self.Target = target
        else:
            print("Target must be a group or list")
            # TODO: we may eventually allow target to be a field
        self.In = []  
        self.Out = [] 
        self.IsRing = false  # For RingHomo, this would be set to true after initialization            
    def Set(self, input, output): ## Assumes the wrappers are stripped from input and output 
        # Always conform both the input and output to the Domain and Target.
        # For groups, this will put the elements in standard form (ListGroup format)
        # For rings, it will allow us to enter 1 for (1 mod 6).
        if input in self.In:
            self.Out[self.In.index(input)] = self.Target[self.Target.index(output)] 
        else:
            self.In.append(self.Domain[self.Domain.index(input)])
            self.Out.append(self.Target[self.Target.index(output)])            
    def __call__(self, value):
        try:
            return self.Out[self.In.index(value)]    
        except ValueError:
            print("Homomorphism is not defined at that value.")  
    def Finish(self):
        gen = copy(self.In)
        grp = copy(self.In)
        if isinstance(gen[0], GapInstance):  # Domain consists of Gap elements, so we use Gap to assist.
            # First find the multiplication table of the domain
            fDomain = gap(self.Domain)    #
            M = fDomain.QuickTable() # will produce a 1 index matrix
            if self.IsRing:
                A = fDomain.QuickAdd() # will produce a 1 index matrix for addition
            # convert the homomorphism to a translation dictionary, which uses an integer for the element
            tran = [self.Domain.index(key) + 1 for key in gen]
            gen = copy(tran)
            grp = copy(tran)
            for g1 in grp:
                for g2 in gen:
                    z = int(M[g1][g2])
                    prod = self.Out[grp.index(g1)] * self.Out[grp.index(g2)] # multiplication is in the target group - so no tables
                    if self.IsRing and isinstance(prod, GroupSet):    
                        prod = prod + self.Out[0] + (-self.Out[0])   
                    if z in grp:
                        # z is already in the list, check that fun[g1]*fun[g2] = fun[g1*g2]
                        if prod != self.Out[grp.index(z)]:
                            print(str(self.Out[grp.index(g1)]) + " * " + str(self.Out[grp.index(g2)] ) + " is not " + str(self.Out[grp.index(z)]))
                            return "Homomorphism failed"
                    else:
                        if not(prod in self.Target):
                            print(str(prod) + " is not in target.")
                            return "Homomorphism failed"
                        prod = self.Target[self.Target.index(prod)]
                        grp.append(z)   
                        self.In.append(self.Domain[z-1])
                        self.Out.append(prod)  
                    if self.IsRing:
                        z = int(A[g1][g2])
                        if z in grp:
                            # z is already in the list, check that fun[g1] + fun[g2] = fun[g1 + g2]  
                            if self.Out[grp.index(g1)] + self.Out[grp.index(g2)] != self.Out[grp.index(z)]:
                                print(str(self.Out[grp.index(g1)]) + " + " + str(self.Out[grp.index(g2)] ) + " is not " + str(self.Out[grp.index(z)]))
                                return "Homomorphism failed" 
                        else: 
                            summ = self.Out[grp.index(g1)] + self.Out[grp.index(g2)]
                            if not(summ in self.Target):
                                print(str(prod) + " is not in target.")
                                return "Homomorphism failed"        
                            grp.append(z)   
                            self.In.append(self.Domain[z-1])
                            self.Out.append(summ)              
        else:
            for g1 in grp:
                for g2 in gen:
                    z = g1 * g2
                    prod = self.Out[self.In.index(g1)] * self.Out[self.In.index(g2)]
                    if self.IsRing and isinstance(z, GroupSet):
                        z = z + g1 + (-g1) #completes the coset
                    if self.IsRing and isinstance(prod, GroupSet):    
                        prod = prod + self.Out[0] + (-self.Out[0])    
                    if z in grp:
                        # z is equivalent to an element in grp, but may have a different form
                        # replace z with the form that is in grp.
                        # z = grp[grp.index(z)]
                        if prod != self.Out[self.In.index(z)]:
                            print(str(self.Out[self.In.index(g1)])+" * "+str(self.Out[self.In.index(g2)])+" is not "+str(self.Out[self.In.index(z)]))
                            return "Homomorphism failed"
                    else:
                        if not(prod in self.Target):
                            print(str(prod) + " is not in target.")
                            return "Homomorphism failed"
                        prod = self.Target[self.Target.index(prod)]    
                        grp.append(z) 
                        self.In.append(z)
                        self.Out.append(prod) 
                    if self.IsRing:
                        z = g1 + g2
                        if z in grp:
                            if self.Out[self.In.index(g1)] + self.Out[self.In.index(g2)] != self.Out[self.In.index(z)]:
                                print(str(self.Out[self.In.index(g1)])+" + "+str(self.Out[self.In.index(g2)])+" is not "+str(self.Out[self.In.index(z)]))
                                return "Homomorphism failed"
                        else:
                            summ = self.Out[self.In.index(g1)] + self.Out[self.In.index(g2)]
                            if not(summ in self.Target):
                                print(str(summ) + " is not in target.")
                                return "Homomorphism failed"    
                            grp.append(z) 
                            self.In.append(z)
                            self.Out.append(summ)                           
        if len(self.In) == len(self.Domain):                
            return "Homomorphism defined"
        else:
            return "Homomorphism consistent, but not defined for the whole domain."    
    def GetDomain(self):
        return self.Domain
    def GetRange(self):
        # This is what gets tricky.  We want to remove duplicates in self.Out, and put them in the order of self.Target
        tempRange = []
        for g1 in self.Target:
            if (g1 in self.Out):
                tempRange.append(g1)
        return tempRange
    def Inv(self, value):
        # On input, value will be a list of elements.
        # returns a sorted list of elements so that Fun(x) = value
        # value may be a list, and in fact, if the elements of the target are lists, add an extra list to value
        n = len(self.Out)
        R = []
        for i in range(n):
            if self.Out[i] in value:
                if not self.In[i] in R:
                    R.append(self.In[i])
        return sorted(R)    
          
class FieldHomo:
    def __init__(self):        
        self.In = []  
        self.Out = []
        self.Key = [] 
        self.RationalMap = false # assume it is for the current field extension.
        if GenList == []:
            self.RationalMap = true          
    def Set(self, input, output): 
        if input in self.In:
            self.Out[self.In.index(input)] = output 
        else:
            self.In.append(input)
            self.Out.append(output)     
    def __call__(self, value):
        x = value
        if self.RationalMap:
            x = TrigReduce(x)
            vec = Compon(x, self.In)
            total = vec[-1] # last component is the rational part
            for i in range(len(self.In)):
                total = total + vec[i]*self.Out[i]
            return expand(total)
        else:
            if self.Key == []:    # CheckHomo was never done.
                flag = self.Finish()
                if not(flag):
                    return None
            try:
                array = Vectorize(value)
            except:
                # if it did not vectorize, we must have entered a rational number
                return value
            n = len(array)
            total = 0
            for i in range(n):
                total = total + array[i]*self.Key[i]    
            return total      
    def Finish(self): #Really CheckHomo
        # This checks whether the field homomorphism works.
        # In the case of a homomorphism on a field extension, it constructs 
        # the vector that is used for the call function
        if self.RationalMap:
            n = len(self.In)
            for i in range(n):
                for j in range(n):
                    z = TrigReduce(self.Out[i] * self.Out[j])
                    w = TrigReduce(self.In[i] * self.In[j])
                    if self(w) != z:
                        return "f(" + str(self.In[i]) + ")*f(" + str(self.In[j]) + ") is not " + str(z) + "."
            return true     
        else: 
            KeyList = []
            n = len(GenList)
            OutList = []
            try:
                for i in range(n):
                    OutList.append(self.Out[self.In.index(GenList[i])])
            except:
                print("The mappings for all of the generators has not been defined.")    
                return false 
            iList = [0 for i in DegreeList] # Generalized for loop
            Cont = true
            while Cont:
                ele = 1
                for i in range(n):
                    ele = ele * OutList[i]^iList[i]
                KeyList.append(ele)
                # increment the iList
                pointer = 0
                iList[pointer] = iList[pointer] + 1
                while iList[pointer] >= DegreeList[pointer]:
                    iList[pointer] = 0
                    pointer = pointer + 1
                    if pointer == n:
                        Cont = false
                        pointer = 0       
                    iList[pointer] = iList[pointer] + 1
            self.Key = KeyList  
            # Check to see if homomorphism is consistent
            for i in range(n):
                ele1 = GenList[i]^(DegreeList[i]-1)
                ele2 = GenList[i]
                ele3 = GenList[i]^DegreeList[i]
                if self(ele1) * self(ele2) != self(ele3):
                    print("Inconsistent definition.")
                    return false
            return true      
                          
DisplayPermInt = false
  
class Perm:
    def __init__(self, *args):
        L = list(args)
        if len(L) == 1: # allow for a single argument of a list
            if isinstance(L, list):
                L = L[0]
        # test to see if this is the numbers from 1 to n
        if sorted(L) != list(range(1,len(L)+1)):
            raise ValueError("Must be a rearrangement of the numbers 1 through n.")
        else:    
            # delete trailing number if in position
            while (len(L)>0) and (L[-1] == len(L)):
               L.pop() 
            self._P = L
    def __eq__(self, other):
        if isinstance(other, Perm):
            return self._P == other._P
        else:
            return NotImplemented
    def __ne__(self, other):
        result = self.__eq__(other)
        if result is NotImplemented:
            return result
        return not result      
    def CompWith(self, other):
        if isinstance(other, Perm):
            if len(self._P) < len(other._P):
                return -1
            if len(self._P) > len(other._P):
                return 1
            n = len(self._P)
            for i in range(n-1,0,-1):
                if self._P[i] < other._P[i]:
                    return 1
                if self._P[i] > other._P[i]:
                    return -1   
            return 0                     
        else:
            return NotImplemented   
    def __lt__(self, other):
        if isinstance(other, Perm):
            return (self.CompWith(other) == -1)
        else:
            return NotImplemented    
    def __gt__(self, other):
        if isinstance(other, Perm):
            return (self.CompWith(other) == 1)
        else:
            return NotImplemented    
    def __le__(self, other):
        if isinstance(other, Perm):
            return (self.CompWith(other) < 1)
        else:
            return NotImplemented    
    def __ge__(self, other):
        if isinstance(other, Perm):
            return (self.CompWith(other) > -1)
        else:
            return NotImplemented     
    def __call__(self, value):   
        if value < 1:
            return value
        try:
            return self._P[value-1]     
        except: # probably out of range
            return value    
    def __mul__(self, other):
        if isinstance(other, Perm):
            L = copy(other._P)
            M = copy(self._P)  
            u = max(len(L), len(M))
            # get both lists to be the same length
            for i in range(len(L)+1, u+1):
                L.append(i)
            for i in range(len(M)+1, u+1):
                M.append(i)        
            ## The following line uses left to right multiplication, assuming (fog)(x) = g(f(x)). 
            # T = [L[M[i]-1] for i in range(u)]
            ## The following line uses right to left multiplication, assuming (fog)(x) = f(g(x)).
            T = [M[L[i]-1] for i in range(u)]
            return Perm(T)
        elif isinstance(other, Cycle):
            return self.ToCycle() * other
        else:
            return NotImplemented   
    def __pow__(self, exp):
        if isinstance(exp, (int, IntType)):
            if exp == 0:
                return Perm()
            elif exp == 1:
                return self
            elif exp > 1:
                return (self^(exp-1)) * self #Recursive definition
            elif exp == -1:
                L = self._P
                u = len(L)
                T = copy(L)
                for i in range(u):
                    T[L[i]-1] = i + 1
                return Perm(T)
            else: # exp < -1
                return (self^(-1))^(-exp)  
        else:
            return NotImplemented      
    def ToCycle(self):
        T = copy(self._P)
        n = len(T)
        R = []
        for i in range(n):
            if T[i] > 0:
                L = [i+1]
                j = T[i]
                T[i] = 0
                while T[j-1] > 0:
                    L.append(j)
                    k = j
                    j = T[k-1]
                    T[k-1] = 0
                if len(L) > 1:
                    R.append(L)
        ret = Cycle()
        ret._C = R
        return ret   
    def ToInt(self):
        total = 1
        u = len(self._P)
        for i in range(1,u):
            for j in range(i):
                if self._P[j] > self._P[i]:
                    total = total + factorial(i)
        return total         
    def __str__(self):
        if DisplayPermInt:
            return str(self.ToInt())
        return "P" + str(tuple(self._P))  
    def __repr__(self):
        return str(self)    
           
# This is a user defined error to handle the case where a non-integer cycle is converted to a permutation.             
class CycleToPermError(Exception):
    def __init__(self, value):
        self.value = value
    def __str__(self):
        return repr(self.value)    
    
class Cycle:
    def __init__(self, *args):
        L = list(args)
        if len(L) == 1: # allow for a single argument of a list
            if isinstance(L, list):
                L = L[0]    
        # test to see if there are any duplicates in the list
        if len(Uniquify(L)) != len(L):   
            raise ValueError("Cannot have duplicates in cycle.")
        elif len(L) == 0:
            self._C = []   # Note that the identity element is stored as an empty list. 
        else:
            NewL = L 
            # rotate list so that it begins with the smallest value
            n = NewL.index(min(NewL))
            for i in range(n):
                NewL.append(NewL.pop(0))
            self._C = [NewL]
    def __eq__(self, other):
        if isinstance(other, Cycle):
            return self._C == other._C
        else:
            return NotImplemented            
    def __ne__(self, other):
        result = self.__eq__(other)
        if result is NotImplemented:
            return result
        return not result  
    def __lt__(self, other):
        if isinstance(other, Cycle):
            try:
                return self.ToPerm() < other.ToPerm()
            except CycleToPermError:
                return self._C < other._C    
        elif isinstance(other, Perm):
            return self.ToPerm() < other
        else:
            return NotImplemented    
    def __le__(self, other):
        if isinstance(other, Cycle):
            try:
                return self.ToPerm() <= other.ToPerm()
            except CycleToPermError:
                return self._C <= other._C        
        elif isinstance(other, Perm):
            return self.ToPerm() <= other
        else:
            return NotImplemented   
    def __gt__(self, other):
        result = self.__le__(other)  
        if result is NotImplemented:
            return result
        return not result  
    def __ge__(self, other):
        result = self.__lt__(other)  
        if result is NotImplemented:
            return result
        return not result     
    def __call__(self, value):
        x = value
        n = len(self._C)
        for i in range(n):
            if x in self._C[i]:
                j = self._C[i].index(x) + 1
                if j == len(self._C[i]):
                    j = 0
                x = self._C[i][j]
        return x   
    def __mul__(self, other):
        if isinstance(other, Cycle):  
            ## The following 2 lines uses left to right multiplication, assuming (fog)(x) = g(f(x)).  
            # S = copy(self._C)
            # S.extend(other._C) # combine the two lists into one list of lists
            ## The following 2 lines uses right to left multiplication, assuming (fog)(x) = f(g(x)).  
            S = copy(other._C)
            S.extend(self._C) # combine the two lists into one list of lists
            m = len(S)
            T = Uniquify(Flatten(S)) # find all of the symbols in the list
            T = sorted(T)
            R = []
            n = len(T)
            for i in range(n):
                if T[i] != None: # None is the indication that this symbol has been used
                    L = []
                    j = T[i]
                    while j in T:
                        L.append(j)
                        T[T.index(j)] = None
                        for k in range(m):  
                            if j in S[k]:
                                q = S[k].index(j)+1
                                if q == len(S[k]):
                                    q = 0
                                j = S[k][q]
                    if len(L) > 1:
                        R.append(L)            
            ret = Cycle()                
            ret._C = R
            return ret 
        elif isinstance(other, Perm):
            return self * other.ToCycle()
        else:
            return NotImplemented  
    def __pow__(self, exp):
        if isinstance(exp, (int, IntType)) :
            if exp == 0:
                return Cycle()
            elif exp == 1:
                return self
            elif exp > 1:
                return (self^(exp-1)) * self #Recursive definition
            elif exp == -1:
                R = []
                for L in copy(self._C):
                    LL = copy(L)
                    LL.reverse()
                    LL.insert(0, LL.pop())  # rotates last position to first
                    R.append(LL)
                ret = Cycle()
                ret._C = R
                return ret    
            else: # exp < -1
                return (self^(-1))^(-exp)  
        else:
            return NotImplemented              
    def __str__(self):
        if len(self._C) == 0:
            return "()"
        s = ""
        for i in range(len(self._C)):
            s = s + str(tuple(self._C[i]))
        s = ConvertIdentity(s)    
        return s       
    def __repr__(self):
        return str(self)
    def ToPerm(self):
        if len(self._C) == 0:
            return Perm()
        L = Flatten(self._C)
        n = max(L)
        m = min(L)
        ## m should be a positive integer, and n should also be an integer, or else return an error.
        if isinstance(n, (int, IntType)) and isinstance(m, (int, IntType)) and m > 0:
            PP = list(range(1,n+1)) 
            for R in self._C:
                m = len(R)
                for i in range(m-1):
                    PP[R[i]-1] = R[i+1]
                PP[R[-1]-1] = R[0]    
            return Perm(PP)     
        else:
            raise CycleToPermError(m)

   
class Twople:       
    def __init__(self, xvalue, yvalue):
        self._x = xvalue
        self._y = yvalue
    def __eq__(self, other):
        if isinstance(other, Twople):      
            return (self._x == other._x) and (self._y == other._y)
        else:
            return NotImplemented            
    def __ne__(self, other):
        result = self.__eq__(other)
        if result is NotImplemented:
            return result
        return not result  
    def __lt__(self, other):
        if isinstance(other, Twople):  
            return ([self._x, self._y] < [other._x, other._y])
        else:
            return NotImplemented    
    def __gt__(self, other):
        if isinstance(other, Twople):    
            return ([self._x, self._y] > [other._x, other._y])
        else:
            return NotImplemented   
    def __le__(self, other):
        if isinstance(other, Twople): 
            return ([self._x, self._y] <= [other._x, other._y])
        else:
            return NotImplemented    
    def __ge__(self, other):
        if isinstance(other, Twople):      
            return ([self._x, self._y] >= [other._x, other._y])
        else:
            return NotImplemented             
    def __mul__(self, other):
        if isinstance(other, Twople):              
            return Twople( self._x * other._x, self._y * other._y )
        else:
            return NotImplemented  
    def __pow__(self, exp):
        if isinstance(exp, (int, IntType)) :  
            return Twople(self._x^exp, self._y^exp)
        else:
            return NotImplemented   
    def __str__(self):
        return "(" + str(self._x) + ", " + str(self._y) + ")"      
    def __repr__(self):
        return "(" + str(self._x) + ", " + str(self._y) + ")"  

class Basis:
    def __init__(self, *args):
        if len(args) == 1:   
            BasList = [1]
            VecList = args[0]
        else:
            BasList = args[0]
            VecList = args[1]   
        # BasList and VecList will be lists, we need to vectorize each combination of BasList * VecList.
        self._n = len(BasList)
        self._m = len(VecList)
        self._bas = BasList
        self._worked = false
        dimen = self._n * self._m
        M = []
        for j in range(self._m):
            for i in range(self._n):
                v = BasList[i]*VecList[j]
                w = Vectorize(v)
                if not isinstance(w, list):
                    w = [w]
                # pad w with zeros to make it of length dimen
                while len(w) < dimen:
                   w.append(0)
                M.append(w)
        Mat = matrix(M) # convert to a matrix
        try:
           Inv = ~Mat   # take the inverse matrix
        except:
           return None
        self.inv = Inv  
        self._worked = true
        return None  
    def Coeff(self, value):
        if not(self._worked):
            print("basis is not linearly independent")
            return false
        dimen = self._n * self._m    
        w = Vectorize(value)
        if not isinstance(w, list):
            w = [w]
        # pad w with zeros to make it of length dimen
        while len(w) < dimen:
            w.append(0)
        T = matrix(w) * self.inv # Use inverse matrix to find new vector
        # T will be a row matrix, not a list, so we have to convert it to a list.
        L = []
        for j in range(self._m):
            tot = 0
            for i in range(self._n):
                k = T[0][i + j*self._n]
                tot = tot + k*self._bas[i]
            L.append(tot)    
        return L  
        
class RingPolynomial:
    def __init__(self, L):
        ## input: coefficients are in the form a_0, a_1 ... a_n 
        ## note that the coefficients may either be integers, or members of some ring (RingElements or Quaternions)
        ## so all tests must be made without knowledge of the typ
        if isinstance(L, list):
            # Drop any 0's at the end of the list.
            while len(L) > 0 and L[-1] == 0*L[-1]:
                del L[-1]
            self._coefficients = L        
        else:
            return NotImplemented  
    def __eq__(self, other):
        if isinstance(other, RingPolynomial):
            # Since both lists should already be reduced, we just have to compare the coefficients to each other.
            return(self._coefficients == other._coefficients)
        return NotImplemented
    def __ne__(self, other):
        result = self.__eq__(other)
        if result is NotImplemented:
            return result
        return not result 
    def __add__(self, other):
        if isinstance(other, RingPolynomial):
            L1 = copy(self._coefficients)
            L2 = other._coefficients
            ## if one is longer than the other, we cannot just pad one with 0's, since the integer 0 may not be in the ring.  Make L1 the longer polynomial.
            if len(L2) > len(L1):
                L1 = copy(other._coefficients)
                L2 = self._coefficients
            for i in range(len(L2)):
                L1[i] = L1[i] + L2[i]
            return RingPolynomial(L1)
        else:
            # We have to assume that the other is a member of the ring, so treat it like a polynomial of degree 0
            if self._coefficients == []:
                return RingPolynomial([other]) # Make into a degree 0 polynomial
            else:
                try:
                    L1 = copy(self._coefficients)
                    L1[0] = L1[0] + other
                    return RingPolynomial(L1)
                except:
                    print("Coefficients not of the same type.")
                    return None
    def __radd__(self, other):
        ## we can assume that other is not of type RingPolynomial, or else it would have been covered by __add__
        if self._coefficients == []:
            return RingPolynomial([other]) # Make into a degree 0 polynomial
        else:
            try:
                L1 = copy(self._coefficients)
                L1[0] = L1[0] + other
                return RingPolynomial(L1)
            except:
                print("Coefficients not of the same type.")
                return None     
    def __neg__(self):
        L = []
        for i in self._coefficients:
            L.append(-i)
        return RingPolynomial(L)
    def __sub__(self, other):
        return self + (- other)
    def __rsub__(self, other):
        return other + (- self)
    def __mul__(self, other):
        if isinstance(other, RingPolynomial):
            ## Here, we assume that the coefficients of self are all of the same type (ring element or integer) and all coefficients of other are all the same type.
            L1 = self._coefficients
            L2 = other._coefficients
            if len(L1) == 0 or len(L2) == 0:
                return RingPolynomial([])
            L3 = []
            try:
                for i in range(len(L1) + len(L2) - 1):
                    sumstarted = False
                    sum = 0
                    for j in range(i+1):
                        ## combine the x^j coefficient with the x^(i-j), if both in range.
                        if j < len(L1) and i-j < len(L2):
                            T = L1[j]*L2[i-j]
                            if sumstarted:
                                sum = sum + T
                            else:
                                sum = T
                                sumstarted = True
                    L3.append(sum)
            except:
                print("Coefficients not of the same type.")
                return None
            else:
                return RingPolynomial(L3)
        else:
            ## other must be an element of the ring, so multiply the entire list by this element.
            L2 = []
            try:
                for x in self._coefficients:
                    L2.append(x * other)
            except:
                print("Coefficients not of the same type.")
                return None
            else:
                return RingPolynomial(L2)
    def __rmul__(self, other):
        ## other must not be a RingPolynomial, so assume other is an element of the ring.
        L2 = []
        try:
            for x in self._coefficients:
                L2.append(other * x)
        except:
            print("Coefficients not of the same type.")
            return None
        else:
            return RingPolynomial(L2)
    def __pow__(self, exp):
        if isinstance(exp, (int, IntType)) and exp > 0:
            # define powers recursively
            if exp == 1:
                return self
            else:
                return (self^(exp-1) * self)
        else:
            return NotImplemented   
    def __str__(self):
        L = self._coefficients
        if len(L) == 0:
            return "0"
        if len(L) == 1:
            return str(L[0])
        tmpstr = ""
        for i in range(len(L)-1,-1,-1): #reverses the order
            s = str(L[i])
            if s != "0": #Do not print the 0 coefficients
                s1 = s[1:] #remove the first character, which might be a minus sign
                if ("-" in s1) or ("+" in s1):
                    #Enclose all of s in parenthesis.
                    if tmpstr != "":
                        tmpstr = tmpstr + " + "
                    tmpstr = tmpstr + "(" + s + ")"
                elif s[0] == "-":
                    if tmpstr != "":
                        tmpstr = tmpstr + " - " + s1
                    else:
                        tmpstr = s
                else:
                    if tmpstr != "":
                        tmpstr = tmpstr + " + " + s
                    else:
                        tmpstr = s
                if i > 0:
                    tmpstr = tmpstr + "*"
                #If the number was either 1 or -1, we don't need to print the "1*", so remove the last two characters
                if i > 0 and (s == "1" or s == "-1"):
                    tmpstr = tmpstr[:-2]
                if i > 0:
                    tmpstr = tmpstr + RingPolyVar
                if i > 1:
                    tmpstr = tmpstr + "^" + str(i)
        return tmpstr
    def __repr__(self):
        return str(self)

##############################################################################
## 
##  Main group defining routines
##
##############################################################################
    
def ZGroup(n):
    v = []
    for i in range(n):
        v.append(SumModN(i,n))
    return GroupSet(v)    
        
def ZStar(n):
    v = []
    R = Integers(n) # Built in Zn ring
    for i in range(1,n):
        if gcd(i,n) == 1:
            v.append(R(i))
    return GroupSet(v)
    
def ZRing(n):
    v = []
    R = Integers(n) # Built in Zn ring
    for i in range(n):
        v.append(R(i))
    return GroupSet(v)    
    
def InitQuaternions():
    global i
    global j
    global k
    # By defining Quaternions with SR, (Symbolic Ring), we allow for constructions like a + b*i + c*j + d*k
    Q.<i,j,k> = QuaternionAlgebra(SR,-1,-1)
    return GroupSet([1, i, j, k, -1, -i, -j, -k])    

def InitSkew9():
    global a
    global b
#   This defines an unusual skew field of dimension 9 over the rational numbers.  It is defined by
#   a^3 = 3a+1, b^3 = 2, and b*a =(2-a^2)*b    
    A = FreeAlgebra(SR, 2, "x")
    F = A.monoid()
    a = F.gens()[0]
    b = F.gens()[1]
    mons = [F(1), a, a^2, b, a*b, a^2*b, b^2, a*b^2, a^2*b^2]
    M = MatrixSpace(QQ, 9)
    mats = [M([0,1,0, 0,0,0,0,0,0,  
               0,0,1, 0, 0, 0, 0, 0, 0,  
               1,3,0, 0, 0, 0, 0, 0, 0,   
               0,0,0, 2, 0,-1, 0, 0, 0,  
               0,0,0,-1,-1, 0, 0, 0, 0,  
               0,0,0, 0,-1,-1, 0, 0, 0,
               0,0,0, 0, 0, 0,-2,-1, 1,  
               0,0,0, 0, 0, 0, 1, 1,-1,   
               0,0,0, 0 ,0 ,0,-1,-2, 1]), 
            M([0,0,0,1,0,0,0,0,0,   
               0,0,0,0,1,0,0,0,0,  
               0,0,0,0,0,1,0,0,0,
               0,0,0,0,0,0,1,0,0,   
               0,0,0,0,0,0,0,1,0,  
               0,0,0,0,0,0,0,0,1,
               2,0,0,0,0,0,0,0,0,   
               0,2,0,0,0,0,0,0,0,  
               0,0,2,0,0,0,0,0,0])]
    Skew9.<a,b> = A.quotient(mons, mats)  
    return GroupSet([a, b])

## The main groups are done via string substitutions


def InitGroup(name_of_identity_element):
    global LastInit
    global IdentityElement
    global GeneratorList
    global RelationsList1
    global RelationsList2
    IdentityElement = name_of_identity_element
    GeneratorList = []
    RelationsList1 = []
    RelationsList2 = []
    LastInit = "InitGroup"
    tmpstr = "global " + IdentityElement + "; " + IdentityElement + " = StringElement('')"
    exec(tmpstr)
    return "New group with identity " + IdentityElement

def InitRing():
    global LastInit
    global IdentityElement
    global GeneratorList
    global RelationsList1
    global RelationsList2
    global ModuloList
    global RingDefArray
    #Reset the identity element
    IdentityElement = "e"
    GeneratorList = []
    RelationsList1 = []
    RelationsList2 = []
    LastInit = "InitRing"
    ModuloList = []
    RingDefArray = []
    return None
    
def AddGroupVar(*args):
    global GeneratorList
    global RelationsList1
    global RelationsList2
    if len(args) == 0:
        print("Must have at least one argument")
        return None
    for newvar in args:
        if newvar in GeneratorList:
            print(newvar, "is already a group variable.")
            return None
        n = len(GeneratorList) + 1
        if n > 26:
            print("Only 26 generators allowed")
            return None
        GeneratorList.append(newvar)
        # define x*x^-1 and x^-1*x to be e
        RelationsList1.append(chr(n+64)+chr(n+96))
        RelationsList1.append(chr(n+96)+chr(n+64))
        RelationsList2.append("")
        RelationsList2.append("")
        tmpstr = "global " + newvar + "; " + newvar + " = StringElement('" + chr(n+64) + "')"
        exec(tmpstr)
    return None       

def AddRingVar(*args):
    global GeneratorList
    global ModuloList
    global RingDefArray
    if LastInit != "InitRing":
        print("Need to first initialize the ring with InitRing")
        return None
    if len(args) == 0:
        print("Must have at least one argument")
        return None
    oldn = len(GeneratorList)
    for newvar in args:
        if newvar in GeneratorList:
            print(newvar, "is already a ring variable.")
            return None
        n = len(GeneratorList) + 1
        if n > 26:
            print("Only 26 generators allowed")
            return None
        GeneratorList.append(newvar)
        ModuloList.append(0)
    #We now have to reset all of the generators, since the dimensions are different.
    n = len(GeneratorList)
    for i in range(n):
        L = [0 for j in range(n)]
        L[i] = 1
        tmpstr="global "+GeneratorList[i]+"; "+GeneratorList[i]+" = RingElement("+str(L)+")"
        exec(tmpstr)
    oldRingDefArray = copy(RingDefArray)
    # Make the product of 2 generators a StringElement, so the Define command can identity it.
    RingDefArray = [[StringElement(chr(65+i)+chr(65+j)) for j in range(n)] for i in range(n)]
    #If there were already definitions made, we need to copy the old definitions into the new array.
    #The tricky part is that the dimensions will be different.
    for i in range(oldn):
        for j in range(oldn):
            v = oldRingDefArray[i][j]
            if not isinstance(v, StringElement):
                RingDefArray[i][j] = array(list(v) + [0]*(n-oldn)) # pad with 0's
    return None 
    
def AddPolyVar(arg):
    if isinstance(arg, str):
        global RingPolyVar
        RingPolyVar = arg
        tmpstr = "global " + arg + "; " + arg + " = RingPolynomial([0,1])"
        exec(tmpstr)
        return None
    else:
        return NotImplemented

def Define(element1, element2):
    global LastFieldVar
    global GenList
    global DegreeList
    if type(element1) == type(element2):
        if element1 == element2:
            print("Rule is already defined.")
            return None
    if (LastInit == "InitGroup") or (LastInit == "InitTerry"):
        global RelationsList1
        global RelationsList2
        # element1 and element2 must be StringElements
        if isinstance(element1, StringElement) and isinstance(element2, StringElement):
            # if the first string is empty, this will lead to an infinite replacement.
            if len(element1._x) > 0: 
                RelationsList1.append(element1._x)
                RelationsList2.append(element2._x)
                # if this indicates the order of an element, we can go ahead and define the inverse
                c = element1._x[0]
                n = len(element1._x)
                if element2._x == "" and n > 1 and element1._x == c*n and ord(c) < 96 :
                    RelationsList1.append(c.lower())
                    RelationsList2.append(c*(n-1))
                return None
        # Otherwise, it is not a valid Group define.
        print("Not a valid group definition.")
        return None
    if LastInit == "InitRing":
        global RingDefArray
        global ModuloList
        # There are two types of Define's for rings, 
        #   defining a StringElement of length 2 to be a RingElement (or 0), or
        #   defining a number times a generator to be 0, indicating the additive order.
        if isinstance(element1, StringElement):
            s = element1._x
            if len(s) == 2:
                v = element2
                if v == 0:
                    # 0 is replaced with the zero vector
                    v = RingElement([0 for i in GeneratorList])
                if isinstance(v, RingElement):
                    # Only put the vector into the array.
                    RingDefArray[ord(s[0])-65][ord(s[1])-65] = v._x
                    return None
        if isinstance(element1, RingElement):
            if element2 == 0:
                v = element1._x
                j = 0
                cnt = 0
                for i in range(len(v)):
                    if v[i] != 0:
                        cnt = cnt + 1
                        j = i
                if cnt == 1:
                    # only one non-zero component, so this indicates the order of the generator
                    ModuloList[j] = abs(v[j])
                    return None
        print("Not a valid ring definition.")
        return None
    if LastInit == "InitDomain":
        if LastFieldVar == "":
            return "New variable has not been defined yet."
        # we create a polynomial by subtracting the two elements
        DefPoly = element1 - element2
        polystr = preparse(str(DefPoly))
        n = DefPoly.degree()
        if BaseCharacteristic > 0 and isinstance(CurrentField, GFType):
            # This is the first extension on a finite field.  
            # In order to enable the factoring algorithm, we will construct 
            # a Galois field using this polynomial. 
            # Note that this polynomial MUST be irreducible over GF(n)
            # for this to work.
            m = BaseCharacteristic^n # size of new field
            tmpstr = "global CurrentField; global " + LastFieldVar + "; CurrentField = GF(" + str(m) + ', name = "' 
            tmpstr = tmpstr + LastFieldVar + '", modulus = ' + polystr + "); " + LastFieldVar + " = CurrentField._first_ngens(1)[0]"
            exec(tmpstr)   
        elif BaseCharacteristic == 0:
            # extension of an infinite field
            tmpstr = "global CurrentField; global " + LastFieldVar + "; CurrentField = CurrentField.extension(" + polystr + ", names=('" 
            tmpstr = tmpstr + LastFieldVar + "',)); " + LastFieldVar + " = CurrentField._first_ngens(1)[0]"
            exec(tmpstr)   
        elif len(GenList) > 1:
            return "Can't do extension of an extension of an extension of a finite field!"   
        elif DegreeList[0] == 0:
            # We are doing an extension of a rational function field of finite characteristic.  Proceed as an infinite field.
            tmpstr = "global CurrentField; global " + LastFieldVar + "; CurrentField = CurrentField.extension(" + polystr + ", names=('" 
            tmpstr = tmpstr + LastFieldVar + "',)); " + LastFieldVar + " = CurrentField._first_ngens(1)[0]"
            exec(tmpstr) 
        else:
            # We are trying to extend an extension to a finite field.  We must first convert the GF definition of CurrentGroup to
            # an extension of Z_n.
            # Note: factorization will no longer be possible for this extension of an extension of a finite characteristic.
            FirstVar = CurrentField.variable_names()[0]
            OldPolyStr = str(CurrentField.modulus())
            OldPolyStr = OldPolyStr.replace("x", FirstVar) # x may not be defined, so convert to the variable that will be defined
            OldPolyStr = preparse(OldPolyStr)
            # reset FirstVar to be the variable of GF(n), rather than the field.
            tmpstr = "global " + FirstVar + '; TempDomain = GF(' + str(BaseCharacteristic) + ')["' + FirstVar + '"]; ' 
            tmpstr = tmpstr + FirstVar + " = TempDomain._first_ngens(1)[0]"
            exec(tmpstr)   
            # now we redefine the field in terms of an extension of GF(p), rather than GF(p^n).
            tmpstr = "global CurrentField; global " + FirstVar + "; CurrentField = GF(" + str(BaseCharacteristic) + ").extension(" 
            tmpstr = tmpstr + OldPolyStr + ", names=('" 
            tmpstr = tmpstr + FirstVar + "',)); " + FirstVar + " = CurrentField._first_ngens(1)[0]"
            exec(tmpstr)               
            # We still have to redefine the new variable to be a variable of this new field.
            tmpstr = "global " + LastFieldVar + '; TempDomain = CurrentField["' + LastFieldVar + '"]; ' 
            tmpstr = tmpstr + LastFieldVar + " = TempDomain._first_ngens(1)[0]"
            exec(tmpstr)      
            # We are now ready to define the new field as an extension of this extension
            tmpstr = "global CurrentField; global " + LastFieldVar + "; CurrentField = CurrentField.extension(" 
            tmpstr = tmpstr + polystr + ", names=('" 
            tmpstr = tmpstr + LastFieldVar + "',)); " + LastFieldVar + " = CurrentField._first_ngens(1)[0]"
            exec(tmpstr) 
            # We are almost done.  Unfortunately, the FirstVar element is not set to an element of the new field, but of
            # the intermediate field.  This causes a problem if we try to multiply FirstVar with LastFieldVar, giving
            # a NonImplemented error.  So we need to set FirstVar to the element in the new field corresponding the the first
            # generator.  This is tricky, since CurrentField.gens() is missing this information.  The only approach is a Monte Carlo method!
            tmpstr = "global TempFirstVar; TempFirstVar = " + FirstVar
            exec(tmpstr)
            tmpstr = "global TempLastVar; TempLastVar = " + LastFieldVar
            exec(tmpstr)
            NewFirstVar = CurrentField.random_element()*TempLastVar
            while str(NewFirstVar) != str(TempFirstVar):
                NewFirstVar = CurrentField.random_element()*TempLastVar
            tmpstr = "global " + FirstVar + "; " + FirstVar + " = NewFirstVar"
            exec(tmpstr)  
            # reset the first var of GenList so that it works.
            GenList[0] = NewFirstVar         
        GenList.append(CurrentField.gen())
        DegreeList.append(n)
        LastFieldVar = "" # So we cannot immediately do another extension, but first define the next variable.
        if UnivFieldVar != "":
            tmpstr = "global " + UnivFieldVar + '; TempDomain = CurrentField["' + UnivFieldVar + '"]; ' 
            tmpstr = tmpstr + UnivFieldVar + " = TempDomain._first_ngens(1)[0]"
            exec(tmpstr)          
    else:
        print("Nothing is initialized yet.")
        return None

def CheckGroup(grouplist):
    if isinstance(grouplist, GroupSet):
        G = grouplist._List
    else:
        G = list(grouplist)
    G = Uniquify(G) # make sure there are no duplicates
    G.sort()
    test = True
    for i in G:
        T = []
        U = []
        for j in G:
            T.append(i*j)
            U.append(j*i)
        T.sort()
        U.sort()
        if T != G  or U != G:
            test = False
    if test == False:
        print("The Latin square property does not hold for this set.")
    else:
        for i in G:
            for j in G:
                for k in G:
                    m = i*j;
                    n = j*k;
                    if m*k != i*n:
                        print("(",i,")*((",j,")*(",k,")) does not equal ((",i,")*(",j,"))*(",k,").")
                        test = False
        if test:
            print("This set of elements is a group.")
        else:
            print("The associative property does not hold.")
    
def CheckRing():
    if LastInit != "InitRing" or len(GeneratorList) == 0:
        print("No ring is defined")
        return None
    # Check if all parts of RingDefArray are vectors, and not string elements
    n = len(GeneratorList)
    for i in range(n):
        for j in range(n):
            if isinstance(RingDefArray[i][j], StringElement):
                print(RingDefArray[i][j], "is not defined")
                return None
    # We need a list of the actual elements making up the generators
    gens = []
    for i in range(n):
        v = [0 for j in range(n)]
        v[i] = 1
        gens.append(RingElement(v))
    # test if the order of a*b is compatible with the orders of a and b
    v = [0 for j in range(n)]
    Zero = RingElement(v) # Zero element
    T = True
    for i in range(n):
        for j in range(n):
            if ModuloList[i] * (gens[i] * gens[j]) != Zero:
                print(ModuloList[i], "(", gens[i], "*", gens[j], ") is not (", ModuloList[i] , gens[i], ") *", gens[j])
                T = False
            if ModuloList[j] * (gens[i] * gens[j]) != Zero:
                print(ModuloList[i],"(", gens[i], "*", gens[j], ") is not", gens[i], "* (", ModuloList[j] , gens[j], ")")
                T = False
    if not T:
        print("Distributive law does not hold.")
        return None
    # Only have to test associative law on the generators.
    for i in range(n):
        for j in range(n):
            for k in range(n):
                p = gens[i] * gens[j]
                q = gens[j] * gens[k]
                if p*gens[k] != gens[i]*q:
                    print(gens[i], "* (", gens[j], "*",gens[k], ") is not (", gens[i], "*", gens[j], ") *", gens[k])
                    T = False
    if not T:
        print("Associative law does not hold.")
    else:
        print("This is a ring.")
    return None
    
def FindUnity(*args):
    global ModuloList
    if len(args) > 1:
        print("Only one argument is needed.")
        return None
    if len(args) == 0:
        # if no arguments are given, use the whole ring
        if not (0 in ModuloList):
            ringlist = ListRing()
        else:
            # if the ring is infinite, this is more complicated.
            # Temporarily, replace the 0's with the maximum
            TempModulo = copy(ModuloList)
            M = max(ModuloList)
            if M == 0:
                M = 2
            for i in range(len(ModuloList)):
                if ModuloList[i] == 0:
                    ModuloList[i] = M
            ringlist = ListRing()
            ModuloList = copy(TempModulo)
    else:
        ringlist = args[0]
    # ringlist may only be a subring, so we cannot simply use the generators.
    if isinstance(ringlist, GroupSet):
        R = ringlist._List
    else:
        R = list(ringlist)
    n = len(R)
    for x in R:
        T = True
        for y in R:
            if (x*y != y) or (y*x != y):
                T = False
        if T:
            # there can be only one identity
            return x
    print("No unity element")
    return None
        
def GroupStringConvert(gapstr):
    # StructureDescription uses GAP to identify a group, and returns a string with the name of the group.
    # Unfortunately, GAP's convention is slightly different than the textbook.  GAP used C5 for Z_5, and D8 for D_4 
    # This routine converts the string of the group name to the name that the user will be more familiar with.
    str2 = ''
    L = len(gapstr)
    i = 1 # this will be the pointer
    while i < L:
        char = gapstr[i]
        if char != '"':
            # remove the quotation marks
            if char == 'C':
                # a 'C' followed by a number should be replaced with a 'Z'
                if (gapstr[i+1] >= '0' and gapstr[i+1] <= '9'):
                    str2 += 'Z'
                else:
                    str2 += char
            elif (char == 'D' and gapstr[i-1] != 'Q'):
                # a 'D' followed by a number should have the number halved.  Not applied to QD16
                str2 += char
                strnum = ""
                j = i+1
                while (gapstr[j] >= '0' and gapstr[j] <= '9'): # no fear of out of range, since the last character is '"'.
                    strnum += gapstr[j]
                    j = j+1
                    i = i+1
                str2 = str2 + str(int(strnum)/2)
            else:
                str2 += char 
        i = i+1 
    return(str2)   

def StructureDescription(*args):
    # This uses the small groups package from GAP to identify the group CurrentGroup. 
    try:
        if len(args) == 0:
            # If no arguments are given, find the structure of the current group defined.
            if LastInit != "InitGroup":
                print("No group has been defined.")
                return None
            # The plan is to create this group in GAP, so we can use GAP's StructureDescription routine.
            tmpstr = "f := FreeGroup(" + str(len(GeneratorList)) + "); G := f/["
            firstword = True
            for i in range(len(RelationsList1)):
                if len(RelationsList1[i]) == 1 and ord(RelationsList1[i][0]) > 96:
                    # This defines the inverse of an element. Ignore this definition
                    None
                elif len(RelationsList1[i]) == 2 and abs(ord(RelationsList1[i][0]) - ord(RelationsList1[i][1])) == 32:
                    # This defines a*a^-1 to be the identity, again we ignore the definition.
                    None
                else:
                    # put a comma between the words
                    if firstword == False:
                        tmpstr = tmpstr + ","
                    firstword = False
                    #Combine the two strings by taking the inverse of the second string.
                    stng = RelationsList1[i] + (RelationsList2[i].swapcase()[::-1])
                    firstletter = True
                    for s in stng:
                        # Put a times sign between generators
                        if firstletter == False:
                            tmpstr = tmpstr + "*"
                        firstletter = False
                        j = ord(s)
                        if j < 96:
                            #upper case letter
                            tmpstr = tmpstr + "f." + str(j-64)
                        else:
                            #lower case letter means inverse
                            tmpstr = tmpstr + "f." + str(j-96) + "^-1"
            # Add the final bracket and evaluate it.
            tmpstr = tmpstr + "]"
            gap.eval(tmpstr)
            gapstr = gap.eval("StructureDescription(G)")                    
        else:
            gapstr = "Perms := Group(" + str(PermToCycle(NthPerm(args[0])))
            for i in range(1, len(args)):
                gapstr = gapstr + "," + str(PermToCycle(NthPerm(args[i])))
            gapstr = gapstr + ")"   
            gap.eval(gapstr)
            gapstr = gap.eval("StructureDescription(Perms)")      
    except:
        print('Error in finding the structure of the group.')
    else:
        print(GroupStringConvert(gapstr))  
        
def GaloisType(poly):
    # This uses GAP to find the Galois group of the polynomial.  It assumes that the polynomial has been defined in QQ[x], for 
    # some variable x
    varname = poly.variable_name()
    deg = poly.degree()
    nstr = gap.eval(varname + ' := Indeterminate(Rationals, "' + varname + '");; GaloisType(' + str(poly) + ')')
    outstr = gap.eval("StructureDescription(TransitiveGroup(" + str(deg) + "," + nstr + "))")
    # Although TransitiveGroup gives more information than StructureDescription, students would not understand the notation produced by
    # the output of TransitiveGroup.  Thus, we find the StructureDescription to make it easier for the students.
    print(GroupStringConvert(outstr))     
        
        
def InitTerry():
    global LastInit
    global IdentityElement
    global GeneratorList
    global RelationsList1
    global RelationsList2
    global Stay
    global FlipRt
    global RotRt
    global FlipLft
    global RotLft
    global Spin
    IdentityElement = "Stay"
    GeneratorList = ["FlipRt", "RotRt", "FlipLft", "RotLft", "Spin"]
    RelationsList1 = ["AA","AB","AC","AD","AE","BA","BB","BC","BD","BE","CA","CB","CC","CD","CE","DA","DB","DC","DD","DE","EA","EB","EC","ED","EE","a","b","c","d","e"]
    RelationsList2 = ["","C","B","E","D","E","D","A","","C","D","E","","A","B","C","","E","B","A","B","A","D","C","","A","D","C","B","E"]
    LastInit = "InitTerry"
    Stay = StringElement("")
    FlipRt = StringElement("A")
    RotRt = StringElement("B")
    FlipLft = StringElement("C")
    RotLft = StringElement("D")
    Spin = StringElement("E")
    return GroupSet([Stay, FlipRt, RotRt, FlipLft, RotLft, Spin])
 
###################################################################################
##
##  Once the Gap group is defined, there are several ways for it to be displayed
##
###################################################################################
    
def ListRing():   # this will only be used for rings defined by InitRing
    if LastInit != "InitRing":
        print("Ring is not defined.")
        return None
    if GeneratorList == []:
        # Technically, this is the trivial ring
        return GroupSet([RingElement([])])
    if 0 in ModuloList:
        # Not a finite ring if one element has characteristic 0
        print("Ring is infinite.")
        return None
    # have a vector be the counter
    n = len(ModuloList)
    count = [0 for i in range(n)]
    L = []
    cont = True
    while cont:
        L.append(RingElement(count))
        # increment the vector
        i = 0
        count[i] = count[i] + 1
        while cont and (count[i] == ModuloList[i]):
            count[i] = 0
            i = i + 1
            if i < n:
                count[i] = count[i] + 1
            else:
                cont = False
    return GroupSet(L)
   
def Group(*args):
    if len(args) == 0:  # If no arguments, use all of the current generators.
        v = []
        for i in range(len(GeneratorList)):
            v.append(StringElement(chr(65+i)))
    else:
        v = []
        for arg in args:
             v.append(arg)
    gen = Uniquify(v) # removes duplicates
    grp = sorted(gen)   # sorts the list
    for g1 in grp: ## Note that the size of grp may increase in this loop!
        for g2 in gen:
            z = g1 * g2                  
            if not (z in grp):
                grp.append(z)
    return GroupSet(sorted(grp))       

def Ring(*args):
    if len(args) == 0:  # If no arguments, do the same thing as ListRing.
        return ListRing()
    v = []
    for arg in args:
        v.append(arg)
    gen = Uniquify(v) # removes duplicates
    g = sorted(gen)   # list that will keep growing
    repeat = True
    while repeat:
        repeat = False
        for g1 in gen: 
            for g2 in g: ## Note that the size may increase in this loop!
                z = g1*g2
                if not (z in g):
                    g.append(z)
                    repeat = True
                z = g1 + g2
                if not (z in g):
                    g.append(z)
                    repeat = True
    return GroupSet(sorted(g))
    
    
    
                               
##################################################################################################
##
##  Graphical display routines
##
################################################################################################ 

FilterCommas = false

#
#  This converts a GAP object (or similar object) to a string.  Spaces are removed, and "<identity>" is replaced with
#  the current value of IdentityElement.  Mainly this is used for multiplication tables, but it can also be used for circle graphs.
#

def ObjectToStr(obj):
    global FilterCommas
    ss = str(parent(obj))
    if isinstance(obj, (GapInstance, list)):  # might have <identity...> that needs to be converted
        ss = str(obj)
        ss = ConvertIdentity(ss)
        ss = ss.replace(" ","")   # Remove the spaces
        if (FilterCommas == true):
            ss = ss.replace(",","")   
    else:                         # Easy case: do a simple convertion
        ss = str(obj) 
        ss = ss.replace(" ","")   # Remove the spaces    
    return ss                     # TODO:  If obj is a list, it might be a list of Gap objects, or a list of list of Gap objects, etc.
    
def Add(x):
    L = ["Add"]
    L.append(x)
    return(L)

def Mult(x):
    L = ["LeftMult"]    
    L.append(x)
    return(L)

def LeftMult(x):
    L = ["LeftMult"]    
    L.append(x)
    return(L)
        
def RightMult(x):
    L = ["RightMult"]    
    L.append(x)
    return(L)
    
def Pow(x):
    L = ["Pow"]    
    L.append(x)
    return(L)
    
Inv = ["Inv"]    
    
def CircleGraph(V, *args): # each args will either be a permutation, an automorphism, or an ordered pair of the form [string, element]
    L = []                 # to complicate matters, there may have several arguments 
    if isinstance(V, GroupSet):
        ListV = V._List
    else:    
        TempList = list(V)   # Strings might be entered, in which case we have to evaluate the strings
        ListV = []           
        for item in TempList:
            if isinstance(item, str):
                ListV.append(eval(item))
            else:    
                ListV.append(item)    
    n = len(ListV)           
    for i in range(n):
       L.append(ObjectToStr(V[i]))   
    pos_dict = {} # set up the dots in a circle, going clockwise from the top
    for i in range(n):
        x = float(-cos(pi/2 + ((2*pi)/n)*i))
        y = float(sin(pi/2 + ((2*pi)/n)*i))
        pos_dict[L[i]] = [x,y]              
    g = DiGraph(loops = true, multiedges = true)
    # find the maximum length of the strings in L (at least 2)
    maxString = 2
    for i in range(n):
        if len(L[i])> maxString:
           maxString = len(L[i])
    question = false
    currentcolor = 4
    for op in args:
        edges_covered = []
        while len(edges_covered) < n:
            # find first element not already covered
            k = 0
            while k in edges_covered:
                k = k + 1
            currentpoint = ListV[k]
            while ((k > -1) and (not (k in edges_covered))):  # This must run at least once, since we searched for a point not in edges_covered
                currentpoint = ListV[k]
                edges_covered.append(k)
                # Find the next point, based upon the operation in op
                if isinstance(op, list):
                    if op[0] == "Add":
                        nextpoint = currentpoint + op[1]
                    elif op[0] == "LeftMult": 
                        nextpoint = currentpoint * op[1]
                    elif op[0] == "RightMult":    
                        nextpoint = op[1] * currentpoint
                    elif op[0] == "Pow":
                        nextpoint = currentpoint^(op[1])
                    elif op[0] == "Inv":
                        try:
                            nextpoint = currentpoint^(-1)
                        except ZeroDivisionError:
                            nextpoint = "?"    
                    else:    
                        nextpoint = currentpoint # Catches exceptions
                elif isinstance(op, (Cycle, Perm, FieldHomo)):
                    nextpoint = op(currentpoint)
                elif isinstance(op, Homomorph):
                    nextpoint = op(currentpoint) 
                else:        
                    # TODO: determine other types of operations that could happen
                    nextpoint = "?"
                # Find the position of the nextpoint in the list
                if (nextpoint in ListV):  #  Add this edge to the graph 
                    ll = ListV.index(nextpoint)
                    g.add_edge((L[k], L[ll], currentcolor))
                    k = ll
                else:
                    if(question == false):  # add a "?" to the position list
                        pos_dict["?"] = [0,0]
                        question = true
                    g.add_edge((L[k], "?", currentcolor))
                    k = -1  # get out of this while loop
                currentpoint = nextpoint
            if len(args) == 1:    # change the color after each cycle, only if there is only one function    
                currentcolor = currentcolor + 1
        currentcolor = currentcolor + 1  # update for each function       
        vertsize = 70*(maxString + 1)      
    return g.plot(pos = pos_dict, edge_colors = g._color_by_label(ColorTable), vertex_size = vertsize,  
                                                                                     xmin = -1.025, xmax = 1.025, ymin = -1.05, ymax = 1.0)

QuotientRing = false

def MultTable(v):
    Graff = Graphics()
    if isinstance(v, GroupSet):
        GG = v._List
    else:    
        GG = list(v)   
    n = len(GG)
    if(n > 28):
        return "Group too big to display table."
    L = []
    for i in range(n):
        L.append(ObjectToStr(GG[i]))   
    else: #defalt case - use multiplication
#        GFlat = []
#        if isinstance(GG[0], list):  # GG is a list of lists
#            GFlat = Flatten(GG)
        M = matrix(n+1)
        for i in range(n):
            for j in range(n):
                w = GG[j] * GG[i]
                if w in GG:
                    M[j+1, i+1] = GG.index(w)+1
                else:
                    # second chance - w might be a _subset_ of an element in GG
                    if isinstance(w, GroupSet):
                        for k in range(n):
                            if IsSubset(w._List, GG[k]):
                                if QuotientRing:
                                    M[j+1, i+1] = k + 1
                                else:
                                    M[j+1, i+1] = -(k + 1)
                                    Graff += text(w,(i+1.5, n-j-0.5), rgbcolor=(0,0,0))
                                break     
    Graff += line([(1,0),(1,n),(n+1,n)], rgbcolor=(0,0,0))
    # find the maximum length of the strings in L
    maxString = 0
    for i in range(n):
        if len(L[i])> maxString:
           maxString = len(L[i])
    for i in range(n):
        Graff += polygon([(i+1, n+1),(i+2, n+1),(i+2, n),(i+1, n)], color = ColorTable[i+1])
        Graff += polygon([(0, n-i),(1, n-i),(1, n-i-1),(0, n-i-1)], color = ColorTable[i+1])
        if (maxString*(n+1) < 55):
            Graff += text(L[i],(i+1.5, n+0.5), rgbcolor=(0,0,0))
            Graff += text(L[i],(0.5, n-i-0.5), rgbcolor=(0,0,0))
        else:
            Graff += text(L[i],(-0.01*(n+1),n-i-0.5), rgbcolor=(0,0,0), horizontal_alignment='right')   
    for i in range(n):    
        for j in range(n):
            p = M[j+1][i+1]
            Graff += polygon([(i+1, n-j),(i+2, n-j),(i+2, n-j-1),(i+1, n-j-1)], color = ColorTable[abs(p)])
            if ((p > 0) and (maxString*(n+1) < 55)):
               Graff += text(L[p-1],(i+1.5, n-j-0.5), rgbcolor=(0,0,0))
    if (n > 7) or (maxString*(n+1) > 40):
        return Graff.show(axes = false, figsize=[5,5])
    return Graff.show(axes = false)
    
def AddTable(v):
    Graff = Graphics()
    if isinstance(v, GroupSet):
        GG = v._List
    else:   
        GG = list(v)  
    n = len(GG)
    if(n > 28):
        return "Ring too big to display table."
    L = []
    for i in range(n):
        L.append(ObjectToStr(GG[i])) 
    M = matrix(n+1)
    for i in range(n):
        for j in range(n):
            w = GG[i] + GG[j]
            if w in v:
                M[i+1, j+1] = GG.index(w)+1
    Graff += line([(1,0),(1,n),(n+1,n)], rgbcolor=(0,0,0))
    # find the maximum length of the strings in L
    maxString = 0
    for i in range(n):
        if len(L[i])> maxString:
           maxString = len(L[i])
    for i in range(n):
        Graff += polygon([(i+1, n+1),(i+2, n+1),(i+2, n),(i+1, n)], color = ColorTable[i+1])
        Graff += polygon([(0, n-i),(1, n-i),(1, n-i-1),(0, n-i-1)], color = ColorTable[i+1])
        if (maxString*(n+1) < 55):
            Graff += text(L[i],(i+1.5, n+0.5), rgbcolor=(0,0,0))
            Graff += text(L[i],(0.5, n-i-0.5), rgbcolor=(0,0,0))
        else:
            Graff += text(L[i],(-0.01*(n+1),n-i-0.5), rgbcolor=(0,0,0), horizontal_alignment='right')   
    for i in range(n):    
        for j in range(n):
            p = int(M[j+1][i+1]) # note: have to convert the GAP integer to a sage integer
            Graff += polygon([(i+1, n-j),(i+2, n-j),(i+2, n-j-1),(i+1, n-j-1)], color = ColorTable[p])
            if ((p > 0) and (maxString*(n+1) < 64)):
               Graff += text(L[p-1],(i+1.5, n-j-0.5), rgbcolor=(0,0,0))
    if (n > 7) or (maxString*(n+1) > 40):
        return Graff.show(axes = false, figsize=[5,5])
    return Graff.show(axes = false)
        

def GraphHomo(fun):
    global maxString
    global Lrange
    global Ldomain
    global pos_dict
    # This graphs the function, using the notation given in the list domain.    
    domain = fun.GetDomain() 
    fRange = fun.GetRange()  
    # Convert domain and range to strings
    m = len(domain)
    n = len(fRange)
    Ldomain = []
    Lrange = []
    for i in range(m):
        Ldomain.append(ObjectToStr(domain[i]))  
    for i in range(n):
        Lrange.append(ObjectToStr(fRange[i])) 
    graff = Graphics()     
    for domnum in range(m):      
        key = domain[domnum]
        rannum = fRange.index(fun.Out[fun.In.index(key)]) 
        if m == 1:
            x = 0.5
        else:
            x =  1 - (N(domnum)/(m-1))    
        if n == 1:
            y = 0.5
        else:
            y =  1 - (N(rannum)/(n-1))    
        graff += arrow((0,x), (1,y), color = ColorTable[4+rannum])
    if m == 1:
        graff += point((0, 0.5), rgbcolor = (0,0,0), size = 50)
        graff += text(Ldomain[0],(-0.02, 0.5), rgbcolor=(0,0,0), horizontal_alignment='right') 
    else:   
        for i in range(m):
            y = 1 - (N(i)/(m-1))
            graff += point((0, y), rgbcolor = (0,0,0), size = 50)
            graff += text(Ldomain[i],(-0.02, y), rgbcolor=(0,0,0), horizontal_alignment='right') 
    if n == 1:
        graff += point((1, 0.5), rgbcolor = (0,0,0), size = 50)
        graff += text(Lrange[0],(1.02, 0.5), rgbcolor=(0,0,0), horizontal_alignment='left') 
    else:   
        for i in range(n):
            y = 1 - (N(i)/(n-1))
            graff+= point((1, y), rgbcolor = (0,0,0), size = 50)   
            graff += text(Lrange[i],(1.02, y), rgbcolor=(0,0,0), horizontal_alignment='left')   
    return graff.show(axes = false)       
 
#######################################################################################
##
##   RSA routines
##
#######################################################################################    
 
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
 
######################################################################################       
   
def C(*args):      
    L = [];
    for arg in args:  # Convert args to a list, which will support indexing
        L.append(arg)
    return Cycle(L)   

def P(*args):      
    L = [];
    for arg in args:  # Convert args to a list, which will support indexing
        L.append(arg)
    return Perm(L)

def Order(x):
    if isinstance(x, SumModN):
        return x._mod/GCD(x._x, x._mod)    
    else:
        # since we do not know what type of element it is, we do not know the identity element.
        # Our strategy is to find an n > 1 for which x^n = x, and return n-1.
        y = x*x
        n = 1
        while x != y:
           y = y * x
           n = n + 1
        return n              
            
def RootCount(G, k):
    # Counts the number of elements for which g^k = e.
    count = 0;
    for x in G:
       t = x
       for i in range(k):
          t = t*x
       if t == x:
          count = count + 1   
    return count      
            
def Generators(G):
    # finds all of the generators of the group, assuming it is cyclic.
    L = [];
    n = len(G)   
    for x in G:
        if (Order(x) == n):
            L.append(x)
    return L                     
     
def NumberSmallRings(size):
    # Currently, the maximum is 15, but this could change in the future.
    if size < 1:
        print("Input must be a positive integer")
        return None
    try:    
        n = gap.eval("NumberSmallRings(" + str(size) + ")")
    except:
        print("The library of rings of size", size, "is not available.")
        return 0
    return int(n)

def SmallRing(size, idnum):
    # We will set up the ring in GAP, and then convert it to Python.
    global LastInit
    global GeneratorList
    global ModuloList
    global RingDefArray
    if size < 1 or idnum < 1:
        print("Inputs must be a positive integers")
        return None
    n = NumberSmallRings(size)
    if n == 0:
        print("The library of rings of size", size, "is not available.")
        return None
    if idnum > n:
        print("There are only", n, "rings of size", size)
        return None
    gap.eval("R := SmallRing(" + str(size) + "," + str(idnum) + ")")
    R = gap('R')
    n = len(R.GeneratorsOfRing())
    # Make an array that will allow direct access to the ring elements
    L = [R.1]
    if n > 1:
        L.append(R.2)
    if n > 2:
        L.append(R.3)
    if n > 3:
        L.append(R.4) #Even if they one day extend the library, they will not exceed 4 generators
    LastInit = "InitRing"
    # Do the equivalent of AddRingVar
    GeneratorList = []
    for i in range(n):
        GeneratorList.append(str(L[i]))
    for i in range(n):
        v = [0 for j in range(n)]
        v[i] = 1
        tmpstr="global "+GeneratorList[i]+"; "+GeneratorList[i]+" = RingElement("+str(v)+")"
        exec(tmpstr)
    # Find the orders of the elements
    ModuloList = []
    for i in range(n):
        j = 1
        while j*L[i] != 0*L[i]: #Order is guaranteed to be finite
            j = j+1
        ModuloList.append(j)
    # Create the defining array
    RingDefArray = [[0 for i in range(n)] for j in range(n)]
    for i in range(n):
        for j in range(n):
            RingDefArray[i][j] = eval(str(L[i]*L[j]))._x
    return ListRing()
            
def LftCoset(G_list, H_list):   
    # both G and H must be lists or Cosets for this to work
    # if they are lists, convert to Cosets (which will remove wrappers if present)
    # We can assume that H is a subgroup of G
    # Note:  The cosets in the output MUST be sorted in order to allow for MultTable to work
    if isinstance(G_list, list):
        G_coset = GroupSet(G_list)
    else:
        G_coset = G_list
    if isinstance(H_list, list):
        H_coset = GroupSet(H_list)
    else:
        H_coset = H_list        
    if not (isinstance(G_coset, GroupSet) and isinstance(H_coset, GroupSet)):
        return "Error: both parameters must be lists or subgroups" 
    H_coset.Sort() 
    # We can save a little time by starting with the original subgroup H   
    q = [H_coset]
    flat = H_coset._List
    for g in G_coset:
        if not(g in flat):
            newCoset = GroupSet([g]) * H_coset
            q.append(newCoset)  
            flat = Flatten(q)
    return GroupSet(q)       
 
def RtCoset(G_list, H_list):   
    # both G and H must be lists or GroupSets for this to work
    # if they are lists, convert to GroupSets (which will remove wrappers if present)
    # We can assume that H is a subgroup of G
    # Note:  The cosets in the output MUST be sorted in order to allow for MultTable to work
    if isinstance(G_list, list):
        G_coset = GroupSet(G_list)
    else:
        G_coset = G_list
    if isinstance(H_list, list):
        H_coset = GroupSet(H_list)
    else:
        H_coset = H_list        
    if not (isinstance(G_coset, GroupSet) and isinstance(H_coset, GroupSet)):
        return "Error: both parameters must be lists or subgroups" 
    H_coset.Sort()
    # We can save a little time by starting with the original subgroup H   
    q = [H_coset]
    flat = H_coset._List
    for g in G_coset:
        if not(g in flat):
            newCoset = H_coset * GroupSet([g])
            q.append(newCoset)  
            flat = Flatten(q)
    return GroupSet(q)  
 
def Coset(R_list, H_list):   
    # both R and H must be lists or GroupSets for this to work
    # if they are lists, convert to GroupSets (which will remove wrappers if present)
    # We can assume that H is a subring of R
    # Note:  The cosets in the output MUST be sorted in order to allow for MultTable to work
    if isinstance(R_list, list):
        R_coset = GroupSet(R_list)
    else:
        R_coset = R_list
    if isinstance(H_list, list):
        H_coset = GroupSet(H_list)
    else:
        H_coset = H_list        
    if not (isinstance(R_coset, GroupSet) and isinstance(H_coset, GroupSet)):
        return "Error: both parameters must be lists or subrings" 
    H_coset.Sort() 
    # We can save a little time by starting with the original subgroup H   
    q = [H_coset]
    flat = H_coset._List
    for g in R_coset:
        if not(g in flat):
            newCoset = GroupSet([g]) + H_coset
            q.append(newCoset)  
            flat = Flatten(q)
    return GroupSet(q)        
        
def RingHomo(domain, target):
    funct = Homomorph(domain, target)
    funct.IsRing = True
    return funct        
                
def HomoDef(Fun, input, output):
    if isinstance(Fun, FieldHomo): # this case, there is nothing to check
        Fun.Set(input, output)
    elif isinstance(Fun, Homomorph):    
        ## we have to remove the wrappers from input and output
        ## Also, if input or output is a list, convert to a GroupSet - either domain or target is a quotient group.
        inputx = input
        if isinstance(input, list):
            inputx = GroupSet(input)   
        outputx = output  
        if isinstance(output, list):
            outputx = GroupSet(output)     
        elif not(inputx in Fun.Domain):
            print("Second argument must be in the domain group.") 
        elif not(outputx in Fun.Target):
            print("Last argument must be in the target group.")
        else:    
            Fun.Set(inputx, outputx)       
    else:
        print("First argument must be a homomorphism.")
        
def FinishHomo(Fun):
    return Fun.Finish()   

def CheckHomo(Fun):
    return Fun.Finish()     
    
def Image(Fun, L):
    # L might be a GroupSet, a list, or a single element.  
    # If it is a GroupSet, we can safely assume that we want the corresponding list.
    # If it is a list, then we must strip the GapElement wrappers.
    if isinstance(L, list):
        LL = L
    elif isinstance(L, GroupSet):
        LL = L._List  
    else:    
        return Fun(L)
    R = []
    for g1 in LL:
        z = Fun.Out[Fun.In.index(g1)]
        if not z in R:
            R.append(z)
    return GroupSet(sorted(R))

def HomoInv(Fun, L):
    # L might be a GroupSet, a list, or a single element.  
    # If it is a GroupSet, we can safely assume that we want the corresponding list.
    # If it is a list, then we must strip the GapElement wrappers.
    if isinstance(L, list):
        LL = L
    elif isinstance(L, GroupSet):
        LL = L._List    
    else:    
        LL = [L] 
    return GroupSet(Fun.Inv(LL))

def HomoRange(Fun):
    return Fun.GetRange()
    
def Kernel(Fun):
    R = Fun.Target
    if Fun.IsRing:
        Q = [R[0] + (-R[0])]
    else:    
        Q = [R[0]^0]                   
    return GroupSet(Fun.Inv(Q))        
           
def CycleToPerm(Cyc):
    if isinstance(Cyc, Cycle):
        return Cyc.ToPerm()
    else:
        return NotImplemented    

def PermToCycle(P_Perm):
    if isinstance(P_Perm, Perm):
        return P_Perm.ToCycle()
    else:
        return NotImplemented  
  
def PermToInt(P_Perm):
    if isinstance(P_Perm, Perm):
        return P_Perm.ToInt()
    else:
        return NotImplemented  
      
def Signature(C_Cycle):
    if isinstance(C_Cycle, Cycle):
        count = 1
        for item in C_Cycle._C:
            if len(item) %2 == 0:
                count = - count
        return count
    elif isinstance(C_Cycle, Perm):
        return Signature(C_Cycle.ToCycle()) # Probably a faster way to do this, but this will work.
    else:
        return NotImplemented
        
def Unfactorial(n_int):
    # returns the smallest number for which i! >= n
    index = 0
    Temp = 1
    while Temp < n_int:
        index = index + 1
        Temp = Temp * index
    return index
   
def NthPerm(n_int):
   global Temp
   global digit
   if n_int <= 0:
       return "Argument must be a positive integer"
   u = Unfactorial(n_int)
   Temp = list(range(u,0,-1)) # goes from [u, u-1, u-2, ... , 1]
   S = []
   for k in range(u, 0, -1):
       digit = (((n_int-1) % factorial(k)) // factorial(k-1))
       S.append(Temp[digit])
       del Temp[digit]
   S.reverse()
   return Perm(S)
    
        
def DirectProduct(HList, KList):
    if isinstance(HList, (list, GroupSet)) and isinstance(KList, (list, GroupSet)):
        L  = []
        for i in HList:
            for j in KList:
                L.append(Twople(i,j))
        return GroupSet(L)
    else:
        return NotImplemented   
        
def GroupCenter(Glist):
    # This finds the elements of Glist that commute with all of the elements of Glist
    # If Glist is a group or subgroup, the result we automatically be a subgroup.
    # We will keep order of the elements the same as the order in Glist
    # Glist might either be a GroupSet or a list.  If it is a list, we may have to unwrap the elements.
    if isinstance(Glist, GroupSet):
        G = Glist
    else:
        G = GroupSet(Glist)
    g = []
    for i in G._List:
        include = true
        for j in G._List:
            if (i*j) != (j*i):
                include = false # i is not in the center
                break
        if include:
            g.append(i)
    return GroupSet(g)
   
def Normalizer(Glist, Hlist):
    # This finds the elements of Glist for which g.h.g^-1 is in Hlist for all h in Hlist.
    # If Glist is a group or subgroup, the result we automatically be a subgroup.
    # We will keep order of the elements the same as the order in Glist
    # Glist might either be a GroupSet or a list.  If it is a list, we may have to unwrap the elements.
    if isinstance(Glist, GroupSet):
        G = Glist
    else:
        G = GroupSet(Glist)
    if isinstance(Hlist, GroupSet):
        H = Hlist
    elif isinstance(Hlist, list):  
        H = GroupSet(Hlist)
    else:
        H = GroupSet([Hlist]) # in case H is a single element  
    answer = []
    for g in G._List:
        include = true
        for h in H._List:
            if not((g * h) * g^(-1) in H._List):
                include = false # i is not in the normalizer
                break
        if include:
            answer.append(g)
    return GroupSet(answer)

def NormalClosure(Glist, Slist):
    # This finds the smallest normal subgroup of Glist that contains the elements of Slist.  
    if isinstance(Glist, GroupSet):
        G = Glist
    else:
        G = GroupSet(Glist)
    if isinstance(Slist, GroupSet):
        S = Slist
    elif isinstance(Slist, list):  
        S = GroupSet(Slist)
    else:
        S = GroupSet([Slist]) # in case S is a single element 
    # if the elements are GAP elements, deligate the take to GAP 
    if isinstance(G._List[0], GapInstance):
        Ggap = gap(G._List)
        Ggap.OriginalGroup()  
        Sgap = gap(S._List)
        Ngap = Sgap.NormClosure()
        return GroupSet(list(Ngap)) 
    # find all conjugates of the elements in S
    gen = []
    n = len(G._List) # size of original group
    for g in G._List:
        for h in S._List:
            u = (g * h) * g^(-1)
            if not(u in gen):
                gen.append(u)
    # gen is now the set of generators for the group
    grp = copy(gen) 
    for g1 in grp:
        for g2 in gen:
            u = g1 * g2                  
            if not (u in grp):
                grp.append(u)
                if len(grp)*2 > n:
                    return G
    return GroupSet(sorted(grp)) # TODO: determine sorting algorithm       

def Ideal(Rlist, Slist):
    # This finds the smallest ideal of Rlist that contains the elements of Slist.  
    if isinstance(Rlist, GroupSet):
        R = Rlist
    else:
        R = GroupSet(Rlist)
    if isinstance(Slist, GroupSet):
        S = Slist
    elif isinstance(Slist, list):  
        S = GroupSet(Slist)
    else:
        S = GroupSet([Slist]) # in case S is a single element 
    # first find the union of S, R.S, S.R, and R.S.R
    gen = (R * S) * R
    genlist = gen._List
    for item in S:
        if not(item in genlist):
            genlist.append(item)
    T = R * S
    for item in T:
        if not(item in genlist):
            genlist.append(item)
    T = S * R
    for item in T:
        if not(item in genlist):
            genlist.append(item)      
    n = len(R._List) # size of original ring
    # gen is now the set of additive generators for the ideal
    id = copy(genlist) 
    for g1 in id:
        for g2 in gen:
            u = g1 + g2                  
            if not (u in id):
                id.append(u)
                if len(id)*2 > n:
                    return R
    return GroupSet(sorted(id)) # TODO: determine sorting algorithm  
    
def ConjugacyClasses(Glist):
    # This finds the conjugacy classes of the group in Glist.
    if isinstance(Glist, GroupSet):
        G = Glist
    else:
        G = GroupSet(Glist)    
    # If the elements are Gap elements, delegate the task to Gap.
    if isinstance(G._List[0], GapInstance):
        Ggap = gap(G._List)
        LL = Ggap.ConjClasses() # will produce a list of lists, in Gap
        L = list(LL)
        CC = []
        for item in L:
            CC.append(GroupSet(list(item)))
        return CC
    CC = []
    FlatC = []    
    for g in G._List:
        if not(g in FlatC):
            Class = []
            for h in G._List:
                u = (h * g) * h^(-1)
                if not(u in Class):
                   Class.append(u)
            Class.sort()
            CC.append(GroupSet(Class))
            FlatC = Flatten(CC)
    return GroupSet(CC)               
                
# This command assumes that both HList and KList are subgroups of some larger group.  
# If one of the groups is a subgroup of the other, Commutator is faster.                
def MutualCommutator(HList, KList):
    if isinstance(HList, GroupSet):
        H = HList
    else:
        H = GroupSet(HList)
    if isinstance(KList, GroupSet):
        K = KList
    else:
        K = GroupSet(KList)
    #If the elements are in GAP, delegate the job to GAP 
    if isinstance(H._List[0], GapInstance) and isinstance(K._List[0], GapInstance):
        Hgap = gap(H._List)
        Hgap.OriginalGroup() 
        Kgap = gap(K._List)
        Agap = Kgap.CommSubgroup()
        return GroupSet(list(Agap))
    gen = []
    for h in H._List:
        for k in K._List:
            u = (h^(-1) * k^(-1)) * (h * k) 
            if not(u in gen):
                gen.append(u)
    grp = copy(gen)  
    for g1 in grp:
        for g2 in gen:
            z = g1 * g2                  
            if not (z in grp):
                grp.append(z)
    return GroupSet(sorted(grp))  
 
# This command assumes that KList is a subset of GList.  
# If K generates the group G, then this gives the derived group G'               
def Commutator(GList, KList):
    if isinstance(GList, GroupSet):
        G = GList
    else:
        G = GroupSet(GList)
    if isinstance(KList, GroupSet):
        K = KList
    else:
        K = GroupSet(KList)
    #If the elements are in GAP, delegate the job to GAP 
    if isinstance(G._List[0], GapInstance):
        Ggap = gap(G._List)
        Ggap.OriginalGroup() 
        Kgap = gap(K._List)
        Agap = Kgap.CommSubgroup()
        return GroupSet(list(Agap))
    n = len(G._List)    
    gen = []
    for h in G._List:
        for k in K._List:
            u = (h^(-1) * k^(-1)) * (h * k) 
            if not(u in gen):
                gen.append(u)         
    grp = copy(gen)  
    for g1 in grp:
        for g2 in gen:
            z = g1 * g2                  
            if not (z in grp):
                grp.append(z)
                if len(grp)*2 > n:
                    # over half the elements, return original list
                    return G
    return GroupSet(sorted(grp))  
 
def ExpressAsWord(genList, target):
    # This routine interfaces with GAP, to find the shortest way of expressing a target permutation in terms of a list of permutations.
    # genList must be a list of strings, each of which represents the variable that a permutation has been defined.
    # target is the permutation that must be reached.
    #
    # There is a twist.  GAP interprets permutations multiplied from left to right, assuming (fog)(x) = g(f(x)).
    # If we multiply permutations from right to left (assuming (fog)(x) = f(g(x)) ), then we have to invert all of the input and output
    # permutations to compensate.  
    #
    # First we evaluate the strings in genList to find the permutations.
    permList = []
    for item in genList:
        perm = eval(item)
        if isinstance(perm, Perm):
            perm = PermToCycle(perm)
        ## Take the inverse of the permutation to compensate GAP.
        perm = perm^-1    
        permList.append(perm)    
    tmpstr = "Perms := Group(" + str(permList[0])
    for i in range(1, len(genList)):
        tmpstr = tmpstr + ", " + str(permList[i])
    tmpstr = tmpstr + ")"
    gap.eval(tmpstr)
    #print(tmpstr)
    tmpstr = 'phi := EpimorphismFromFreeGroup(Perms:names:=["' + genList[0] + '"'
    for i in range(1, len(genList)):
        tmpstr = tmpstr + ', "' + genList[i] + '"'
    tmpstr = tmpstr + "])"
    gap.eval(tmpstr)
    #print(tmpstr)
    if isinstance(target, Perm):
        tar = PermToCycle(target)
    else:
        tar = target
    ## Take the inverse of the target to compensate GAP.
    tar = tar^-1    
    tmpstr = "PreImagesRepresentative( phi," + str(tar) + ")"
    outstr = gap.eval(tmpstr)
    #print(tmpstr)
    return outstr    

#TODO Find a way to have a polynomial over a general ring
#def AddRingVar(str):
#    # str is a string which will be the name of the variable.
#    tmpstr = str + ' := Indeterminate(CurrentRing, "' + str + '")'
#    gap.eval(tmpstr)
#    tmpstr = "global " + str + "; " + str + ' = GapElement(gap("' + str + '"))'
#    exec(tmpstr)
#    return None

GenList = []
DegreeList = []

def InitDomain(arg1, *args):
    global LastInit
    global UnivFieldVar
    global BaseCharacteristic
    global CurrentField
    global GenList
    global DegreeList
    GenList = []
    DegreeList = []
    # if there is one argument, it must be an integer, 0 or positive prime.
    # if there are two arguments, the second one must be a string, giving a name of the universal variable.
    if not(isinstance(arg1, (int, IntType))):
        return "First argument must be an integer."
    if (arg1 < 0):
        return "First argument must be positive."
    if (arg1 > 0) and not(arg1 in Primes()):
        return str(arg1) + " is not prime."
    if arg1 == 0:
        CurrentField = QQ
    else:
        CurrentField = GF(arg1)
    BaseCharacteristic = arg1    
    LastInit = "InitDomain"
    if len(args) == 0:
        UnivFieldVar = ""
        return None # we are done
    UnivFieldVar = args[0]
    tmpstr = "global " + UnivFieldVar + '; TempDomain = CurrentField["' + UnivFieldVar + '"]; ' + UnivFieldVar + " = TempDomain._first_ngens(1)[0]"
    exec(tmpstr)
    return None
       
def AddFieldVar(str):
    if (BaseCharacteristic > 0) and (len(GenList) > 1):
        if DegreeList[0] > 0:
            return "Sage is unable to define a variable on an extension of an extension of a finite field."
    global LastFieldVar
    LastFieldVar = str
    tmpstr = "global " + str + '; TempDomain = CurrentField["' + str + '"]; ' + str + " = TempDomain._first_ngens(1)[0]"
    exec(tmpstr)   
    return None
    
def RationalFunctions(str):
    global GenList
    global DegreeList
    tmpstr = "global " + str + "; global CurrentField; CurrentField = FunctionField(CurrentField, names = ('" + str + "',)); "
    tmpstr = tmpstr + str + " = CurrentField._first_ngens(1)[0]"
    exec(tmpstr)
    GenList.append(str)
    DegreeList.append(0)
    
def ListField():
    if BaseCharacteristic == 0:
        return "Field is infinite!"
    if len(GenList) == 2:  # in this case, list will not work.  Use a less efficient method.
        return Ring(GenList[0], GenList[1])    
    if len(GenList) == 1 and DegreeList[0] == 0: 
        return "Field is infinite!"   
    return GroupSet(sorted(list(CurrentField)))
    
def Compon(exp, L_List):
    inp = copy(exp)
    out = []
    for item in L_List:
        a = inp.coefficient(item)
        inp = expand(inp - a*item)
        out.append(a)
    out.append(inp)
    return out    
   
def Vectorize(exp):
    try:
        L = vector(exp) 
    except: # not a vector - we are at the lowest level.
        return exp   
    output = []
    for item in L:
        if isinstance(item, (Rational, IntModType, int, IntType)):
            output.append(item)
        else:    
            output.append(Vectorize(item))
    return Flatten(output)    
                                               
def InterpolationPolynomial( pointsList, varname):
    Rpolyring = PolynomialRing(CurrentField, varname)
    return Rpolyring.lagrange_polynomial(pointsList)                            
            
def Cyclotomic(n, str):
    TempR = QQ[str]
    return TempR.cyclotomic_polynomial(n)
            
def ToBasis(*args):
    if (len(args) == 0 or len(args) > 2):
        print("One or two arguments are required")
        return None
    if len(args) == 1:
        B = Basis(args[0])
    else:
        B = Basis(args[0], args[1])
    if not (B._worked):
        print("Error: linearly dependent.")
        return None
    else:
        print("Sucessful mapping constructed.")
        return B    
 
def Coefficients(Bas, value):
    if isinstance(Bas, Basis):
        return Bas.Coeff(value)
    print("First argument must be a basis set by ToBasis.")
    return None            
            
def SimpleExtension(arg1, arg2):
    # finds a single element so that Q(w) = Q(arg1, arg2)
    # Note that Sage has several ways of computing this w, but
    # we want to be consistent with the textbook, and return
    # arg1 + n*arg2 for the smallest positive n that works.
    if BaseCharacteristic > 0:
        print("Algorithm does not work on finite fields.")
        return None
    w = arg1 + arg2
    v = Vectorize(w)
    n = len(v)
    cont = true
    while cont:
        v = Vectorize(w)
        n = len(v)
        B = [w^i for i in range(n)]
        NB = Basis(B)
        if NB._worked:
            cont = false
        else:
            w = w + arg2 # try again with a different w
    return w    
    
                 
            
print("Initialization Done")
