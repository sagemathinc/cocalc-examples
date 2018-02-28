︠433d20dd-cf0f-4f98-81a8-478f512cbd2d︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡9f8325b8-55c6-491c-a385-6511e055c8d7︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠61d9c663-3fe0-4285-9a2e-f45aae9faaf5i︠
%md
### Prerequisites:

* Intro to Sage
︡58c0bbfa-8f42-42b2-bb51-e3c0b59165d8︡{"done":true,"md":"### Prerequisites:\n\n* Intro to Sage"}
︠6921935a-aa28-4949-88f1-4c56fdb8c9c8i︠
%md
# Numerical Integration

Some antiderivatives are difficult (or impossible) to compute. In such cases, numerical approximation of a definite integral may be a better (or the only) option.

In Calculus 1, we learned about the "numerical_integral" command in Sage. We are *not* going to use this command in this lab. Instead, we will explore various approximation techniques.
︡1ed6b6a0-3d63-4183-b25f-f2215d159264︡{"md":"# Numerical Integration\n\nSome antiderivatives are difficult (or impossible) to compute. In such cases, numerical approximation of a definite integral may be a better (or the only) option.\n\nIn Calculus 1, we learned about the \"numerical_integral\" command in Sage. We are *not* going to use this command in this lab. Instead, we will explore various approximation techniques.\n"}︡
︠33f8a982-7e66-4f32-b17a-4f4b4414b5b3i︠

%md
## Riemann Sums

The simplest numerical approximation comes from the definition of the definite integral as a limit of Riemann sums. Each Riemann sum is an approximation of the definite integral using rectangles (with one side on the x-axis), and we can make the approximation better by increasing the number of rectangles.

Our goal is to approximate $\displaystyle\int_a^bf(x)\,dx$.

We will use $n$ rectangles of equal width, which means the width of each rectangle is $\Delta x=\frac{b-a}{n}$.

The height of the rectangle will be given by the value of the function $f$ at some point in the base of that rectangle.

If we choose the left endpoint of each rectangle, we will find the left Riemann sum. If we choose the right endpoint of each rectangle, we will find the right Riemann sum.

The endpoints of the rectangles are $a,\ a+\Delta x,\ a+2\Delta x,\ a+3\Delta x,... ,\ a+n\Delta x=b$.

So the left Riemann sum is $\displaystyle LS=f(a)\cdot\Delta x+f(a+\Delta x)\cdot\Delta x+\cdots+f(a+(n-1)\Delta x)\cdot\Delta x=\sum_{i=0}^{n-1}\left(f(a+i\Delta x)\cdot\Delta x\right)$.

Similarly, the right Riemann sum is $\displaystyle RS=f(a+\Delta x)\cdot\Delta x+f(a+2\Delta x)\cdot\Delta x+\cdots+f(b)\cdot\Delta x=\sum_{i=1}^{n}\left(f(a+i\Delta x)\cdot\Delta x\right)$.

The only difference in these formulas is the index of summation.
︡f6e84142-e36a-4ab0-ad07-46ec4dc30c14︡{"done":true,"md":"## Riemann Sums\n\nThe simplest numerical approximation comes from the definition of the definite integral as a limit of Riemann sums. Each Riemann sum is an approximation of the definite integral using rectangles (with one side on the x-axis), and we can make the approximation better by increasing the number of rectangles.\n\nOur goal is to approximate $\\displaystyle\\int_a^bf(x)\\,dx$.\n\nWe will use $n$ rectangles of equal width, which means the width of each rectangle is $\\Delta x=\\frac{b-a}{n}$.\n\nThe height of the rectangle will be given by the value of the function $f$ at some point in the base of that rectangle.\n\nIf we choose the left endpoint of each rectangle, we will find the left Riemann sum. If we choose the right endpoint of each rectangle, we will find the right Riemann sum.\n\nThe endpoints of the rectangles are $a,\\ a+\\Delta x,\\ a+2\\Delta x,\\ a+3\\Delta x,... ,\\ a+n\\Delta x=b$.\n\nSo the left Riemann sum is $\\displaystyle LS=f(a)\\cdot\\Delta x+f(a+\\Delta x)\\cdot\\Delta x+\\cdots+f(a+(n-1)\\Delta x)\\cdot\\Delta x=\\sum_{i=0}^{n-1}\\left(f(a+i\\Delta x)\\cdot\\Delta x\\right)$.\n\nSimilarly, the right Riemann sum is $\\displaystyle RS=f(a+\\Delta x)\\cdot\\Delta x+f(a+2\\Delta x)\\cdot\\Delta x+\\cdots+f(b)\\cdot\\Delta x=\\sum_{i=1}^{n}\\left(f(a+i\\Delta x)\\cdot\\Delta x\\right)$.\n\nThe only difference in these formulas is the index of summation."}
︠70e4e01e-9bb5-42de-8118-a10c5981d36ci︠
%md
### Example 1

