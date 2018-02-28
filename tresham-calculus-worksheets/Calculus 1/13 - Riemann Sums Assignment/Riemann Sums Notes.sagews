︠f929794d-19e4-4d38-9e8a-db32764476f3i︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡68907c23-eb1f-43cd-9ae1-c2b951261f07︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠acc131f8-8121-47a2-b8bd-d25e0a0524d9i︠
%md
### Prerequisites:

* Intro to Sage
︡455d8c82-c43f-450d-92df-0d44e37e449e︡{"done":true,"md":"### Prerequisites:\n\n* Intro to Sage"}
︠19006ab7-663f-468d-9910-f197dd46f4b5i︠
%md
# Riemann Sums and Area Under a Curve

Suppose we want to know the area between the graph of a positive function $f(x)$ and the x-axis from $x=a$ to $x=b$.

For most functions, this region is not a shape whose area we can find simply using geometry. So we will approximate the area using a simple geometric shape: the rectangle. Now using only one rectangle would give us a pretty poor approximation most of the time, so we should use many rectangles. Here is the approach:

* Divide the interval $[a,b]$ into $n$ subintervals of equal width (this assumption is unnecessary, but it will simplify things).

* We'll call this width $\Delta x$. Since all the widths are the same, we have $\Delta x=\frac{b-a}{n}$.

* We'll label the endpoints of the intervals $x_i$: $x_0=a$, $x_1=a+\Delta x$, $x_2=a+2\Delta x$, $\ldots$, $x_n=a+n\Delta x=b$.

* If each subinterval $[x_{i-1},x_{i}]$ is relatively small, then the function values on this subinterval are all approximately the same (i.e., $f(c)\approx f(d)$ for any $c$ and $d$ in the subinterval).

* Choose any $c_i$ in the subinterval $[x_{i-1},x_{i}]$.

* The area under the graph of $f$ on this subinterval is approximately $f(c_i)\Delta x$ (this is the area of the rectangle with one side along the x-axis from $x_{i-1}$ to $x_{i}$ and two vertical sides from the x-axis up to $f(c_i)$).

* To get the total area under the graph of $f$ on the interval $[a,b]$, we add up all our approximations: $$Area\approx\sum_{i=1}^{n}f(c_i)\Delta x$$
︡894fdfdc-cf17-4b3f-b967-2745f1370a63︡{"done":true,"md":"# Riemann Sums and Area Under a Curve\n\nSuppose we want to know the area between the graph of a positive function $f(x)$ and the x-axis from $x=a$ to $x=b$.\n\nFor most functions, this region is not a shape whose area we can find simply using geometry. So we will approximate the area using a simple geometric shape: the rectangle. Now using only one rectangle would give us a pretty poor approximation most of the time, so we should use many rectangles. Here is the approach:\n\n* Divide the interval $[a,b]$ into $n$ subintervals of equal width (this assumption is unnecessary, but it will simplify things).\n\n* We'll call this width $\\Delta x$. Since all the widths are the same, we have $\\Delta x=\\frac{b-a}{n}$.\n\n* We'll label the endpoints of the intervals $x_i$: $x_0=a$, $x_1=a+\\Delta x$, $x_2=a+2\\Delta x$, $\\ldots$, $x_n=a+n\\Delta x=b$.\n\n* If each subinterval $[x_{i-1},x_{i}]$ is relatively small, then the function values on this subinterval are all approximately the same (i.e., $f(c)\\approx f(d)$ for any $c$ and $d$ in the subinterval).\n\n* Choose any $c_i$ in the subinterval $[x_{i-1},x_{i}]$. \n\n* The area under the graph of $f$ on this subinterval is approximately $f(c_i)\\Delta x$ (this is the area of the rectangle with one side along the x-axis from $x_{i-1}$ to $x_{i}$ and two vertical sides from the x-axis up to $f(c_i)$).\n\n* To get the total area under the graph of $f$ on the interval $[a,b]$, we add up all our approximations: $$Area\\approx\\sum_{i=1}^{n}f(c_i)\\Delta x$$"}
︠a3d53d8e-8bfe-4b3b-a220-077d0ba58be9i︠
%md
This is called a **Riemann Sum**, after German mathematician Bernhard Riemann (1826-1866).

