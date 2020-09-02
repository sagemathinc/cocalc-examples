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
##  Last Updated:  08/29/2020                        ##
##                                                   ##
#######################################################

## First of all, we need to see that the Small Groups package is loaded with Sage.  It is not automatically loaded when Sage is installed, so
## we probably have to load it the first time this package is run.  

try:
   gap.eval("SmallGroup(1,1)")
except:   
   print("Additional databases must be downloaded from the internet.  Please wait.")
   try:
       install_package('database_gap')
   except:
       print("Error in installing database_gap.")
       print("For Linux users, this will have to be installed manually.  Type:")
       print("    sudo sage -i database_gap")
       print("in the terminal window.")
   else:    
       print("These new databases will be available the next time Sage is started.")


######################################################
##                                                  ##
##  GAP routines                                    ##
##                                                  ##
## These routines are written in GAP, not Sage.     ##
## They are evaluated using gap.eval( ), in order   ##
## that we may use these routines later.            ##
##                                                  ##
######################################################

gap.eval("TempFreeGroup := FreeGroup(0);")
gap.eval("CurrentGroup := TempFreeGroup/[];")
gap.eval("CurrentPCGroup := TempFreeGroup/[];")

gap.eval("ITER_POLY_WARN := false;");  # So we can define polynomials over a ring without a warning message.

# These functions will be introduced later, but to prevent 
# "Variable must have a value" errors, we set them to 0 here
gap.eval("Mult := 0")
gap.eval("AddC := 0")
gap.eval("PermToInt := 0")

gap.eval("QuickTable := function(L) " +
            "local i, j, k, LL, G, n, R, M, p; " +
            "LL := List(L); " +
            "G := Flat(LL); " + # find the base group
            "n := Size(LL); " +
            "M := NullMat(n,n); " + # matrix of zeros, mutable
            "for i in [1..n] do " +
               "for j in [1..n] do " +
                  "if IsList(LL[i]) then " +
                     "p := Mult(G,LL[i],LL[j]); " + # Multiply two cosets
                  "else " +
                     "p := LL[i]*LL[j]; " +
                  "fi; " +
                  "for k in [1..n] do " +
                     "if IsList(p) then " +
                        "if( Set(p) = Set(LL[k]) ) then " +
                           "M[i][j] := k; " +
                           "break; " +
                        "fi; " +
                     "elif (p = LL[k]) then " +
                        "M[i][j] := k; " +
                        "break; " +
                     "fi; " +
                  "od; " +
               "od; " +
             "od; " +
             "return M; " +
          "end;")

gap.eval("QuickAdd := function(L) " +
            "local i, j, k, LL, G, n, R, M, p; " +
            "LL := List(L); " +
            "G := Flat(LL); " + # find the base group
            "n := Size(LL); " +
            "M := NullMat(n,n); " + # matrix of zeros, mutable
            "for i in [1..n] do " +
               "for j in [1..n] do " +
                  "if IsList(LL[i]) then " +
                     "p := AddC(G,LL[i],LL[j]); " + # Add two cosets
                  "else " +
                     "p := LL[i] + LL[j]; " +
                  "fi; " +
                  "for k in [1..n] do " +
                     "if IsList(p) then " +
                        "if( Set(p) = Set(LL[k]) ) then " +
                           "M[i][j] := k; " +
                           "break; " +
                        "fi; " +
                     "elif (p = LL[k]) then " +
                        "M[i][j] := k; " +
                        "break; " +
                     "fi; " +
                  "od; " +
               "od; " +
            "od; " +
            "return M; " +
         "end;")

gap.eval("ListGroup := function(g) " +
            "local L, Ord, n, iList, pointer, Cont, GList, ele; " +
            "if (IsGroup(g) = false) then " +
               'Print("Not a group\n"); ' +
               "return fail; " +
            "fi; " +
            "if (Size(g) = infinity) then " +
               'Print("Infinite group\n"); ' +
               "return fail; " +
            "fi; " +
            "L := GeneratorsOfGroup(g); " +
            "Ord := List(L, x->Order(x)); " +
             # do a arbitrarily nested for loop
            "n := Size(L); " +
            "GList := [ ]; " +
            "iList := List([1..n],x->0); " + # Vector of zeros, of length n 
            "Cont := true; " +
            "while Cont do " +
               "ele := Product([1..n],x->L[x]^iList[x]); " +
               "if not (ele in GList) then " +
                  "Add(GList,ele); " +
               "fi; " +
                # increment the iList
               "pointer := 1; " +
               "iList[pointer] := iList[pointer] + 1; " +
               "while (iList[pointer] >= Ord[pointer]) do " +
                  "iList[pointer] := 0; " +
                  "pointer := pointer + 1; " +
                  "if (pointer > n) then " +
                     "Cont := false; " +
                     "pointer := 1; " +
                  "fi; " +
                  "iList[pointer] := iList[pointer] + 1; " +
               "od; " +
            "od; " +
            "return GList; " +
         "end;")

gap.eval("ListRing := function(g) " +
            "local L, Ord, n, iList, pointer, Cont, GList, ele; " +
            "if (IsRing(g) = false) then " +
               'Print("Not a ring\n"); ' +
               "return fail; " +
            "fi; " +
            "if (Size(g) = infinity) then " +
               'Print("Infinite ring\n"); ' +
               "return fail; " +
            "fi; " +
            "L := GeneratorsOfRing(g); " +
            "Ord := List(L, x->Size(Ring(x))); " +
             # do a arbitrarily nested for loop 
            "n := Size(L); " +
            "GList := [ ]; " +
            "iList := List([1..n],x->0); " + # Vector of zeros, of length n
            "Cont := true; " +
            "while Cont do " +
               "ele := Sum([1..n],x->iList[x]*L[x]); " +
               "if not (ele in GList) then " +
                  "Add(GList,ele); " +
               "fi; " +
                # increment the iList
               "pointer := 1; " +
               "iList[pointer] := iList[pointer] + 1; " +
               "while (iList[pointer] >= Ord[pointer]) do " +
                  "iList[pointer] := 0; " +
                  "pointer := pointer + 1; " +
                  "if (pointer > n) then " +
                     "Cont := false; " +
                     "pointer := 1; " +
                  "fi; " +
                  "iList[pointer] := iList[pointer] + 1; " +
               "od; " +
            "od; " +
            "return GList; " +
         "end;")

gap.eval("CheckRing := function(R) " +
            "local i,j,k,T,L; " +
            "if Size(R) = infinity then " +
               "L := GeneratorsOfRing(R); " +
            "else " +
               "L := List(R); " +
            "fi; " +
            "T := true; " +
            "for i in L do " +
               "for j in L do " +
                  "for k in L do " +
                     "if ( (i+j)*k <> (i*k) + (j*k)) then " +
                        "T := false; " +
                     "fi; " +
                  "od; " +
               "od; " +
            "od; " +
            "if (not T) then " +
               'return "Ring is not left distributive."; ' +
            "else " +
               "for i in L do " +
                  "for j in L do " +
                     "for k in L do " +
                        "if ( i*(j+k) <> (i*j) + (i*k)) then " +
                           "T := false; " +
                        "fi; " +
                     "od; " +
                  "od; " +
               "od; " +
               "if (not T) then " +
                  'return "Ring is not right distributive."; ' +
               "else " +
                  "for i in L do " +
                     "for j in L do " +
                        "for k in L do " +
                           "if ( (i*j)*k <> i*(j*k) ) then " +
                              "T := false; " +
                           "fi; " +
                        "od; " +
                     "od; " +
                  "od; " +
                  "if T then " +
                      'return "This is a ring."; ' +
                  "else " +
                      'return "Associative law does not hold."; ' +
                  "fi; " +
               "fi; " +
            "fi; " +
         "end;")    