Consider $\displaystyle\int_0^2x^2-x\, dx$.

Here are pictures with $n=5$ rectangles.
︡1991165f-c931-465c-a743-9be9740b28d7︡{"done":true,"md":"### Example 1\n\nConsider $\\displaystyle\\int_0^2x^2-x\\, dx$.\n\nHere are pictures with $n=5$ rectangles."}
︠0d797822-1685-453f-8b9f-14d7b0bf950as︠
f(x)=x^2-x     #function to be integrated
a=0            #lower limit of integration
b=2            #upper limit of integration
n=5            #number of subintervals
dx=RR((b-a)/n) #delta x - the RR converts to a decimal, which simplifies things
p=plot(f,(a,b),color='black');q=p
for i in [0..n-1]: #adds rectangles for left sum
    p=p+polygon([(a+i*dx,0),(a+i*dx,f(a+i*dx)),(a+(i+1)*dx,f(a+i*dx)),(a+(i+1)*dx,0)],alpha=.5)+polygon([(a+i*dx,0),(a+i*dx,f(a+i*dx)),(a+(i+1)*dx,f(a+i*dx)),(a+(i+1)*dx,0)],fill=False,color='gray')
p.show(title='Left Riemann Sum')
for i in [0..n-1]: #adds rectangles for right sum
    q=q+polygon([(a+i*dx,0),(a+i*dx,f(a+(i+1)*dx)),(a+(i+1)*dx,f(a+(i+1)*dx)),(a+(i+1)*dx,0)],alpha=.5)+polygon([(a+i*dx,0),(a+i*dx,f(a+(i+1)*dx)),(a+(i+1)*dx,f(a+(i+1)*dx)),(a+(i+1)*dx,0)],fill=False,color='gray')
q.show(title='Right Riemann Sum')
︡18f79c70-0f06-4596-8c24-823bbd6907fd︡{"file":{"filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/28852/tmp_JmAIKh.svg","show":true,"text":null,"uuid":"ac7362a9-a87e-444e-9494-e6c6049cc7b9"},"once":false}︡{"file":{"filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/28852/tmp_QLaM1C.svg","show":true,"text":null,"uuid":"4df7ccbf-7ffe-4f59-8f01-57bf1093da3c"},"once":false}︡{"done":true}︡
︠447adf48-1238-4fb1-b6e3-0d301e7dfe02i︠
%md
The animation below shows graphs of left Riemann sums for increasing values of $n$. You can see that the rectangles begin to fill in the area under the curve.
︡fceb5376-b370-41a4-bd40-0d44c0f0a592︡{"md":"The animation below shows graphs of left Riemann sums for increasing values of $n$. You can see that the rectangles begin to fill in the area under the curve.\n"}︡
︠816cc8de-c851-484b-88f8-d46a76cb3027is︠
%auto
%hide
f(x)=x^2-x  #function
a=0         #lower limit
b=2         #upper limit
sls=[]
for n in [5,10..100]:
    dx=(b-a)/n  #delta x
    p=plot(f,xmin=a,xmax=b,color='black');q=p
    for i in [0..n-1]: #adds rectangles for left sum
        p=p+polygon([(a+i*dx,0),(a+i*dx,f(a+i*dx)),(a+(i+1)*dx,f(a+i*dx)),(a+(i+1)*dx,0)],alpha=.5)+polygon([(a+i*dx,0),(a+i*dx,f(a+i*dx)),(a+(i+1)*dx,f(a+i*dx)),(a+(i+1)*dx,0)],fill=False,color='gray')
    sls+=[p]