If $c_i$ is chosen to be the left endpoint of each subinterval, then the resulting Riemann sum is called a **Left Riemann Sum** (I'll abbreviate it $LS$).

$$LS=\sum_{i=1}^{n}f(x_{i-1})\Delta x=\sum_{i=0}^{n-1}f(x_{i})\Delta x$$

(note that $LS$ depends on $n$).

If $c_i$ is chosen to be the right endpoint of each subinterval, then the resulting Riemann sum is called a **Right Riemann Sum** (I'll abbreviate it $RS$).

$$RS=\sum_{i=1}^{n}f(x_{i})\Delta x$$

(note that $RS$ depends on $n$).
︡2c022d4c-7ad0-4dfd-be34-35526f4a94c0︡{"done":true,"md":"This is called a **Riemann Sum**, after German mathematician Bernhard Riemann (1826-1866).\n\nIf $c_i$ is chosen to be the left endpoint of each subinterval, then the resulting Riemann sum is called a **Left Riemann Sum** (I'll abbreviate it $LS$).\n\n$$LS=\\sum_{i=1}^{n}f(x_{i-1})\\Delta x=\\sum_{i=0}^{n-1}f(x_{i})\\Delta x$$\n\n(note that $LS$ depends on $n$).\n\nIf $c_i$ is chosen to be the right endpoint of each subinterval, then the resulting Riemann sum is called a **Right Riemann Sum** (I'll abbreviate it $RS$).\n\n$$RS=\\sum_{i=1}^{n}f(x_{i})\\Delta x$$\n\n(note that $RS$ depends on $n$)."}
︠ee1cc058-bb4c-4546-ae4b-ca27a479edd4i︠
%md
## Example 1

Here are pictures of the rectangles that make up the left and right Riemann sums for the function $f(x)=x^2-x+1$ from $x=0$ to $x=2$ with $n=5$ subintervals.
︡88b55159-631f-4684-88a6-4414e33eb53f︡{"done":true,"md":"## Example 1\n\nHere are pictures of the rectangles that make up the left and right Riemann sums for the function $f(x)=x^2-x+1$ from $x=0$ to $x=2$ with $n=5$ subintervals."}
︠7a123ccc-7e18-491c-9092-7405528472c6si︠
%auto
%hide
f(x)=x^2-x+1  #function
a=0           #lower limit
b=2           #upper limit
n=5           #number of subintervals
dx=(b-a)/n    #delta x
p=plot(f,xmin=a,xmax=b,color='black');q=p
for i in [0..n-1]: #adds rectangles for left sum
    p=p+polygon([(a+i*dx,0),(a+i*dx,f(a+i*dx)),(a+(i+1)*dx,f(a+i*dx)),(a+(i+1)*dx,0)],alpha=.5)+polygon([(a+i*dx,0),(a+i*dx,f(a+i*dx)),(a+(i+1)*dx,f(a+i*dx)),(a+(i+1)*dx,0)],fill=False,color='gray')
p.show(title='Left Riemann Sum')
for i in [0..n-1]: #adds rectangles for right sum
    q=q+polygon([(a+i*dx,0),(a+i*dx,f(a+(i+1)*dx)),(a+(i+1)*dx,f(a+(i+1)*dx)),(a+(i+1)*dx,0)],alpha=.5)+polygon([(a+i*dx,0),(a+i*dx,f(a+(i+1)*dx)),(a+(i+1)*dx,f(a+(i+1)*dx)),(a+(i+1)*dx,0)],fill=False,color='gray')
q.show(title='Right Riemann Sum')
︡54fb7d67-c28c-488d-a5f2-f890669a004e︡{"hide":"input"}︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4976/tmp_uUbjAa.svg","show":true,"text":null,"uuid":"b10be872-c2cf-4d4e-9122-5ca14dea994c"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4976/tmp_lklhRJ.svg","show":true,"text":null,"uuid":"b0e0510d-ab39-4d4b-aac7-fb55a0bca7c2"},"once":false}︡{"done":true}︡
︠357ddec5-831a-439a-bc09-cefa4c104de6i︠
%md
The animation below shows graphs of left Riemann sums for increasing values of $n$. You can see that the rectangles begin to fill in the area under the curve.
︡2d96552f-4479-4064-be3d-cb7df6a73a55︡{"md":"The animation below shows graphs of left Riemann sums for increasing values of $n$. You can see that the rectangles begin to fill in the area under the curve."}︡
︠33de1c3a-f9af-485c-b509-58a20586b44bsi︠
%auto
%hide
f(x)=x^2-x+1  #function
a=0           #lower limit
b=2           #upper limit
sls=[]
for n in [5,10..100]:
    dx=(b-a)/n  #delta x
    p=plot(f,xmin=a,xmax=b,color='black');q=p
    for i in [0..n-1]: #adds rectangles for left sum
        p=p+polygon([(a+i*dx,0),(a+i*dx,f(a+i*dx)),(a+(i+1)*dx,f(a+i*dx)),(a+(i+1)*dx,0)],alpha=.5)+polygon([(a+i*dx,0),(a+i*dx,f(a+i*dx)),(a+(i+1)*dx,f(a+i*dx)),(a+(i+1)*dx,0)],fill=False,color='gray')
    sls+=[p]