gap.eval("Mult := function( G, H, Y ) " +
            "local GG, XX, YY, i, j, FlatG, SizeG, p, base, k, L; " +
             # Find the base group 
            "GG := List(G); " +
            "FlatG := Flat(GG); " +
             # Determine the operation
            "SizeG := Size(FlatG); " +
             # base = 0 means G is a group, base > 0 means multiply mod base,
             # base < 0 means add mod base.
            "base := 0; " +
            "if (Number(FlatG, IsInt) = SizeG) then " +
               "base := Maximum(FlatG) + 1; " +
               "if (0 in FlatG) then " +
                  "base := -base; " +
               "fi; " +
            "fi; " +
            "L := []; " +
            "if (IsList(H) or IsGroup(H) or IsRing(H)) then " +
               "XX := List(H); " +
            "else " +
               "XX := [H]; " +
            "fi; " +
            "if (IsList(Y) or IsGroup(Y) or IsRing(Y)) then " +
               "YY := List(Y); " +
            "else " +
               "YY := [Y]; " +
            "fi; " +
             # assume first that XX and YY are simple lists. " +
            "for i in [1..Size(XX)] do " +
               "for j in [1..Size(YY)] do " +
                  "if(IsList(XX[i]) or IsList(YY[j]) ) then " +
                     "Add(L, Mult(FlatG, XX[i], YY[j])); " + # recursively defined for sets of sets
                  "else " +
                      # find the product p " +
                     "if (base > 0) then " +
                        "p := (XX[i] * YY[j]) mod base; " +
                     "elif (base < 0) then " +
                        "p := (XX[i] + YY[j]) mod (- base); " +
                     "else " +
                        "p := XX[i]*YY[j]; " +
                     "fi; " +
                     "for k in [1..Size(GG)] do " +
                        "if (p = GG[k]) then " +
                           "Add(L, GG[k]); " +
                           "break; " +
                        "fi; " +
                     "od; " +
                  "fi; " +
               "od; " +
            "od; " +
            "Sort(L); " +
             # remove duplicates from the list
            "for i in Reversed([2..Size(L)]) do " +
               "for j in Reversed([1..i-1]) do " +
                  "if (L[i] = L[j]) then " +
                     "Remove(L,i); " +
                     "break; " +
                  "fi; " +
               "od; " +
            "od; " +
            "return L; " +
         "end;")

gap.eval("LSide := 0;")
gap.eval("RSide := 0;")

gap.eval("LeftSide := function(x) " +
            "LSide := x; " +
         "end;")   
 
gap.eval("RightSide := function(x) " +
            "RSide := x; " +
         "end;")  

gap.eval("Prod := function(G) " +
            "local i, j, k, p, L; " +
            "L := []; " +
            "for i in [1..Size(LSide)] do " +
               "for j in [1..Size(RSide)] do " +
                   # find the product p
                  "p := LSide[i]*RSide[j]; " +
                  "if (G = []) then " +
                     "Add(L, p); " +
                  "else " +
                     "for k in [1..Size(G)] do " +
                        "if (p = G[k]) then " +
                           "Add(L, G[k]); " +
                           "break; " +
                        "fi; " +
                     "od; " +
                  "fi; " +
               "od; " +
            "od; " +
            "Sort(L); " +
             # remove duplicates from the list (which will be together if sorted)
            "for i in Reversed([2..Size(L)]) do " +
               "if (L[i] = L[i-1]) then " +
                  "Remove(L,i); " +
               "fi; " +
            "od; " +
            "return L; " +
         "end;")

gap.eval("AddCoset := function(R) " +
            "local i, j, k, p, L; " +
            "L := []; " +
            "for i in [1..Size(LSide)] do " +
               "for j in [1..Size(R)] do " +
                   # find the sum p " +
                  "p := LSide[i] + R[j]; " +
                  "Add(L, p); " +
               "od; " +
            "od; " +
            "Sort(L); " +
             # remove duplicates from the list (which will be together if sorted)
            "for i in Reversed([2..Size(L)]) do " +
               "if (L[i] = L[i-1]) then " +
                  "Remove(L,i); " +
               "fi; " +
            "od; " +
            "return L; " +
         "end;")

gap.eval("OrigGroup := 0;")

gap.eval("OriginalGroup := function(x) " +
            "OrigGroup := x; " +
         "end;")  

gap.eval("Conform := function(sub) " +
            "local i, k, L; " +
            "L := []; " +
            "for i in [1..Size(sub)] do " +
               "for k in [1..Size(OrigGroup)] do " +
                   "if (sub[i] = OrigGroup[k]) then " +
                      "Add(L, OrigGroup[k]); " +
                      "break; " +
                   "fi; " +
               "od; " +
            "od; " +
            "return L; " +
         "end;")   

gap.eval("LftCoset := function(H) " +
            "local GG, HH, i, j, k, q, base, p, FlatQ, SizeG, t; " +
            "GG := OrigGroup; " +
            "SizeG := Size(GG); " +
            "HH := Conform(H); " +
            "Sort(HH); " +
            "q := [HH]; " +
            "Print(q); " +
            "FlatQ := Flat(HH); " +
            "for i in [1..SizeG] do " +
               "if not(GG[i] in FlatQ) then " +
                   "t := []; " +
                   "for j in [1..Size(HH)] do " +
                      "p := GG[i]*HH[j]; " +
                      "for k in [1..SizeG] do " +
                         "if p = GG[k] then " +
                            "Add(t, GG[k]); " +
                            "Add(FlatQ, GG[k]); " +
                         "fi; " +
                      "od; " +
                   "od; " +
                   "Sort(t); " +
                   "Add(q, t); " +
                   "Print(q); " +
               "fi; " +
            "od; " +
            "return q; " +
         "end;")   

gap.eval("RtCoset := function(H) " +
            "local GG, HH, i, j, k, q, p, FlatQ, SizeG, t; " +
            "GG := OrigGroup; " +
            "SizeG := Size(GG); " +
            "HH := Conform(H); " +
            "Sort(HH); " +
            "q := [HH]; " +
            "FlatQ := Flat(HH); " +
            "for i in [1..SizeG] do " +
               "if not(GG[i] in FlatQ) then " +
                   "t := []; " +
                   "for j in [1..Size(HH)] do " +
                      "p := HH[j]*GG[i]; " +
                      "for k in [1..SizeG] do " +
                         "if p = GG[k] then " +
                            "Add(t, GG[k]); " +
                            "Add(FlatQ, GG[k]); " +
                         "fi; " +
                      "od; " +
                   "od; " +
                   "Sort(t); " +
                   "Add(q, t); " +
               "fi; " +
            "od; " +
            "return q; " +
         "end;") 

gap.eval("RingCoset := function(H) " +
            "local GG, HH, i, j, k, q, p, FlatQ, SizeG, t; " +
            "GG := OrigGroup; " +
            "SizeG := Size(GG); " +
            "HH := H; " +
            "Sort(HH); " +
            "q := [HH]; " +
            "FlatQ := Flat(HH); " +
            "for i in [1..SizeG] do " +
               "if not(GG[i] in FlatQ) then " +
                   "t := []; " +
                   "for j in [1..Size(HH)] do " +
                      "p := HH[j] + GG[i]; " +
                      "Add(t, p); " +
                      "Add(FlatQ, p); " +
                   "od; " +
                   "Sort(t); " +
                   "Add(q, t); " +
               "fi; " +
            "od; " +
            "return q; " +
         "end;")     