sla=animate(sls,figsize=5)
show(sla,delay=50)
︡ad06ab9f-2f46-4d33-b759-3593ecacf044︡{"hide":"input"}︡{"file":{"filename":"/home/user/.sage/temp/project-9189c752-e334-4311-afa9-605b6159620a/215642/tmp_InAQgN.webm","show":true,"text":null,"url":"/9189c752-e334-4311-afa9-605b6159620a/raw/.sage/temp/project-9189c752-e334-4311-afa9-605b6159620a/215642/tmp_InAQgN.webm"},"once":false}︡{"done":true}︡
︠93ea27d5-d128-473d-a63e-ded283fba91ci︠
%md
The formulas below compute the left and right Riemann sums.
︡ad6f099e-f0df-43c7-b791-c21c381880a9︡{"md":"The formulas below compute the left and right Riemann sums.\n"}︡
︠0d46799d-34eb-4f92-8c27-27a8deef9c04︠
f(x)=x^2-x   #function to be integrated
a=0          #lower limit of integration
b=2          #upper limit of integration
n=5          #number of subintervals
dx=(b-a)/n   #delta x
%var i
LS=sum(f(a+i*dx)*dx,i,0,n-1) #calculates left sum
print 'The left Riemann sum is',N(LS)
RS=sum(f(a+i*dx)*dx,i,1,n)   #calculates right sum
print 'The right Riemann sum is',N(RS)
︡2479fa3c-4009-40cb-a6b0-61db9ecacf6d︡{"stdout":"The left Riemann sum is 0.320000000000000\n"}︡{"stdout":"The right Riemann sum is 1.12000000000000\n"}︡
︠1527957f-86db-4d7c-bf5c-c4ccec673e17i︠
%md
For the sake of comparison, the exact value is $\frac{2}{3}\approx0.66667$.
︡de9ebaa4-cd2a-4ecc-8d69-b588560eb823︡{"md":"For the sake of comparison, the exact value is $\\frac{2}{3}\\approx0.66667$.\n"}︡
︠967252ac-e8d6-48d1-a90d-ea44d835ac93i︠
%md
Let's change the number of rectangles to 10 and see how our approximation improves.
︡237ac2f4-fbc7-4ade-b6c6-beb737823bf3︡{"md":"Let's change the number of rectangles to 10 and see how our approximation improves.\n"}︡
︠c9785e3a-fc61-4729-9e22-c9203d3b696f︠
f(x)=x^2-x
a=0
b=2
n=10        #Just changed this to 10
dx=(b-a)/n
%var i
LS=sum(f(a+i*dx)*dx,i,0,n-1) #calculates left sum
print 'The left Riemann sum is',N(LS)
RS=sum(f(a+i*dx)*dx,i,1,n)   #calculates right sum
print 'The right Riemann sum is',N(RS)
︡da3dc947-9767-4bb3-b341-b3ef7346cc00︡{"stdout":"The left Riemann sum is 0.480000000000000\n"}︡{"stdout":"The right Riemann sum is 0.880000000000000\n"}︡
︠04256bad-a0f0-4e9c-8080-2176b53c95dci︠
%md
Remember that the exact answer is $\frac{2}{3}$. Both of these are closer to the correct answer than before, but they are still not very close.

Of course, we can increase our accuracy by using larger values of $n$, but it would be very nice if there were more accurate approximation methods. Fortunately, there are.
︡8d7cb3b0-1827-4553-b260-f1f2803f7c16︡{"md":"Remember that the exact answer is $\\frac{2}{3}$. Both of these are closer to the correct answer than before, but they are still not very close.\n\nOf course, we can increase our accuracy by using larger values of $n$, but it would be very nice if there were more accurate approximation methods. Fortunately, there are.\n"}︡
︠2cc0ac93-a23e-46ea-a1c4-2b141ebb0dfai︠
%md
## Midpoint Rule

The Midpoint Rule is another Riemann sum approximation, but instead of using the left or right endpoints, we will use the midpoint of each subinterval.

Notice in our example above, that each rectangle is either too big (an over-estimate) or too small (an under-estimate).

If we use the midpoint, then part of the rectangle will be above the curve and part will be below, so they will tend to cancel out and give us a better estimate.
︡a65ff15f-2417-48ae-8a19-29ae2048f17e︡{"done":true,"md":"## Midpoint Rule\n\nThe Midpoint Rule is another Riemann sum approximation, but instead of using the left or right endpoints, we will use the midpoint of each subinterval.\n\nNotice in our example above, that each rectangle is either too big (an over-estimate) or too small (an under-estimate).\n\nIf we use the midpoint, then part of the rectangle will be above the curve and part will be below, so they will tend to cancel out and give us a better estimate."}
︠680c68dc-0dab-4d58-9401-aa033adea7cbi︠
%md
### Example 2

Consider $\displaystyle\int_0^2x^2-x\, dx$.

Here is a plot and calculation for the Midpoint Rule using $n=5$.
︡7a67a4fc-317e-4f0f-bd1e-f063b59a7718︡{"done":true,"md":"### Example 2\n\nConsider $\\displaystyle\\int_0^2x^2-x\\, dx$.\n\nHere is a plot and calculation for the Midpoint Rule using $n=5$."}
︠f59450b5-9800-4b9c-8fb5-529672ef554cs︠
f(x)=x^2-x    #function to be integrated
a=0           #lower limit of integration
b=2           #upper limit of integration
n=5           #number of subintervals
dx=(b-a)/n    #delta x
m=plot(f,(a,b),color='black')
for i in [0..n-1]: #sets up the plot
    m=m+polygon([(a+i*dx,0),(a+i*dx,f(a+i*dx+dx/2)),(a+(i+1)*dx,f(a+i*dx+dx/2)),(a+(i+1)*dx,0)],alpha=.5)+polygon([(a+i*dx,0),(a+i*dx,f(a+i*dx+dx/2)),(a+(i+1)*dx,f(a+i*dx+dx/2)),(a+(i+1)*dx,0)],fill=False,color='gray')