sla=animate(sls,figsize=5)
show(sla,delay=50)
︡071c0abf-35a0-485c-bda7-75e12738d7be︡{"hide":"input"}︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4976/tmp_x8ENai.webm","show":true,"text":null,"url":"/a8975d68-235e-4f21-8635-2051d699f504/raw/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4976/tmp_x8ENai.webm"},"once":false}︡{"done":true}︡
︠93720c01-627a-4d04-8f3b-6698f4751533i︠

%md
## Definite Integrals

To get a better approximation, we make the subintervals smaller by increasing $n$ (the number of subintervals).

We then define the area as $$Area=\lim_{n\to\infty}\sum_{i=1}^{n}f(c_i)\Delta x$$

(provided this limit exists).

It can be shown (although I won't do it) that this limit exists for many functions (and it does not depend on the choice of $c_i$). In particular, this limit exists if the function $f$ is continuous on the interval $[a,b]$.
︡14e965d2-614b-4499-928e-0ef7c24a00d3︡{"done":true,"md":"## Definite Integrals\n\nTo get a better approximation, we make the subintervals smaller by increasing $n$ (the number of subintervals).\n\nWe then define the area as $$Area=\\lim_{n\\to\\infty}\\sum_{i=1}^{n}f(c_i)\\Delta x$$\n\n(provided this limit exists).\n\nIt can be shown (although I won't do it) that this limit exists for many functions (and it does not depend on the choice of $c_i$). In particular, this limit exists if the function $f$ is continuous on the interval $[a,b]$."}
︠4c3510fe-f70b-4a8b-a227-8ad8e1e267eei︠
%md
I have assumed that the function $f$ is positive on the interval $[a,b]$. If this is not the case, then some $f(c_i)$ may be negative, in which case $f(c_i)\Delta x$ would not be the area of the corresponding rectangle, but the opposite of this area (a negative number).

In calculus, we will decree that regions below the x-axis have negative area, while regions above the x-axis have positive area. Therefore, the area formula given above will still work, provided we think not of the geometric area of the region but of the "signed area."
︡27f7aef6-d7bb-45da-bd5f-50d633a4d997︡{"done":true,"md":"I have assumed that the function $f$ is positive on the interval $[a,b]$. If this is not the case, then some $f(c_i)$ may be negative, in which case $f(c_i)\\Delta x$ would not be the area of the corresponding rectangle, but the opposite of this area (a negative number).\n\nIn calculus, we will decree that regions below the x-axis have negative area, while regions above the x-axis have positive area. Therefore, the area formula given above will still work, provided we think not of the geometric area of the region but of the \"signed area.\""}
︠328a3dae-f5dc-4a35-9010-0eeee7aaae8di︠
%md
Because of its importance, there is special notation for the limit of Riemann sums given above:

$$\int_a^bf(x)\, dx=\lim_{n\to\infty}\sum_{i=1}^{n}f(c_i)\Delta x$$

This quantity is called the **Definite Integral** of the function $f$ from $x=a$ to $x=b$.

In this lab, we will compute values of Riemann sums using the "sum" command in Sage. Next time we will compute integrals using the "integral" command.
︡d6206a6c-827b-420a-b8bf-6086b74a923b︡{"done":true,"md":"Because of its importance, there is special notation for the limit of Riemann sums given above:\n\n$$\\int_a^bf(x)\\, dx=\\lim_{n\\to\\infty}\\sum_{i=1}^{n}f(c_i)\\Delta x$$\n\nThis quantity is called the **Definite Integral** of the function $f$ from $x=a$ to $x=b$.\n\nIn this lab, we will compute values of Riemann sums using the \"sum\" command in Sage. Next time we will compute integrals using the \"integral\" command."}
︠c644151a-415f-4d9a-a87c-eafcd7ae5617i︠
%md
The sum command takes four arguments: sum(expression, variable of summation, starting value, ending value)

Make sure you declare your summation variable before using it.

Here some examples.

$\displaystyle\sum_{k=0}^{10}k^2=385$
︡669901c0-2b6e-4640-acf0-a50f11cd6840︡{"done":true,"md":"The sum command takes four arguments: sum(expression, variable of summation, starting value, ending value)\n\nMake sure you declare your summation variable before using it.\n\nHere some examples.\n\n$\\displaystyle\\sum_{k=0}^{10}k^2=385$"}
︠f7472b43-9ac5-494a-baba-758ba7d83b94︠
%var k
sum(k^2,k,0,10)
︡4ff092ed-18d7-4a83-94f6-42ef6a703ec5︡{"stdout":"385"}︡{"stdout":"\n"}︡
︠d3ddcd9e-211b-42d4-a623-a619318ceee2i︠
%md
$\displaystyle\sum_{i=1}^5\frac{1}{i}=\frac{137}{60}$
︡597941b1-4b51-4b3f-8f11-ee7c7c6a0be3︡{"done":true,"md":"$\\displaystyle\\sum_{i=1}^5\\frac{1}{i}=\\frac{137}{60}$"}
︠b41703d9-b8a7-4214-9d3a-74224d93004es︠
%var i
sum(1/i,i,1,5)
︡0dc8e48b-5bd5-414b-aaed-c1b2705416ea︡{"stdout":"137/60\n"}︡{"done":true}︡
︠a87847d2-302e-4e4e-bb67-cce61c889c77i︠
%md
For $f(x)=x^3$, $\displaystyle\sum_{n=0}^{20}\frac{f(n)}{f(n+1)}=\frac{3829036719783221149071997}{280346265322438720204800}\approx13.6582$.
︡01cd5192-28f6-42d7-950a-fdfa0e0ffac7︡{"done":true,"md":"For $f(x)=x^3$, $\\displaystyle\\sum_{n=0}^{20}\\frac{f(n)}{f(n+1)}=\\frac{3829036719783221149071997}{280346265322438720204800}\\approx13.6582$."}
︠cad93b88-befa-4514-b5f7-39d2b625a383s︠
%var n
f(x)=x^3
sum(f(n)/f(n+1),n,0,20)
N(_)
︡3a691830-b585-44b1-9b3f-3b10ad04fa91︡{"stdout":"3829036719783221149071997/280346265322438720204800\n"}︡{"stdout":"13.6582405168811\n"}︡{"done":true}︡
︠b897a22e-02e8-43a2-9854-0eb88763aefai︠
%md
## Example 2

Approximate the area between the graph of $f(x)=x^2-x+1$ and the x-axis from $x=0$ to $x=2$ using left and right Riemann sums with $n=5$, $n=10$, and $n=50$ subintervals.

First, the solution with $n=5$.
︡667a0172-0a91-4724-a68d-9a44fbb63856︡{"done":true,"md":"## Example 2\n\nApproximate the area between the graph of $f(x)=x^2-x+1$ and the x-axis from $x=0$ to $x=2$ using left and right Riemann sums with $n=5$, $n=10$, and $n=50$ subintervals.\n\nFirst, the solution with $n=5$."}
︠aac154e2-19e4-4138-aa18-e4a041962e37︠
f(x)=x^2-x+1  #function
a=0           #lower limit
b=2           #upper limit
n=5           #number of subintervals
dx=(b-a)/n    #delta x
%var i
LS=sum(f(a+i*dx)*dx,i,0,n-1) #calculates left sum; remember, x_i=a+i*dx
print 'The left Riemann sum is',N(LS)
RS=sum(f(a+i*dx)*dx,i,1,n)   #calculates right sum
print 'The right Riemann sum is',N(RS)
︡7538de1f-182e-40a6-89c6-9515478fec0e︡︡{"stdout":"The left Riemann sum is 2.32000000000000\n","done":false}︡{"stdout":"The right Riemann sum is 3.12000000000000\n","done":false}︡{"done":true}
︠3662ebc4-cf16-464b-9c25-c8f83c2bd091i︠
%md
Now $n=10$.
︡c79b5841-2cae-4dfa-ab91-5d9bbb05a3ea︡{"done":true,"md":"Now $n=10$."}
︠58708685-3dd4-48ac-a97a-f3425d746855︠
f(x)=x^2-x+1  #function
a=0           #lower limit
b=2           #upper limit
n=10          #number of subintervals
dx=(b-a)/n    #delta x
%var i
LS=sum(f(a+i*dx)*dx,i,0,n-1) #calculates left sum
print 'The left Riemann sum is',N(LS)
RS=sum(f(a+i*dx)*dx,i,1,n)   #calculates right sum
print 'The right Riemann sum is',N(RS)
︡c553a55e-b886-4ab6-b079-4081b5d1c225︡︡{"stdout":"The left Riemann sum is 2.48000000000000\n","done":false}︡{"stdout":"The right Riemann sum is 2.88000000000000\n","done":false}︡{"done":true}
︠bb61e7e0-1397-4214-8812-5f95213c1a4bi︠
%md
Finally, $n=50$.
︡b1e3c442-a17f-422d-b9ef-020ef6042f14︡{"done":true,"md":"Finally, $n=50$."}
︠e55de9fb-ebfc-4126-876e-ee29019e8a6f︠
f(x)=x^2-x+1  #function
a=0           #lower limit
b=2           #upper limit
n=50          #number of subintervals
dx=(b-a)/n    #delta x
%var i
LS=sum(f(a+i*dx)*dx,i,0,n-1) #calculates left sum
print 'The left Riemann sum is',N(LS)
RS=sum(f(a+i*dx)*dx,i,1,n)   #calculates right sum
print 'The right Riemann sum is',N(RS)
︡db10c243-6a8b-46ae-b618-b24d931aae8e︡︡{"stdout":"The left Riemann sum is 2.62720000000000\n","done":false}︡{"stdout":"The right Riemann sum is 2.70720000000000\n","done":false}︡{"done":true}
︠a24360ea-0cdf-4f04-a37e-226688f9dc68i︠
%md
You can see that the left and right Riemann sums get closer together as $n$ increases (they are both getting closer to the actual area).

The actual area is $\frac{8}{3}\approx 2.6667$. This gives you some idea of how big $n$ needs to be in order to get a good approximation.

Fortunately, there are much better ways to approximate areas! We'll talk about some of these in Math 206.
︡a97ce160-e8ba-4afe-8cf5-d413bf264ac0︡︡{"done":true,"md":"You can see that the left and right Riemann sums get closer together as $n$ increases (they are both getting closer to the actual area).\n\nThe actual area is $\\frac{8}{3}\\approx 2.6667$. This gives you some idea of how big $n$ needs to be in order to get a good approximation.\n\nFortunately, there are much better ways to approximate areas! We'll talk about some of these in Math 206."}
︠d2494b41-8985-440f-8b08-a64289779b99i︠
%md
## Example 3

Approximate the area between the graph of $f(x)=\sin(x)$ and the x-axis from $x=0$ to $x=\frac{\pi}{2}$ using left and right Riemann sums with $n=50$ and $n=100$ subintervals.

[Note: The actual area is $1$.]

First, we'll use $n=50$.
︡6dbaaeb2-4476-4ca2-b954-7405c7f33252︡{"done":true,"md":"## Example 3\n\nApproximate the area between the graph of $f(x)=\\sin(x)$ and the x-axis from $x=0$ to $x=\\frac{\\pi}{2}$ using left and right Riemann sums with $n=50$ and $n=100$ subintervals.\n\n[Note: The actual area is $1$.]\n\nFirst, we'll use $n=50$."}
︠086df7bf-abd4-4e3c-8781-be3f67b7a5dd︠
f(x)=sin(x) #function
a=0         #lower limit
b=pi/2      #upper limit
n=50        #number of subintervals
dx=(b-a)/n  #delta x
%var i
LS=sum(f(a+i*dx)*dx,i,0,n-1) #calculates left sum
print 'The left Riemann sum is',N(LS)
RS=sum(f(a+i*dx)*dx,i,1,n)   #calculates right sum
print 'The right Riemann sum is',N(RS)
︡64e4df9c-d8dc-4c8b-8670-030c23ed1270︡{"stdout":"The left Riemann sum is 0.984209788675773\n"}︡{"stdout":"The right Riemann sum is 1.01562571521167\n"}︡
︠a449da4c-ca3d-4970-92fc-ea992a039561i︠
%md
Here are graphs for the left and right Riemann sums with $n=50$:
︡01048259-5d56-4822-89dc-39273b660974︡{"done":true,"md":"Here are graphs for the left and right Riemann sums with $n=50$:"}
︠f6e94ba8-cb46-414f-bde6-0eacd17c3223si︠
%auto
%hide
f(x)=sin(x) #function
a=0         #lower limit
b=pi/2      #upper limit
n=50        #number of subintervals
dx=(b-a)/n  #delta x
p=plot(f,xmin=a,xmax=b,color='black');q=p
for i in [0..n-1]: #adds rectangles for left sum
    p=p+polygon([(a+i*dx,0),(a+i*dx,f(a+i*dx)),(a+(i+1)*dx,f(a+i*dx)),(a+(i+1)*dx,0)],alpha=.5)+polygon([(a+i*dx,0),(a+i*dx,f(a+i*dx)),(a+(i+1)*dx,f(a+i*dx)),(a+(i+1)*dx,0)],fill=False,color='gray')
p.show(title='Left Riemann Sum')
for i in [0..n-1]: #adds rectangles for right sum
    q=q+polygon([(a+i*dx,0),(a+i*dx,f(a+(i+1)*dx)),(a+(i+1)*dx,f(a+(i+1)*dx)),(a+(i+1)*dx,0)],alpha=.5)+polygon([(a+i*dx,0),(a+i*dx,f(a+(i+1)*dx)),(a+(i+1)*dx,f(a+(i+1)*dx)),(a+(i+1)*dx,0)],fill=False,color='gray')
q.show(title='Right Riemann Sum')
︡e2cb3c2e-a2aa-47a3-b706-2d029e821073︡{"hide":"input"}︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4976/tmp_YtsuBA.svg","show":true,"text":null,"uuid":"5bb735ec-fd49-4d26-89a2-dd93706360f9"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4976/tmp_rcobc9.svg","show":true,"text":null,"uuid":"00e18268-4011-4a1b-ba5c-2c0591a6135d"},"once":false}︡{"done":true}︡
︠595d7018-9e01-4ada-8c9e-3e78cf12edc4i︠
%md
Now we'll use $n=100$.
︡1b39c70e-c9eb-454c-998f-95ed8ead792a︡{"done":true,"md":"Now we'll use $n=100$."}
︠675f377d-338c-4734-a25e-2021956ce3ab︠
f(x)=sin(x) #function
a=0         #lower limit
b=pi/2      #upper limit
n=100       #number of subintervals
dx=(b-a)/n  #delta x
%var i
LS=sum(f(a+i*dx)*dx,i,0,n-1) #calculates left sum
print 'The left Riemann sum is',N(LS)
RS=sum(f(a+i*dx)*dx,i,1,n)   #calculates right sum
print 'The right Riemann sum is',N(RS)
︡2a2f543a-db5a-4eaa-8f52-8732fce9a4dd︡{"stdout":"The left Riemann sum is 0.992125456605633\n"}︡{"stdout":"The right Riemann sum is 1.00783341987358\n"}︡
︠db4a3258-b111-4782-96c6-80614e0352e9i︠
%md
Here are the graphs for $n=100$.
︡f6be3456-14bb-41f8-ad6a-425f8b04ca75︡{"done":true,"md":"Here are the graphs for $n=100$."}
︠3105bed5-5868-47b1-a644-0f4481a5298csii︠
%auto
%hide
f(x)=sin(x) #function
a=0         #lower limit
b=pi/2      #upper limit
n=100        #number of subintervals
dx=(b-a)/n  #delta x
p=plot(f,xmin=a,xmax=b,color='black');q=p
for i in [0..n-1]: #adds rectangles for left sum
    p=p+polygon([(a+i*dx,0),(a+i*dx,f(a+i*dx)),(a+(i+1)*dx,f(a+i*dx)),(a+(i+1)*dx,0)],alpha=.5)+polygon([(a+i*dx,0),(a+i*dx,f(a+i*dx)),(a+(i+1)*dx,f(a+i*dx)),(a+(i+1)*dx,0)],fill=False,color='gray')
p.show(title='Left Riemann Sum')
for i in [0..n-1]: #adds rectangles for right sum
    q=q+polygon([(a+i*dx,0),(a+i*dx,f(a+(i+1)*dx)),(a+(i+1)*dx,f(a+(i+1)*dx)),(a+(i+1)*dx,0)],alpha=.5)+polygon([(a+i*dx,0),(a+i*dx,f(a+(i+1)*dx)),(a+(i+1)*dx,f(a+(i+1)*dx)),(a+(i+1)*dx,0)],fill=False,color='gray')
q.show(title='Right Riemann Sum')
︡b53c6d64-d646-4d42-ba35-870aebbf02f3︡{"hide":"input"}︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4976/tmp_z3N1uk.svg","show":true,"text":null,"uuid":"a89f3438-3271-466e-9397-cffec472d5cd"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4976/tmp_DINyDh.svg","show":true,"text":null,"uuid":"8924136d-a4a9-4eff-b874-bf96c9b8ee0e"},"once":false}︡{"done":true}︡
︠241479de-a0ff-45b2-a93e-5ad8a1d62157︠