gap.eval("NormClosure := function(S) " +
            "local GG, SS, NN, LL; " +
            "SS := Group(S); " + # make both S and G into groups.
            "GG := Group(OrigGroup); " +
            "NN := NormalClosure(GG, SS); " +
            "LL := List(NN); " +
            "return Conform(LL); " +
         "end;")   

gap.eval("IdealClosure := function(S) " +
            "local RR, SS, II; " +
            "SS := List(S); " +         # make S into a list.
            "RR := Ring(OrigGroup); " + # make GG into a ring
            "II := Ideal(RR, SS); " +
            "return List(II); " +
         "end;")   

gap.eval("ConjClasses := function(G) " +
             "local GG, SS, LL; " +
             "OriginalGroup(G); " +
             "GG := Group(G); " +
             "SS := ConjugacyClasses(GG); " +
             "LL := List(SS, x -> Conform(List(x))); " +
             "return LL; " +
         "end;")

gap.eval("CommSubgroup := function(K) " +
             "local HH, KK, MM; " +
             "HH := Group(OrigGroup); " +
             "KK := Group(K); " +
             "MM := CommutatorSubgroup(HH, KK); " +
             "if IsSubset(HH, MM) then " +        # we can use OrigGroup to Conform the list
                "return Conform(List(MM)); " +
             "else " +
                "return List(MM); " +
             "fi; " +
         "end;")   
 
gap.eval("AddC := function( G, H, Y ) " +
            "local GG, XX, YY, i, j, FlatG, SizeG, p, base, k, L; " +
             # Find the base ring.
            "GG := List(G); " +
            "FlatG := Flat(GG); " +
             # Find the operation 
            "SizeG := Size(FlatG); " +
             # base = 0 means G is a ring, base > 0 means add mod base.
            "base := 0; " +
            "if (Number(FlatG, IsInt) = SizeG) then " +
               "base := Maximum(FlatG) + 1; " +
            "fi; " +
            "L := []; " +
            "if (IsList(H) or IsRing(H)) then " +
               "XX := List(H); " +
            "else " +
               "XX := [H]; " + # list with 1 element
            "fi; " +
            "if (IsList(Y) or IsRing(Y)) then " +
               "YY := List(Y); " +
            "else " +
               "YY := [Y]; " + # list with 1 element
            "fi; " +
             # assume first that XX and YY are simple lists.
            "for i in [1..Size(XX)] do " +
               "for j in [1..Size(YY)] do " +
                  "if(IsList(XX[i]) or IsList(YY[j]) ) then " +
                     "Add(L, AddC(FlatG, XX[i], YY[j])); " + # recursively defined for sets of sets
                  "else " +
                      # find the sum p
                     "if (base > 0) then " +
                        "p := (XX[i] + YY[j]) mod base; " +
                     "else " +
                        "p := XX[i]+YY[j]; " +
                     "fi; " +
                     "for k in [1..Size(GG)] do " +
                        "if (p = GG[k]) then " +
                           "Add(L, GG[k]); " +
                           "break; " +
                        "fi; " +
                     "od; " +
                  "fi; " +
               "od; " +
            "od; " +
            "Sort(L); " +
             # remove duplicates from the list (which will be together if sorted)
            "for i in Reversed([2..Size(L)]) do " +
               "if (L[i] = L[i-1]) then " +
                  "Remove(L,i); " +
               "fi; " +
            "od; " +
            "return L; " +
         "end;")
  
gap.eval("ListCurrentGroup := function(x) " +
            "return List(CurrentGroup); " +
         "end;")

gap.eval("ListCurrentPCGroup := function(x) " +
            "return List(CurrentPCGroup); " +
         "end;")









## Set up type of elements to test whether an element is of a certain type 

GapInstance = type(gap("(1,2)")) # used for isinstance to detect Gap elements
IntModType = type(Integers(2)(1)) # used for isinstance to detect multiplication mod n
IntType = type(1)  
GFType = type(GF(2))
QuatType = type(QuaternionAlgebra(SR, -1, -1).gens()[0])

## Set flags to their default position

reset("e")
E = e # since e is often used for the identity element of a group, we need a way to access 2.718281828...

LastInit = "None"
UnivFieldVar = ""
LastFieldVar = ""
#_QuickMult_ = False

## Allow alias of several Sage functions to be consistent with the CamelCase convention of Mathematica
    
def EulerPhi(x):
    return euler_phi(x)
    
def PowerMod(x, r, n): 
    return pow(x, r, n)    
    
def PartitionsP(x):
    return Partitions(x).cardinality()    

def ConwayPolynomial(p,d):
    return conway_polynomial(p, d)    

def List(x):
    if str(parent(x)) == 'Gap':
        return list(x.List())
    else:
        return list(x)
        
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
    global RotLft
    global RotRt
    global Spin
    global FlipLft
    global FlipRt
    global IdentityElement
    if(IdentityElement != "Stay"):
        # If Terry's group is not already defined, set up the variable names.
        Stay = var('Stay')
        RotLft = var('RotLft')
        RotRt = var('RotRt')
        Spin = var('Spin')
        FlipLft = var('FlipLft')
        FlipRt = var('FlipRt')
    sqrt3 = sqrt(3).n()
    Graff = Graphics()
    Graff += polygon([(0,0),(0,2),(sqrt3,-1)], color = TerryColor[0])
    Graff += polygon([(0,0),(0,2),(-sqrt3,-1)], color = TerryColor[1]) 
    Graff += polygon([(0,0),(sqrt3,-1),(-sqrt3,-1)], color = TerryColor[2])
    return Graff.show(axes = false, aspect_ratio = 1, xmin = -2, xmax = 2, ymin = -2, ymax = 2)
       