m.show(title='Midpoint Rule')
︡19b4f957-87bf-47b3-9828-f1ee02e56bbe︡{"file":{"filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/28852/tmp_yy7Ydz.svg","show":true,"text":null,"uuid":"c1585b8d-5cae-4f7c-8a74-4c0680255472"},"once":false}︡{"done":true}︡
︠d3000b2e-765f-41f0-823c-d635118fc63ds︠
%var i
M=sum(f(a+i*dx+dx/2)*dx,i,0,n-1) #performs the calculation
print 'The Midpoint Rule gives',N(M)
︡177e0e0c-b9ba-4718-a78f-bd375befe672︡{"stdout":"The Midpoint Rule gives 0.640000000000000\n"}︡{"done":true}︡
︠1ef19cc2-6abe-49d1-af17-7d4ea4f21f12i︠
%md
The exact value is $\frac{2}{3}$, and the Midpoint Rule gives us the correct answer to one decimal place with only 5 rectangles.

Recall that for $n=5$, the left sum was 0.32 and the right sum was 1.12. The Midpoint Rule has done a good job of balancing out the under- and over-estimates.
︡ff5ba713-a94c-4454-9b4e-76b9f6db15ee︡{"md":"The exact value is $\\frac{2}{3}$, and the Midpoint Rule gives us the correct answer to one decimal place with only 5 rectangles.\n\nRecall that for $n=5$, the left sum was 0.32 and the right sum was 1.12. The Midpoint Rule has done a good job of balancing out the under- and over-estimates.\n"}︡
︠0a69f2e3-bf5c-4126-b93f-be71d1bf9201i︠
%md
## Trapezoidal Rule
So far we have been approximating our function using a constant (horizontal line = degree 0 polynomial) on each subinterval.

We may be able to improve our approximation if we use a degree 1 polynomial instead (i.e., a non-horizontal line). For each subinterval, we'll use the secant line based on the left and right endpoints. Of course, the resulting shape is not a rectangle but a trapezoid. Thus, this approach is called the Trapezoidal Rule.

Recall that the area of a trapezoid is $\frac{b_1+b_2}{2}h$, where $b_1$ and $b_2$ are the lengths of the bases and $h$ is the height. In this case, the trapezoid is sitting on its side, so the bases are actually vertical and the height is $\Delta x$.
︡e616226b-c31e-4f6a-a17f-3a891cc79c0f︡{"done":true,"md":"## Trapezoidal Rule\nSo far we have been approximating our function using a constant (horizontal line = degree 0 polynomial) on each subinterval.\n\nWe may be able to improve our approximation if we use a degree 1 polynomial instead (i.e., a non-horizontal line). For each subinterval, we'll use the secant line based on the left and right endpoints. Of course, the resulting shape is not a rectangle but a trapezoid. Thus, this approach is called the Trapezoidal Rule.\n\nRecall that the area of a trapezoid is $\\frac{b_1+b_2}{2}h$, where $b_1$ and $b_2$ are the lengths of the bases and $h$ is the height. In this case, the trapezoid is sitting on its side, so the bases are actually vertical and the height is $\\Delta x$."}
︠6c75b102-d1c0-4397-a282-98979a12ae6ai︠
%md
### Example 3

Consider $\displaystyle\int_0^2x^2-x\, dx$.

Here is the plot and calculation for the Trapezoidal Rule using $n=5$.
︡c41d68a1-353d-4cc4-b081-7cae5ac894e0︡{"done":true,"md":"### Example 3\n\nConsider $\\displaystyle\\int_0^2x^2-x\\, dx$.\n\nHere is the plot and calculation for the Trapezoidal Rule using $n=5$."}
︠bda20fc2-03ae-428d-89a3-da45ddfa6a06s︠
f(x)=x^2-x   #function to be integrated
a=0          #lower limit of integration
b=2          #upper limit of integration
n=5          #number of subintervals
dx=(b-a)/n   #delta x
t=plot(f,(a,b),color='black')
for i in [0..n-1]: #sets up the plot
    t=t+polygon([(a+i*dx,0),(a+i*dx,f(a+i*dx)),(a+(i+1)*dx,f(a+(i+1)*dx)),(a+(i+1)*dx,0)],alpha=.5)+polygon([(a+i*dx,0),(a+i*dx,f(a+i*dx)),(a+(i+1)*dx,f(a+(i+1)*dx)),(a+(i+1)*dx,0)],fill=False,color='gray')
t.show(title='Trapezoidal Rule')
︡119dde4d-6d5f-4c75-9170-3a6ca6d9013f︡{"file":{"filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/28852/tmp_ymtzTz.svg","show":true,"text":null,"uuid":"0d2af317-31ff-46dd-9e4e-afa6109244a4"},"once":false}︡{"done":true}︡
︠d96ff10d-9d6f-436c-924d-0482ccf3f961s︠
%var i
T=sum((f(a+i*dx)+f(a+(i+1)*dx))*dx/2,i,0,n-1) #performs the calculation
print 'The Trapezoidal Rule gives',N(T)
︡09e2ca06-9b74-4135-ab73-6c8a78ec4aea︡{"stdout":"The Trapezoidal Rule gives 0.720000000000000\n"}︡{"done":true}︡
︠7fa7320e-5caa-4ef8-ba0f-87a1709b353fi︠
%md
Notice that this approximation is worse than what we got from the Midpoint Rule, but it is much better than either the left or right sum.

In fact, numerically the Trapezoidal Rule simply gives the average of the left and right sums!

In general (but not always), the Midpoint Rule will give a better approximation. If the function $f$ is either concave up or concave down on the entire subinterval, then the linear approximation from the Trapezoidal Rule (the secant line) will be entirely above or below the curve. On the other hand, the horizontal line segment from the Midpoint Rule will be above the curve on part of the interval and below the curve on part of the interval, so the errors will cancel out.

Despite this numerical disappointment, the idea of increasing the degree of the approximating polynomial was sound. The next step is to use a degree 2 polynomial (quadratic, parabola) to approximate $f$ on each subinterval. This is called Simpson's Rule.
︡daf944f9-4c8d-4cfe-82bb-28d82f9e8d2a︡{"md":"Notice that this approximation is worse than what we got from the Midpoint Rule, but it is much better than either the left or right sum.\n\nIn fact, numerically the Trapezoidal Rule simply gives the average of the left and right sums!\n\nIn general (but not always), the Midpoint Rule will give a better approximation. If the function $f$ is either concave up or concave down on the entire subinterval, then the linear approximation from the Trapezoidal Rule (the secant line) will be entirely above or below the curve. On the other hand, the horizontal line segment from the Midpoint Rule will be above the curve on part of the interval and below the curve on part of the interval, so the errors will cancel out.\n\nDespite this numerical disappointment, the idea of increasing the degree of the approximating polynomial was sound. The next step is to use a degree 2 polynomial (quadratic, parabola) to approximate $f$ on each subinterval. This is called Simpson's Rule.\n"}︡
︠bc8d1a92-d45a-49c0-877d-2d02d57e7714i︠

%md
## Simpson's Rule

Instead of using a line to approximate our curve on each subinterval, we will use a parabola. Since a parabola is usually closer to the curve than a line, this should give us a better approximation (of course, this is not true if our original curve is a line, but in that case, why are we approximating the integral?).

A line is determined by 2 points, but it takes 3 points to determine a parabola.

The three points that are normally used are the left endpoints of three consecutive subintervals. This choice forces us to use an even number of subintervals (i.e., $n$ must be even). The number of approximating parabolas is then $n/2$.

I won't take you through all the calculations (see the textbook, pages 454-456). The algebra is complicated, but here is the final result:

$$\int_a^bf(x)\, dx\approx\frac{\Delta x}{3}\left(f(a)+4f(a+\Delta x)+2f(a+2\Delta x)+4f(a+3\Delta x)+2f(a+4\Delta x)+\cdots+2f(a+(n-2)\Delta x)+4f(a+(n-1)\Delta x)+f(b)\right)$$

Notice the pattern in the coefficients: $1,4,2,4,2,\ldots,2,4,1$
︡532eb36e-41da-4111-8450-c2a97fa24e4b︡{"done":true,"md":"## Simpson's Rule\n\nInstead of using a line to approximate our curve on each subinterval, we will use a parabola. Since a parabola is usually closer to the curve than a line, this should give us a better approximation (of course, this is not true if our original curve is a line, but in that case, why are we approximating the integral?).\n\nA line is determined by 2 points, but it takes 3 points to determine a parabola.\n\nThe three points that are normally used are the left endpoints of three consecutive subintervals. This choice forces us to use an even number of subintervals (i.e., $n$ must be even). The number of approximating parabolas is then $n/2$.\n\nI won't take you through all the calculations (see the textbook, pages 454-456). The algebra is complicated, but here is the final result:\n\n$$\\int_a^bf(x)\\, dx\\approx\\frac{\\Delta x}{3}\\left(f(a)+4f(a+\\Delta x)+2f(a+2\\Delta x)+4f(a+3\\Delta x)+2f(a+4\\Delta x)+\\cdots+2f(a+(n-2)\\Delta x)+4f(a+(n-1)\\Delta x)+f(b)\\right)$$\n\nNotice the pattern in the coefficients: $1,4,2,4,2,\\ldots,2,4,1$"}
︠e291dce9-7d71-4fda-8e00-b1f5c31f0a2bi︠
%md
### Example 4

Consider $\displaystyle\int_0^2x^2-x\, dx$.

Here is the result for Simpson's Rule using $n=10$ (5 parabolas).