def Terry(*args):
    global TerryColor
    sqrt3 = sqrt(3).n()
    v = [] 
    if(IdentityElement == 'Stay'):
        ## If InitTerry has been defined, then like Mathematica, we want Terry to take the shortcut.
        Prod = Stay
        for arg in args:
            Prod = Prod * arg
        newList = []
        newList.append(Prod)
    else:
        newList = []
        for arg in args:
            newList.append(arg)    
    for arg in newList:
        if(arg == Stay): 
            Graff = Graphics()
            Graff += polygon([(0,0),(0,2),(sqrt3,-1)], color = TerryColor[0])
            Graff += polygon([(0,0),(0,2),(-sqrt3,-1)], color = TerryColor[1]) 
            Graff += polygon([(0,0),(sqrt3,-1),(-sqrt3,-1)], color = TerryColor[2])
            for i in range(5):    
                v.append(Graff)
        elif(arg == RotRt):
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
        elif(arg == RotLft):
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
        elif(arg == Spin):
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
        elif(arg == FlipRt):
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
        elif(arg == FlipLft):
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
        for p in range(ceil(A*q), B*q +1):
            if fractions.gcd(p, q) == 1:
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
            if fractions.gcd(p, q) == 1:
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
    Graff += text("2", (0.775, 0.76), rgbcolor=(0,0,1), fontsize = 9)
    Graff += text("S", (0.52, 0.77), rgbcolor=(0,0,1), fontsize = 12)
    Graff += text("3", (0.535, 0.76), rgbcolor=(0,0,1), fontsize = 9)
    Graff += text("Z", (0.22, 0.23), rgbcolor=(0,0,1), fontsize = 12)
    Graff += text("2", (0.235, 0.22), rgbcolor=(0,0,1), fontsize = 9)
    Graff += text("Z", (0.39, 0.23), rgbcolor=(0,0,1), fontsize = 12)
    Graff += text("2", (0.405, 0.22), rgbcolor=(0,0,1), fontsize = 9)
    Graff += text("Z", (0.59, 0.23), rgbcolor=(0,0,1), fontsize = 12)
    Graff += text("2", (0.605, 0.22), rgbcolor=(0,0,1), fontsize = 9)
    Graff += text("Z", (0.76, 0.23), rgbcolor=(0,0,1), fontsize = 12)
    Graff += text("3", (0.775, 0.22), rgbcolor=(0,0,1), fontsize = 9)
    if n == 1:    
        Graff += text("Q", (0.494, 1.0), rgbcolor=(0,0,0), fontsize = 12, horizontal_alignment = "left")
        Graff += text("I", (0.501, 1.0), rgbcolor=(0,0,0), fontsize = 10, horizontal_alignment = "left")
        Graff += text("Q(2    )", (-0.04, 0.5), rgbcolor=(0,0,0), fontsize = 12, horizontal_alignment = "left")
        Graff += text("I", (-0.033, 0.5), rgbcolor=(0,0,0), fontsize = 10, horizontal_alignment = "left")
        Graff += text("1/3", (0.005, 0.51), rgbcolor=(0,0,0), fontsize = 9, horizontal_alignment = "left")
        Graff += text("Q(w  2   )", (0.30, 0.5), rgbcolor=(0,0,0), fontsize = 12, horizontal_alignment = "left")
        Graff += text("I", (0.307, 0.5), rgbcolor=(0,0,0), fontsize = 10, horizontal_alignment = "left")
        Graff += text("1/3", (0.38, 0.51), rgbcolor=(0,0,0), fontsize = 9, horizontal_alignment = "left")
        Graff += text("3", (0.35, 0.49), rgbcolor=(0,0,0), fontsize = 9, horizontal_alignment = "left")
        Graff += text("Q(w  2   )", (0.60, 0.5), rgbcolor=(0,0,0), fontsize = 12, horizontal_alignment = "left")
        Graff += text("I", (0.607, 0.5), rgbcolor=(0,0,0), fontsize = 10, horizontal_alignment = "left")
        Graff += text("2  1/3", (0.653, 0.51), rgbcolor=(0,0,0), fontsize = 9, horizontal_alignment = "left")        
        Graff += text("3", (0.65, 0.49), rgbcolor=(0,0,0), fontsize = 9, horizontal_alignment = "left")          
        Graff += text("Q((-3)    )", (1.0, 0.5), rgbcolor=(0,0,0), fontsize = 12, horizontal_alignment = "left")
        Graff += text("1/2", (1.08, 0.51), rgbcolor=(0,0,0), fontsize = 9, horizontal_alignment = "left") 
        Graff += text("I", (1.007, 0.5), rgbcolor=(0,0,0), fontsize = 10, horizontal_alignment = "left")
        Graff += text("Q(2    , w  2   )", (0.4, 0.0), rgbcolor=(0,0,0), fontsize = 12, horizontal_alignment = "left")
        Graff += text("I", (0.407, 0.0), rgbcolor=(0,0,0), fontsize = 10, horizontal_alignment = "left")
        Graff += text("1/3           1/3", (0.443, 0.01), rgbcolor=(0,0,0), fontsize = 9, horizontal_alignment = "left")
        Graff += text("3", (0.513, -0.01), rgbcolor=(0,0,0), fontsize = 9, horizontal_alignment = "left")
    if n == 2:    
        Graff += text("S", (0.49, 1.0), rgbcolor=(0,0,0), fontsize = 12)
        Graff += text("3", (0.505, 0.99), rgbcolor=(0,0,0), fontsize = 9)
        Graff += text("{(), (1 2)}", (0.0, 0.5), rgbcolor=(0,0,0), fontsize = 12, horizontal_alignment = "right")
        Graff += text("{(), (1 3)}", (0.35, 0.5), rgbcolor=(0,0,0), fontsize = 12)
        Graff += text("{(), (2 3)}", (0.65, 0.5), rgbcolor=(0,0,0), fontsize = 12)
        Graff += text("A", (1.0, 0.5), rgbcolor=(0,0,0), fontsize = 12)
        Graff += text("3", (1.015, 0.49), rgbcolor=(0,0,0), fontsize = 9)
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
    if len(args) == 0:        #If there is only one arguement, see if it is a list of lists.
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
##  types of groups.                                           ##
##                                                             ##
#################################################################
    
class SumModN:
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
    def __mul__(self, other):
        if isinstance(other, SumModN):
            if self._mod == other._mod:
                return SumModN((self._x + other._x) % self._mod, self._mod ) 
        return NotImplemented
    # We also allow addition by an integer, to allow for the CircleGraph with Add(n)    
    def __add__(self, other):
        if isinstance(other, (int, long, IntType)):
            return SumModN((self._x + other) % self._mod, self._mod )
        return NotImplemented   
    def __radd__(self, other):
        if isinstance(other, (int, long, IntType)):
            return SumModN((self._x + other) % self._mod, self._mod )
        return NotImplemented    
    def __pow__(self, exp):
        if isinstance(exp, (int, long, IntType)):
            return SumModN((self._x * exp) % self._mod, self._mod )
        return NotImplemented   
    # We want subgroups to appear in order, such as [0,2,4,6,8] 
    def __cmp__(self, other):
        if isinstance(other, SumModN):
            if self._mod == other._mod:
                return cmp(self._x, other._x)                      
        else:
            return NotImplemented        
    def __str__(self):
        return str(self._x)    
    def __repr__(self):
        return str(self._x)   

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
########################################################################

class GroupSet:                    
    def __init__(self, L):
        if isinstance(L, list):
            NewList = [] 
            for item in L: # Strip the wrappers off of the Gap elements
                if isinstance(item, GapElement):
                    NewList.append(item._x)
                else:
                    NewList.append(item)
            self._List = NewList        
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
            if isinstance(self._List[0], GapInstance) and isinstance(other._List[0], GapInstance):
                # deligate the job to Gap for speed purposes
                # if _QuickMult_ is set to true, we can assume that these are both cosets of the same subgroup.
                # in which case, we can save time by multiplying the FIRST element of the first coset by the second coset.
                # Actually, this didn't save time
                #if _QuickMult_:
                #    LL1 = gap([self._List[0]])
                #else:    
                LL1 = gap(self._List)
                LL2 = gap(other._List)
                G = gap([])
                LL1.LeftSide()
                LL2.RightSide()
                Prod1 = list(G.Prod())
                return GroupSet(Prod1)
            else:    
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
            if isinstance(self._List[0], GapInstance) and isinstance(other._List[0], GapInstance):
                # deligate the job to Gap for speed purposes
                LL1 = gap(self._List)
                LL2 = gap(other._List)
                LL1.LeftSide()
                Sum1 = list(LL2.AddCoset())
                return GroupSet(Sum1)
            else:    
                # Find all possible sums
                PSum = []
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
    def __cmp__(self, other):
        if isinstance(other, GroupSet):
            return cmp(sorted(self._List), sorted(other._List))
        return NotImplemented     
    def __len__(self):
        return len(self._List)    
    def __iter__(self):              # Allows iteration constructions such as
        return iter(self._List)      # [order(x) for x in G] 
    def __getitem__(self, index):
        return self._List[index]    
    def __pow__(self, exp):          # Raising a set to a power, think of it as a coset (element of a quotient group)
        if isinstance(exp, (int, long, IntType)):
            x = self._List[0]^(exp - 1)
            return self * x 
        return NotImplemented      
    def Sort(self):
        self._List.sort()
        return None    
    def Conformity(self, other):        # puts the elements in self into the format given in the larger group other
        if isinstance(self._List[0], GroupSet):
            ## self is a coset of a coset.  Recursively do the Conformity to each of self's members
            for i in range(len(self._List)):
                self._List[i].Conformity(other)
            return self    
        if isinstance(other, GroupSet):
            if isinstance(other._List[0], GapInstance): # if not a Gap object, do nothing
                Ggap = gap(other._List)
                Ggap.OriginalGroup()
                Lgap = gap(self._List)
                L = Lgap.Conform()
                self._List = list(L)
            return self                
    def __str__(self):
        s = str(self._List)
        s = "{" + s[1:-1] + "}"  # replace the square brackets (guaranteed to be on the outside) with curly braces.
        s = ConvertIdentity(s)
        return(s) 
    def __repr__(self):
        return str(self)