︡66acc93e-f078-4e5a-a235-617d68187d30︡{"done":true,"md":"### Example 4\n\nConsider $\\displaystyle\\int_0^2x^2-x\\, dx$.\n\nHere is the result for Simpson's Rule using $n=10$ (5 parabolas)."}
︠550bcb0e-3e01-49f3-a54b-6b79f5d7146as︠
f(x)=x^2-x     #function to be integrated
a=0            #lower limit of integration
b=2            #upper limit of integration
n=10            #number of subintervals (must be even)
dx=(b-a)/n     #delta x
n2=int(n/2)
coeffs = [4,2]*n2
coeffs = [1] +coeffs[:n-1]+[1]
S=(dx/3)*sum([coeffs[k]*f(a+dx*k) for k in [0..n]])
print 'Simpson\'s Rule gives',N(S)
︡8b3d4180-b959-4564-8e29-474bc69fd6e9︡{"stdout":"Simpson's Rule gives 0.666666666666667\n"}︡{"done":true}︡
︠50f7e6e9-8921-422b-be21-0141b9eacac2i︠
%md
Of course, in this example $f(x)=x^2-x$, which is already a parabola, so Simpson's Rule gives the exact answer.
︡fe0b2b15-54ea-422f-adc2-c354f40f78d3︡{"md":"Of course, in this example $f(x)=x^2-x$, which is already a parabola, so Simpson's Rule gives the exact answer.\n"}︡
︠ec3d9033-b2d2-41d7-a9ce-278fdab62d93i︠
%md
It is interesting to note that numerically the answer from Simpson's Rule is a weighted average of the answers from the Trapezoidal Rule and the Midpoint Rule (with half the number of rectangles). In particular, if $S_{2n}$ is the approximation from Simpson's Rule with $2n$ subintervals ($n$ parabolas), $T_n$ is the approximation from the Trapezoidal Rule with $n$ trapezoids, and $M_n$ is the approximation from the Midpoint Rule with $n$ rectangles, then $$S_{2n}=\frac{T_n+2M_n}{3}$$

<br>

Here is the calculation for the examples above:
︡749902cd-54a8-457f-abe3-2b91da89b52e︡{"done":true,"md":"It is interesting to note that numerically the answer from Simpson's Rule is a weighted average of the answers from the Trapezoidal Rule and the Midpoint Rule (with half the number of rectangles). In particular, if $S_{2n}$ is the approximation from Simpson's Rule with $2n$ subintervals ($n$ parabolas), $T_n$ is the approximation from the Trapezoidal Rule with $n$ trapezoids, and $M_n$ is the approximation from the Midpoint Rule with $n$ rectangles, then $$S_{2n}=\\frac{T_n+2M_n}{3}$$\n\n<br>\n\nHere is the calculation for the examples above:"}
︠0764e446-b883-41c8-9bd9-ea298385f4d8s︠
(T+2*M)/3
︡8280ebb3-0f1a-4f6c-a355-909e7e08eedf︡{"stdout":"2/3\n"}︡{"done":true}︡
︠a26e6e4a-2b6d-4dd8-a726-ed9d93a98f37i︠
%md
### Example 5 (and a one-stop shop for copy-and-paste)