# this is a class wrapper that wraps around Gap elements, so that we can apply non-Gap operations on it.

class GapElement:
    def __init__(self, x):
        if isinstance(x, GapInstance):
            self._x = x    
        else:
            return NotImplemented    
    def __eq__(self, other):
        if isinstance(other, GapElement):
            return(self._x == other._x)
#        if isinstance(other, GapInstance):  #Don't rely on this, since other == self would always give False
#            return(self._x == other)
        return NotImplemented
    def __ne__(self, other):
        result = self.__eq__(other)
        if result is NotImplemented:
            return result
        return not result
    def __cmp__(self, other):
        if isinstance(other, GapElement):
            return cmp(self._x, other._x) 
        return NotImplemented   
    def __mul__(self, other):
        if isinstance(other, GapElement):
           return GapElement(self._x * other._x)
        if isinstance(other, GroupSet):
           return GroupSet([self]) * other 
        if isinstance(other, GapInstance):
           return GapElement(self._x * other)   
        if isinstance(other, (int, long, IntType)):
           return GapElement(self._x * other)
        return NotImplemented
    def __rmul__(self, other):
        if isinstance(other, (int, long, IntType)):
            return GapElement(other * self._x)
        # all other cases should have been covered by __mul__
        return NotImplemented
    def __add__(self, other):
        if isinstance(other, GapElement):
           return GapElement(self._x + other._x)
        if isinstance(other, GroupSet):
           return GroupSet([self]) + other 
        return NotImplemented     
    def __sub__(self, other):
        if isinstance(other, GapElement):
           return GapElement(self._x - other._x)
        if isinstance(other, GroupSet):
           return GroupSet([self]) + (-other) 
        return NotImplemented         
    def __neg__(self):
        return GapElement(- self._x)       
    def __pow__(self, exp):
        if isinstance(exp, (int, long, IntType)):
            return GapElement(self._x^exp) 
        return NotImplemented    
    def __str__(self):  
        s = str(self._x) 
        s = ConvertIdentity(s)  
        return s
    def __repr__(self):    # Make the wrapper invisible
        return str(self)      
        

         
class Homomorph:
    def __init__(self, domain, target):
        # convert domain and target to lists, and strip off wrappers if present.
        if isinstance(domain, GroupSet):
            self.Domain = domain._List
        elif isinstance(domain, list):
            NewList = [] 
            for item in domain: # Strip the wrappers off of the Gap elements
                if isinstance(item, GapElement):
                    NewList.append(item._x)
                else:
                    NewList.append(item)
            self.Domain = NewList  
        else:
            print("Domain must be a group or list") 
        if isinstance(target, GroupSet):
            self.Target = target._List
        elif isinstance(target, list):
            NewList = [] 
            for item in target: # Strip the wrappers off of the Gap elements
                if isinstance(item, GapElement):
                    NewList.append(item._x)
                else:
                    NewList.append(item)
            self.Target = NewList  
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
        valuex = value
        if isinstance(value, GapElement):
            valuex = value._x
        try:
            output = self.Out[self.In.index(valuex)] 
            if isinstance(output, GapInstance):
                return GapElement(output)
            return output    
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
        # On input, value will be a list of elements (stripped of GapElement).
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
        if sorted(L) != range(1,len(L)+1):
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
    def __cmp__(self, other):
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
            return (self.__cmp__(other) == -1)
        else:
            return NotImplemented    
    def __gt__(self, other):
        if isinstance(other, Perm):
            return (self.__cmp__(other) == 1)
        else:
            return NotImplemented    
    def __le__(self, other):
        if isinstance(other, Perm):
            return (self.__cmp__(other) < 1)
        else:
            return NotImplemented    
    def __ge__(self, other):
        if isinstance(other, Perm):
            return (self.__cmp__(other) > -1)
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
        if isinstance(exp, (int, long, IntType)):
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
            # Remove GapElement wrappers if necessary
            NewL = []
            for item in L:
                if isinstance(item, GapElement):
                    NewL.append(item._x)
                else:
                    NewL.append(item)    
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
        if isinstance(exp, (int, long, IntType)) :
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
        if isinstance(n, (int, long, IntType)) and isinstance(m, (int, long, IntType)) and m > 0:
            PP = range(1,n+1) 
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
        # Strip away wrappers if present
        if isinstance(xvalue, GapElement):    
            self._x = xvalue._x
        else:
            self._x = xvalue
        if isinstance(yvalue, GapElement): 
            self._y = yvalue._x
        else:    
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
    def __mul__(self, other):
        if isinstance(other, Twople):              
            return Twople( self._x * other._x, self._y * other._y )
        else:
            return NotImplemented  
    def __pow__(self, exp):
        if isinstance(exp, (int, long, IntType)) :  
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
#  By defining Quaternions with SR, (Symbolic Ring), we allow for constructions like a + b*i + c*j + d*k
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

## The main groups are interfaced with Gap.  These routines set up a quotient group of a FreeGroup in Gap

IdentityElement = "e"
GeneratorList = []
RelationsList = []
gap.eval("TempFreeGroup := FreeGroup(0)")
gap.eval("CurrentGroup := TempFreeGroup/[]")
CurrentGroup = gap("CurrentGroup")

def InitGroup(name_of_identity_element):
    global IdentityElement
    global GeneratorList
    global RelationsList
    global CurrentGroup
    global LastInit
    IdentityElement = name_of_identity_element
    GeneratorList = []
    RelationsList = []
    LastInit = "InitGroup"
    gap.eval("TempFreeGroup := FreeGroup(0)")
    gap.eval("CurrentGroup := TempFreeGroup/[]")
    CurrentGroup = gap("CurrentGroup")
    gap.eval(IdentityElement + ":= Identity(CurrentGroup);")
    tmpstr = "global " + IdentityElement + "; " + IdentityElement + " = GapElement(CurrentGroup.Identity())"
    exec(tmpstr)
    return "New group with identity " + name_of_identity_element
    
def AddGroupVar(*args):
    global GeneratorList
    global CurrentGroup
    if len(args) == 0:
        print("Must have at least one argument")
    else:
        for newvar in args:
            GeneratorList.append(newvar)
        tmpG = len(GeneratorList)
        tmpstr = "TempFreeGroup := FreeGroup(["
        for tmpI in range(tmpG-1):
            tmpstr = tmpstr + '"' + GeneratorList[tmpI] + '", '
        tmpstr = tmpstr + '"' + GeneratorList[tmpG-1] + '"])'   
        gap.eval(tmpstr)
        gap.eval("AssignGeneratorVariables(TempFreeGroup)")
        tmpR = len(RelationsList)
        if tmpR == 0:    
            gap.eval("CurrentGroup := TempFreeGroup/[]")
        else:
            tmpstr = "CurrentGroup := TempFreeGroup/["  
            for tmpI in range(tmpR-1):
                tmpstr = tmpstr + RelationsList[tmpI] + ", " 
            tmpstr = tmpstr + RelationsList[tmpR-1] + "];"
            gap.eval(tmpstr)
        gap.eval("AssignGeneratorVariables(CurrentGroup)")
        CurrentGroup = gap("CurrentGroup")
        gap.eval(IdentityElement + ":= Identity(CurrentGroup);")
        tmpstr = "global " + IdentityElement + "; " + IdentityElement + " = GapElement(CurrentGroup.Identity())"
        exec(tmpstr)
        for tmpI in range(tmpG):
            tmpstr = "global " + GeneratorList[tmpI] + "; " + GeneratorList[tmpI] + ' = GapElement(gap("' + GeneratorList[tmpI] + '"))'       
            exec(tmpstr)
    return None    

def Define(element1, element2):
    global LastFieldVar
    global GenList
    global DegreeList
    if LastInit == "InitGroup":
        # when defining a Gap group, element1 and element2 will probably have the GapElement wrapper.  
        if isinstance(element1, GapElement):
            elem1 = element1._x
        else:
            elem1 = element1    
        if isinstance(element2, GapElement):
            elem2 = element2._x
        else:
            elem2 = element2     
        global RelationsList
        global CurrentGroup
        if (elem1 in CurrentGroup) and (elem2 in CurrentGroup):
            tmpstr = str(elem1 * (elem2)^(-1))
            RelationsList.append(tmpstr)
            tmpG = len(GeneratorList)
            tmpstr = "TempFreeGroup := FreeGroup(["
            for tmpI in range(tmpG-1):
                tmpstr = tmpstr + '"' + GeneratorList[tmpI] + '", '
            tmpstr = tmpstr + '"' + GeneratorList[tmpG-1] + '"])'   
            gap.eval(tmpstr)
            gap.eval("AssignGeneratorVariables(TempFreeGroup)")
            tmpR = len(RelationsList)
            tmpstr = "CurrentGroup := TempFreeGroup/["  
            for tmpI in range(tmpR-1):
                tmpstr = tmpstr + RelationsList[tmpI] + ", " 
            tmpstr = tmpstr + RelationsList[tmpR-1] + "];"
            gap.eval(tmpstr)
            gap.eval("AssignGeneratorVariables(CurrentGroup)")
            CurrentGroup = gap("CurrentGroup")
            gap.eval(IdentityElement + ":= Identity(CurrentGroup);")
            tmpstr = "global " + IdentityElement + "; " + IdentityElement + " = GapElement(CurrentGroup.Identity())"
            exec(tmpstr)
            for tmpI in range(tmpG):
                tmpstr = "global " + GeneratorList[tmpI] + "; " + GeneratorList[tmpI] + ' = GapElement(gap("' + GeneratorList[tmpI] + '"))'      
                exec(tmpstr)
        return None   
    elif LastInit == "InitDomain":
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
        return "Nothing is initialized yet."  
  
def ToPolycyclic():
    global GeneratorList
    global CurrentGroup
    try:
        gap.eval("CurrentPCGroup := PcGroupFpGroup(CurrentGroup)")
    except:
        print("Group definition doesn't meet all the polycyclic requirements.")
    else:
        gap.eval("AssignGeneratorVariables(CurrentPCGroup)")
        print("Group converted to the Polycyclic format.")
        tmpG = len(GeneratorList)
        CurrentGroup = gap("CurrentPCGroup")
        gap.eval(IdentityElement + ":= Identity(CurrentPCGroup);")
        tmpstr = "global " + IdentityElement + "; " + IdentityElement + " = GapElement(CurrentGroup.Identity())"
        exec(tmpstr)
        for tmpI in range(tmpG):
            tmpstr = "global " + GeneratorList[tmpI] + "; " + GeneratorList[tmpI] + ' = GapElement(gap("' + GeneratorList[tmpI] + '"))'      
            exec(tmpstr)
        x = gap([]) 
        L = x.ListCurrentPCGroup()   
        return GroupSet(list(L))   
    
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
    # This uses the small groups package from GAP to identify the group CurrentGroup.  This should have been installed the first time this
    # package is run.
    try:
        if len(args) == 0:
            gapstr = gap.eval("StructureDescription(CurrentGroup)")
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
    global IdentityElement
    global GeneratorList
    global RelationsList
    global CurrentGroup
    global Stay
    global RotLft
    global RotRt
    global Spin
    global FlipRt
    global FlipLft
    gap.eval('ff := FreeGroup("RotLft","RotRt","Spin","FlipLft","FlipRt")')
    gap.eval('CurrentGroup := ff/[ff.1^3,ff.2^3,ff.1*ff.2,ff.3^2,ff.4^2,ff.5^2,ff.5*ff.2*ff.4,ff.3*ff.2*ff.5]')
    gap.eval('AssignGeneratorVariables(CurrentGroup)')
    gap.eval('SetReducedMultiplication(CurrentGroup)')
    CurrentGroup = gap('CurrentGroup')
    Stay = GapElement(gap('Identity(CurrentGroup)'))
    RotLft = GapElement(gap('RotLft'))
    RotRt = GapElement(gap('RotRt'))
    Spin = GapElement(gap('Spin'))
    FlipLft = GapElement(gap('FlipLft'))
    FlipRt = GapElement(gap('FlipRt'))
    IdentityElement = 'Stay'
    return GroupSet([Stay, FlipRt, RotRt, FlipLft, RotLft, Spin])
 
###################################################################################
##
##  Once the Gap group is defined, there are several ways for it to be displayed
##
###################################################################################
 
def ListGroup():  # this will only be used for groups defined in GAP
    str = gap.eval("Size(CurrentGroup)")
    if str == 'infinity':
        return 'Group is infinite.'
    gap.eval("GList := ListGroup(CurrentGroup)")
    str2 = gap.eval("Size(GList)")
    if str2 != str:  # Apparently not every element has an alphabetical form, so just list the current group.
        gap.eval("GList := List(CurrentGroup)")
    GList = gap('GList')
    return GroupSet(list(GList))
    
def ListRing():   # this will only be used for rings defined by InitRing
    str = gap.eval("Size(CurrentRing)")
    if str == 'infinity':
        return 'Ring is infinite.'
    gap.eval("RList := ListRing(CurrentRing)")
    RList = gap('RList')
    return GroupSet(list(RList))
    
def SetReducedMult():  # this will only be used for groups defined in GAP
    gap.eval("SetReducedMultiplication(CurrentGroup)")
    return None            
                                                         
def Conform(S_GroupSet, G_GroupSet):
    if (isinstance(S_GroupSet, GroupSet) and isinstance(G_GroupSet, GroupSet)):
        return S_GroupSet.Conformity(G_GroupSet) 
   