Here is one example that puts all the rules together. (I'll skip the graphs again.).

Let's approximate $\displaystyle\int_1^4 x^5-4x^2+6x-9\, dx$ using $n=10$, $n=50$, and $n=100$.
︡f2bedecd-32ad-465f-8bd7-fd53845b0e92︡{"md":"### Example 5 (and a one-stop shop for copy-and-paste)\n\nHere is one example that puts all the rules together. (I'll skip the graphs again.).\n\nLet's approximate $\\displaystyle\\int_1^4 x^5-4x^2+6x-9\\, dx$ using $n=10$, $n=50$, and $n=100$.\n"}︡
︠d7739ccc-ea70-4982-b7a8-4dcba162bb91s︠
f(x)=x^5-4*x^2+6*x-9    #function to be integrated
a=1                     #lower limit of integration
b=4                     #upper limit of integration
n=10                    #number of subintervals
dx=RR(b-a)/n            #delta x (the RR converts to decimal, which speeds things up)
%var i

#Left Riemann Sum
LS=sum(f(a+i*dx)*dx,i,0,n-1) #calculates left sum
print 'The left Riemann sum is   ',N(LS)

#Right Riemann Sum
RS=sum(f(a+i*dx)*dx,i,1,n)   #calculates right sum
print 'The right Riemann sum is  ',N(RS)

#Midpoint Rule
M=sum(f(a+i*dx+dx/2)*dx,i,0,n-1)
print 'The Midpoint Rule gives   ',N(M)

#Trapezoidal Rule
T=sum((f(a+i*dx)+f(a+(i+1)*dx))*dx/2,i,0,n-1)
print 'The Trapezoidal Rule gives',N(T)

#Simpson's Rule
n2=int(n/2)
coeffs = [4,2]*n2
coeffs = [1] +coeffs[:n-1]+[1]
S=(dx/3)*sum([coeffs[k]*f(a+dx*k) for k in [0..n]])
print 'Simpson\'s Rule gives      ',N(S)
︡b199eff8-4792-4eed-b46c-82543cc592d1︡{"stdout":"The left Riemann sum is    478.722375000000\n"}︡{"stdout":"The right Riemann sum is   773.022375000000\n"}︡{"stdout":"The Midpoint Rule gives    611.817609375000\n"}︡{"stdout":"The Trapezoidal Rule gives 625.872375000000\n"}︡{"stdout":"Simpson's Rule gives       616.540500000000\n"}︡{"done":true}︡
︠41d6683a-b193-41db-9c2d-f8c64a205eedi︠
%md
Compare these to the exact value of $616.5$.

Now let's try $n=50$:
︡fac9320a-f2b3-43d1-a753-459c180aebd5︡{"md":"Compare these to the exact value of $616.5$.\n\nNow let's try $n=50$:\n"}︡
︠88ffdb58-383e-4e2b-95b9-39b122b633a2s︠
f(x)=x^5-4*x^2+6*x-9    #function to be integrated
a=1                     #lower limit of integration
b=4                     #upper limit of integration
n=50                    #number of subintervals
dx=RR(b-a)/n
%var i

#Left Riemann Sum
LS=sum(f(a+i*dx)*dx,i,0,n-1) #calculates left sum
print 'The left Riemann sum is   ',N(LS)

#Right Riemann Sum
RS=sum(f(a+i*dx)*dx,i,1,n)   #calculates right sum
print 'The right Riemann sum is  ',N(RS)

#Midpoint Rule
M=sum(f(a+i*dx+dx/2)*dx,i,0,n-1)
print 'The Midpoint Rule gives   ',N(M)

#Trapezoidal Rule
T=sum((f(a+i*dx)+f(a+(i+1)*dx))*dx/2,i,0,n-1)
print 'The Trapezoidal Rule gives',N(T)

#Simpson's Rule
n2=int(n/2)
coeffs = [4,2]*n2
coeffs = [1] +coeffs[:n-1]+[1]
S=(dx/3)*sum([coeffs[k]*f(a+dx*k) for k in [0..n]])
print 'Simpson\'s Rule gives      ',N(S)
︡6da8823d-a284-4918-a002-b259f059eb84︡{"stdout":"The left Riemann sum is    587.445283800000\n"}︡{"stdout":"The right Riemann sum is   646.305283800000\n"}︡{"stdout":"The Midpoint Rule gives    616.312364175000\n"}︡{"stdout":"The Trapezoidal Rule gives 616.875283800000\n"}︡{"stdout":"Simpson's Rule gives       616.500064800000\n"}︡{"done":true}︡
︠80e2ecb9-3882-4a47-b6cd-f558cfe59931i︠
%md
Compare these to the exact value of $616.5$.

Now let's try $n=100$:
︡db2e6c46-dc54-4754-9cdc-f302ba038464︡{"md":"Compare these to the exact value of $616.5$.\n\nNow let's try $n=100$:"}︡
︠522fe781-0806-447e-bd05-5a866f32c977s︠
f(x)=x^5-4*x^2+6*x-9    #function to be integrated
a=1                     #lower limit of integration
b=4                     #upper limit of integration
n=100                   #number of subintervals
dx=RR(b-a)/n
%var i

#Left Riemann Sum
LS=sum(f(a+i*dx)*dx,i,0,n-1) #calculates left sum
print 'The left Riemann sum is   ',N(LS)

#Right Riemann Sum
RS=sum(f(a+i*dx)*dx,i,1,n)   #calculates right sum
print 'The right Riemann sum is  ',N(RS)

#Midpoint Rule
M=sum(f(a+i*dx+dx/2)*dx,i,0,n-1)
print 'The Midpoint Rule gives   ',N(M)

#Trapezoidal Rule
T=sum((f(a+i*dx)+f(a+(i+1)*dx))*dx/2,i,0,n-1)
print 'The Trapezoidal Rule gives',N(T)

#Simpson's Rule
n2=int(n/2)
coeffs = [4,2]*n2
coeffs = [1] +coeffs[:n-1]+[1]
S=(dx/3)*sum([coeffs[k]*f(a+dx*k) for k in [0..n]])
print 'Simpson\'s Rule gives      ',N(S)
︡a317c695-3778-44a9-bcf0-d140f7b8adf3︡{"stdout":"The left Riemann sum is    601.878823987500\n"}︡{"stdout":"The right Riemann sum is   631.308823987500\n"}︡{"stdout":"The Midpoint Rule gives    616.453088385937\n"}︡{"stdout":"The Trapezoidal Rule gives 616.593823987500\n"}︡{"stdout":"Simpson's Rule gives       616.500004050000\n"}︡{"done":true}︡
︠96a78758-84a8-468c-961c-09b82ca07e4di︠
%md
Compare these to the exact value of $616.5$.
︡87b038d4-6f8b-4d7d-800d-f83e371b7ee7︡{"md":"Compare these to the exact value of $616.5$.\n"}︡
︠cfc74c38-088b-4b77-8780-ebf8420bfc9ai︠
%md
What do we see from this example?

1. All the approximations improve as $n$ increases.

2. The left and right Riemann sums are not very good approximations.

3. The Midpoint Rule and Trapezoidal Rule are better than the left and right sums.

4. The Midpoint Rule is better than the Trapezoidal Rule.

5. Simpson's Rule is the best.
︡d5c1a67a-3b6e-4ef8-af9a-33d4d9046ad9︡{"md":"What do we see from this example?\n\n1. All the approximations improve as $n$ increases.\n\n2. The left and right Riemann sums are not very good approximations.\n\n3. The Midpoint Rule and Trapezoidal Rule are better than the left and right sums.\n\n4. The Midpoint Rule is better than the Trapezoidal Rule.\n\n5. Simpson's Rule is the best.\n"}︡
︠28553bd6-bf39-4506-bfe7-ad86db038eaei︠
%md
### Example 6 - Simpson's Rule Graph

The function to be integrated, $f(x)=\cos(x)$, is in black. The red vertical lines mark the ends of each parabola. The approximating parabolas are in blue.

I have set $n=10$ (5 parabolas).
︡0650f912-dff5-4d23-a1fd-1bc4a8b1a2f9︡{"md":"### Example 6 - Simpson's Rule Graph\n\nThe function to be integrated, $f(x)=\\cos(x)$, is in black. The red vertical lines mark the ends of each parabola. The approximating parabolas are in blue.\n\nI have set $n=10$ (5 parabolas).\n"}︡
︠923c6b0e-7b78-4168-a323-de1a879e7a76︠
f(x)=cos(x)    #function to be integrated
a=-2*pi        #lower limit of integration
b=2*pi         #upper limit of integration
n=10           #number of subintervals
dx=(b-a)/n
v=[a]
w=[f(a)]
p=plot(f,(a,b),color='black')
for i in [0..n-1]:
    v=v+[a+(i+1)*dx]
    w=w+[f(a+(i+1)*dx)]
for i in [0,2..n-1]:
    %var A, B, C
    eqn1=A*v[i]^2+B*v[i]+C==w[i]
    eqn2=A*v[i+1]^2+B*v[i+1]+C==w[i+1]
    eqn3=A*v[i+2]^2+B*v[i+2]+C==w[i+2]
    coeff=solve([eqn1,eqn2,eqn3],A,B,C)
    A=coeff[0][0].rhs();B=coeff[0][1].rhs();C=coeff[0][2].rhs()
    p+=plot(A*x^2+B*x+C,(v[i],v[i+2]),fill='axis')+line([(v[i],0),(v[i],f(v[i]))],color='red',linestyle='--')
p+=line([(v[n],0),(v[n],f(v[n]))],color='red',linestyle='--');p

︡088818b2-3793-4b25-a811-5502e9482977︡{"once":false,"file":{"show":true,"uuid":"f28867cf-4312-4bee-b8f8-d8a6a1710ef9","filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/9853/tmp_FvpzgL.svg"}}︡{"html":"<div align='center'></div>"}︡
︠3fcb5dcf-e644-411b-a7bc-4f4704c9d49ei︠
%md
Here's the graph with $n=20$ (10 parabolas).
︡509a2b53-2e1d-4f4e-842b-99446e0f627d︡{"md":"Here's the graph with $n=20$ (10 parabolas).\n"}︡
︠1094e005-d1d4-450b-80df-7d66e9afae97︠
f(x)=cos(x)    #function to be integrated
a=-2*pi        #lower limit of integration
b=2*pi         #upper limit of integration
n=20           #number of subintervals
dx=(b-a)/n
v=[a]
w=[f(a)]
p=plot(f,(a,b),color='black')
for i in [0..n-1]:
    v=v+[a+(i+1)*dx]
    w=w+[f(a+(i+1)*dx)]
for i in [0,2..n-1]:
    %var A, B, C
    eqn1=A*v[i]^2+B*v[i]+C==w[i]
    eqn2=A*v[i+1]^2+B*v[i+1]+C==w[i+1]
    eqn3=A*v[i+2]^2+B*v[i+2]+C==w[i+2]
    coeff=solve([eqn1,eqn2,eqn3],A,B,C)
    A=coeff[0][0].rhs();B=coeff[0][1].rhs();C=coeff[0][2].rhs()
    p+=plot(A*x^2+B*x+C,(v[i],v[i+2]),fill='axis')+line([(v[i],0),(v[i],f(v[i]))],color='red',linestyle='--')
p+=line([(v[n],0),(v[n],f(v[n]))],color='red',linestyle='--');p
︡4531e1c6-2fc2-4599-8dd0-c74c10f8455b︡{"once":false,"file":{"show":true,"uuid":"3687ff2a-aae1-455f-ba49-c0048e8cd124","filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/9853/tmp_KSXwHK.svg"}}︡{"html":"<div align='center'></div>"}︡
︠4a3983c4-4a3a-482c-adbe-f613e4e4cb01︠