def Group(*args):
    global gen
    global grp
    if len(args) == 0:  # If no arguments, do the same thing as ListGroup.
        return ListGroup()    
    else:
        # We can assume that all arguments will be of the same type, so we can strip the GapElement wrappers
        v = []
        for arg in args:
            if isinstance(arg, GapElement):
                v.append(arg._x)
            else:    
                v.append(arg)
        if isinstance(v[0], GapInstance):  # Delicate the job to GAP
            L = gap(v)    #
            Subgroup = L.Group()
            GList = Subgroup.List()
            return GroupSet(list(GList))
        else:  
            gen = Uniquify(v) # removes duplicates
            grp = sorted(gen)   # sorts the list
            for g1 in grp:
                for g2 in gen:
                    z = g1 * g2                  
                    if not (z in grp):
                        grp.append(z)
            return GroupSet(sorted(grp)) # TODO: determine sorting algorithm                
                               
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
        TempList = list(V)   # If a list was entered, the elements may be wrapped in GapElement.
        ListV = []           # In this case, we must strip off the wrapper.
        for item in TempList:
            if isinstance(item, GapElement):
                ListV.append(item._x)
            elif isinstance(item, str):
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
                        if isinstance(op[1], GapElement):
                            nextpoint = currentpoint + op[1]._x
                        else:  
                            nextpoint = currentpoint + op[1]
                    elif op[0] == "LeftMult":
                        if isinstance(op[1], GapElement):
                            nextpoint = currentpoint * op[1]._x
                        else:  
                            nextpoint = currentpoint * op[1]
                    elif op[0] == "RightMult":
                        # This is the one case that can be a headache
                        # if V was a list of cosets, then currentpoint will be
                        #    a GroupSet, otherwise it would be a GapElement
                        if isinstance(op[1], GapElement):
                            if isinstance(currentpoint, GroupSet):
                                nextpoint = op[1] * currentpoint
                            else:                                
                                nextpoint = op[1]._x * currentpoint
                        else:    
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
                    # the homomorphism might put the answer in a wrapper, which we must take off
                    if isinstance(nextpoint, GapElement):
                        nextpoint = nextpoint._x   
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
        TempList = list(v)   # If a list was entered, the elements may be wrapped in GapElement.
        GG = []              # In this case, we must strip off the wrapper.
        for item in TempList:
            if isinstance(item, GapElement):
                GG.append(item._x)
            else:
                GG.append(item)    
    n = len(GG)
    if(n > 28):
        return "Group too big to display table."
    L = []
    for i in range(n):
        L.append(ObjectToStr(GG[i]))
    if isinstance(GG[0], GapInstance):
        GG = gap(GG) # Convert list to a GAP object
        M = GG.QuickTable() # will produce a 1 index matrix
#    elif isinstance(GG[0], (int, long, IntType)) and isinstance(GG[-1], (int, long, IntType)) and (not InitPermMultiplication) and (min(GG) > -1):
#        # for a list of integers, try to determine the operation
#        base = max(GG) + 1
#        M = matrix(n+1)
#        if 0 in GG:
#            # assume group is addition modulo base    
#            for i in range(n):
#                for j in range(n):
#                    w = (GG[i] + GG[j]) % base
#                    if w in GG:
#                        M[i+1, j+1] = GG.index(w)+1
#        else:    
#            # assume group is multiplication modulo base    
#            for i in range(n):
#                for j in range(n):
#                    w = (GG[i] * GG[j]) % base
#                   if w in GG:
#                        M[i+1, j+1] = GG.index(w)+1            
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
        if (maxString*(n+1) < 64):
            Graff += text(L[i],(i+1.5, n+0.5), rgbcolor=(0,0,0))
            Graff += text(L[i],(0.5, n-i-0.5), rgbcolor=(0,0,0))
        else:
            Graff += text(L[i],(-0.01*(n+1),n-i-0.5), rgbcolor=(0,0,0), horizontal_alignment='right')   
    for i in range(n):    
        for j in range(n):
            p = int(M[j+1][i+1]) # note: have to convert the GAP integer to a sage integer
            Graff += polygon([(i+1, n-j),(i+2, n-j),(i+2, n-j-1),(i+1, n-j-1)], color = ColorTable[abs(p)])
            if ((p > 0) and (maxString*(n+1) < 64)):
               Graff += text(L[p-1],(i+1.5, n-j-0.5), rgbcolor=(0,0,0))
    return Graff.show(axes = false)
    
def AddTable(v):
    Graff = Graphics()
    if isinstance(v, GroupSet):
        GG = v._List
    else:   
        TempList = list(v)   # If a list was entered, the elements may be wrapped in GapElement.
        GG = []              # In this case, we must strip off the wrapper.
        for item in TempList:
            if isinstance(item, GapElement):
                GG.append(item._x)
            else:
                GG.append(item)   
    n = len(GG)
    if(n > 28):
        return "Ring too big to display table."
    L = []
    for i in range(n):
        L.append(ObjectToStr(GG[i]))
    s = str(parent(GG[0]))
    if s == 'Gap':  #Delegate the task to GAP
        GG = gap(GG)  # Convert list to a GAP object
        M = GG.QuickAdd() # will produce a 1 index matrix    
    else: # probably Ring of integers modulo n   
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
        if (maxString*(n+1) < 64):
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
    if isinstance(x, GapElement):
        xx = x._x
    else:
        xx = x    
    if isinstance(xx, GapInstance):    # Delicate the job to GAP
        n = xx.Group().Size()
        if n == gap('infinity'):
            return Infinity
        else:
            return int(n)
    elif isinstance(xx, SumModN):
        return xx._mod/GCD(x._x, x._mod)    
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
                
def InitRing(*args):
    # actually, all this does is var's the varables in *args, and forms a list of these variables in GeneratorsOfRing.  
    # But this sets up the ability to form a ring from using the orders, and the mini-multiplication table.
    global GeneratorsOfRing
    GeneratorsOfRing = []
    for arg in args:
        var(arg)
        tmpstr = 'global ' + arg
        exec(tmpstr)
        tmpstr = 'GeneratorsOfRing.append(' + arg + ')'
        exec(tmpstr)
    return None   
       
def DefineRing(CharR, GenTable):
    # CharR is an integer vector showing the orders on the basis elements.  
    # GenTable is a mini-multiplication table showing the products of two basis elements, written as a linear combination of the basis elements. 
    global CurrentRing  
    TempT = []
    n = len(GeneratorsOfRing)  
    for i in range(n):
        TempT1 = []
        for j in range(n):
            TempVars = []
            TempCk = []
            for k in range(n):
                m = SR(GenTable[i][j]).coefficient(GeneratorsOfRing[k],1)
                m = int(m)
                if m != 0:
                    TempVars.append(k+1) #GAP is 1 indexed
                    TempCk.append(m)
            TempT1.append([TempVars, TempCk])
        TempT.append(TempT1)
    TempT.append(0) # Neither symmetric or anti-symmetric is assumed.
    TempT.append(0) # Add zero of the defining ring   
    tmpstr = 'CurrentRing := RingByStructureConstants(' + str(CharR) + ',' + str(TempT) + ',['
    for i in range(n):
       tmpstr = tmpstr + '"' + str(GeneratorsOfRing[i]) + '"'
       if i < n-1:
           tmpstr = tmpstr + ','
    tmpstr = tmpstr + '])'       
    gap.eval(tmpstr)
    for i in range(n):
        tmpstr = 'global ' + str(GeneratorsOfRing[i]) + '; ' + str(GeneratorsOfRing[i]) + ' = GapElement(gap("CurrentRing.' + str(i+1) + '"))' 
        exec(tmpstr)   
    CurrentRing = gap("CurrentRing") 
    return None   
     
def NumberSmallRings(size):
    return int(gap.eval("NumberSmallRings(" + str(size) + ")"))

def SmallRing(size, idnum):
    gap.eval("CurrentRing := SmallRing(" + str(size) + "," + str(idnum) + ")")
    CurrentRing = gap('CurrentRing')
    L = CurrentRing.GeneratorsOfRing()  # This will be 1 indexed from GAP
    n = len(L)
    for i in range(n):
        tmpstr = 'global ' + str(L[i+1]) + '; ' + str(L[i+1]) + ' = GapElement(gap("CurrentRing.' + str(i+1) + '"))' 
        exec(tmpstr)
    gap.eval("RList := ListRing(CurrentRing)")
    RList = gap('RList')
    return GroupSet(list(RList))
         
def CheckRing():
    s = gap.eval("CheckRing(CurrentRing)")
    ss = str(s)
    ss = ss.replace('"','')
    print(ss)
    return None
  
def FindUnity(*args):
    if len(args) == 0: 
        Rring = gap(CurrentRing) 
        ident = Rring.Identity()
        if str(ident) == 'fail':
            print("No identity element found.")
            return None
        return GapElement(ident)
    R_list = args[0]
    # R must be a list or GroupSet for this to work.
    # Returns the identity element, if there is one
    if isinstance(R_list, list):
        R_ring = GroupSet(R_list)
    else:    
        R_ring = R_list
    if isinstance(R_ring._List[0], GapInstance):   #delegate the task to Gap
        Rset = gap(R_ring._List)    
        Rring = Rset.Ring()
        ident = Rring.Identity()
        if str(ident) == 'fail':
            print("No identity element found.")
            return None
        return GapElement(ident)
    for i in R_ring._List:
        TestFlag = true
        for j in R_ring._List:
            if ((i * j != j) or (j * i != j)):
                TestFlag = false
        if TestFlag:
            return i
    print("No identity element found.")
    return None         

def Ring(*args):
    global gen
    global grp
    if len(args) == 0:  # If no arguments, do the same thing as ListRing.
        return ListRing()    
    else:
        # We can assume that all arguments will be of the same type, so we can strip the GapElement wrappers
        v = []
        for arg in args:
            if isinstance(arg, GapElement):
                v.append(arg._x)
            else:    
                v.append(arg)
        if isinstance(v[0], GapInstance):  # Delicate the job to GAP
            L = gap(v)    #
            Subring = L.Ring()
            GList = Subring.List()
            return GroupSet(list(GList))
        else:  
            gen = Uniquify(v) # removes duplicates
            grp = sorted(gen)   # sorts the list
            for g1 in grp:
                for g2 in gen:
                    z = g1 * g2                  
                    if not (z in grp):
                        grp.append(z)
                    z = g1 + g2
                    if not (z in grp):
                        grp.append(z)    
            return GroupSet(sorted(grp))     
            
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
    if isinstance(G_coset._List[0], GapInstance):   # May delegate the task to Gap
        # If G is a list of GapElements, then H will be too.  We can delegate the task to GAP
        Ggap = gap(G_coset._List)
        Ggap.OriginalGroup()    
        Hgap = gap(H_coset._List)
        OutGap = Hgap.LftCoset()
        ## OutGap will be a gap list of lists.  We need to convert to a GroupSet of GroupSets
        q = []
        OutList = list(OutGap)
        for item in OutList:
            NewCoset = GroupSet(list(item))
            q.append(NewCoset)
        return GroupSet(q) 
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
    if isinstance(G_coset._List[0], GapInstance):   # May delegate the task to Gap
        # If G is a list of GapElements, then H will be too.  We can delegate the task to GAP
        Ggap = gap(G_coset._List)
        Ggap.OriginalGroup()    
        Hgap = gap(H_coset._List)
        OutGap = Hgap.RtCoset()
        ## OutGap will be a gap list of lists.  We need to convert to a GroupSet of GroupSets
        q = []
        OutList = list(OutGap)
        for item in OutList:
            NewCoset = GroupSet(list(item))
            q.append(NewCoset)
        return GroupSet(q) 
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
    if isinstance(R_coset._List[0], GapInstance):   # May delegate the task to Gap
        # If R is a list of GapElements, then H will be too.  We can delegate the task to GAP
        Rgap = gap(R_coset._List)
        Rgap.OriginalGroup()    
        Hgap = gap(H_coset._List)
        OutGap = Hgap.RingCoset()
        ## OutGap will be a gap list of lists.  We need to convert to a GroupSet of GroupSets
        q = []
        OutList = list(OutGap)
        for item in OutList:
            NewCoset = GroupSet(list(item))
            q.append(NewCoset)
        return GroupSet(q) 
    # We can save a little time by starting with the original subgroup H   
    q = [H_coset]
    flat = H_coset._List
    for g in G_coset:
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
        if isinstance(input, GapElement):
            inputx = input._x
        if isinstance(input, list):
            inputx = GroupSet(input)   
        outputx = output
        if isinstance(output, GapElement):
            outputx = output._x   
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
        LL = []
        for item in L:
            if isinstance(item, GapElement):
                LL.append(item._x)
            else:
                LL.append(item)
    elif isinstance(L, GroupSet):
        LL = L._List
    elif isinstance(L, GapElement):
        LL = [L._x]    
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
        LL = []
        for item in L:
            if isinstance(item, GapElement):
                LL.append(item._x)
            else:
                LL.append(item)
    elif isinstance(L, GroupSet):
        LL = L._List
    elif isinstance(L, GapElement):
        LL = [L._x]    
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
   Temp = range(u,0,-1) # goes from [u, u-1, u-2, ... , 1]
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
    # if the elements are GAP elements, deligate the take to GAP 
    if isinstance(R._List[0], GapInstance):
        Rgap = gap(R._List)
        Rgap.OriginalGroup()  
        Sgap = gap(S._List)
        Igap = Sgap.IdealClosure()
        return GroupSet(list(Igap)) 
    # first find the union of S, R.S, S.R, and R.S.R
    gen = (R * S) * R
    for item in S:
        if not(item in gen):
            T.append(item)
    T = R * S
    for item in T:
        if not(item in gen):
            T.append(item)
    T = S * R
    for item in T:
        if not(item in gen):
            T.append(item)      
    n = len(R._List) # size of original group
    # gen is now the set of additive generators for the ideal
    id = copy(gen) 
    for g1 in grp:
        for g2 in id:
            u = g1 + g2                  
            if not (u in grp):
                grp.append(u)
                if len(grp)*2 > n:
                    return R
    return GroupSet(sorted(grp)) # TODO: determine sorting algorithm  
    
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

def AddRingVar(str):
    # str is a string which will be the name of the variable.
    tmpstr = str + ' := Indeterminate(CurrentRing, "' + str + '")'
    gap.eval(tmpstr)
    tmpstr = "global " + str + "; " + str + ' = GapElement(gap("' + str + '"))'
    exec(tmpstr)
    return None

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
    if not(isinstance(arg1, (int, long, IntType))):
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
        if isinstance(item, (Rational, IntModType, int, long, IntType)):
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
        return false
    else:
        print("Sucessful mapping constructed.")
        return B    
 
def Coefficients(Bas, value):
    if isinstance(Bas, Basis):
        return Bas.Coeff(value)
    print("First argument must be a basis set by ToBasis.")
    return false            
            
def SimpleExtension(arg1, arg2):
    # finds a single element so that Q(w) = Q(arg1, arg2)
    # Note that Sage has several ways of computing this w, but
    # we want to be consistent with the textbook, and return
    # arg1 + n*arg2 for the smallest positive n that works.
    if BaseCharacteristic > 0:
        print("Algorithm does not work on finite fields.")
        return false
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
