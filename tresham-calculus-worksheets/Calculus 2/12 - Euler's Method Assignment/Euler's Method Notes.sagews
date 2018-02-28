︠4d2a8b99-524c-4d09-a3c9-38b0eedbbea7ai︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡52453068-3c93-4f30-8358-102e380dd27f︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠f02faa26-c6ba-4ebc-a473-dc7941488312i︠
%md
### Prerequisites:

* Intro to Sage
* Differential Equations
︡24960d1a-bed0-40d9-b27a-8752a620749e︡{"done":true,"md":"### Prerequisites:\n\n* Intro to Sage\n* Differential Equations"}
︠64fd9885-49d5-449f-8a20-efd0d4a296c2si︠
%md
# Euler's Method

Euler's Method is an algorithm used to construct approximate solutions to a differential equation of the form $\displaystyle\frac{dy}{dx}=f(x,y)$ starting at an initial point $(x_0,y_0)$.
︡af000259-a4a7-44f4-8b54-27f730a5563d︡{"done":true,"md":"# Euler's Method\n\nEuler's Method is an algorithm used to construct approximate solutions to a differential equation of the form $\\displaystyle\\frac{dy}{dx}=f(x,y)$ starting at an initial point $(x_0,y_0)$."}
︠f9abee3a-41f8-49f5-a452-61492230f910i︠
%md
Since the differential equation $\displaystyle\frac{dy}{dx}=f(x,y)$ tells us the slope of the tangent line at any point on the xy-plane, we can find the slope at $(x_0,y_0)$ and move along the tangent line some distance to a point $(x_1,y_1)$. Since the solution curve is close to its tangent line (as long as we're not too far from the point of tangency), the point $(x_1,y_1)$ is almost on the solution curve.
︡394fabf9-1953-48ec-99bd-21e54eda7ac6︡{"done":true,"md":"Since the differential equation $\\displaystyle\\frac{dy}{dx}=f(x,y)$ tells us the slope of the tangent line at any point on the xy-plane, we can find the slope at $(x_0,y_0)$ and move along the tangent line some distance to a point $(x_1,y_1)$. Since the solution curve is close to its tangent line (as long as we're not too far from the point of tangency), the point $(x_1,y_1)$ is almost on the solution curve."}
︠07a9b256-fbe3-4d6c-ab49-d35b2f030b1ai︠
%md
Now we repeat the process. Find the tangent line at $(x_1,y_1)$ using the differential equation, follow it for a short distance, and find a new point $(x_2,y_2)$. This point is also close to the solution curve.

Repeat the process as many times as you like.
︡7ad2da29-d8b1-4ee5-b75c-3af88a4e2e35︡{"done":true,"md":"Now we repeat the process. Find the tangent line at $(x_1,y_1)$ using the differential equation, follow it for a short distance, and find a new point $(x_2,y_2)$. This point is also close to the solution curve.\n\nRepeat the process as many times as you like."}
︠ea2a456b-cbf7-4edc-be41-1da681da3f33i︠
%md
The process is the same each time, so we can develop an iterated formula and automate the process.

Let's determine how to get from $(x_n,y_n)$ to $(x_{n+1},y_{n+1})$.

First, we need to find the tangent line at $(x_n,y_n)$.

In general, the tangent line to a function $y(x)$ at the point $x=a$ has equation $TL(x)=y(a)+y\,’(a)(x-a)$.

In this case, the derivative is given by the differential equation, $a=x_n$, and $y(a)=y_n$, so we have $TL(x)=y_n+f(x_n,y_n)(x-x_n)$.

Therefore, $$y_{n+1}=TL(x_{n+1})=y_n+f(x_n,y_n)(x_{n+1}-x_n)$$

︡81b04213-650d-4a56-a380-c2a4ddec1d58︡{"done":true,"md":"The process is the same each time, so we can develop an iterated formula and automate the process.\n\nLet's determine how to get from $(x_n,y_n)$ to $(x_{n+1},y_{n+1})$.\n\nFirst, we need to find the tangent line at $(x_n,y_n)$.\n\nIn general, the tangent line to a function $y(x)$ at the point $x=a$ has equation $TL(x)=y(a)+y\\,’(a)(x-a)$.\n\nIn this case, the derivative is given by the differential equation, $a=x_n$, and $y(a)=y_n$, so we have $TL(x)=y_n+f(x_n,y_n)(x-x_n)$.\n\nTherefore, $$y_{n+1}=TL(x_{n+1})=y_n+f(x_n,y_n)(x_{n+1}-x_n)$$"}
︠26a357c0-736a-4ca9-ac27-7f8173d4c2efi︠
%md
We will move along the tangent line the same horizontal distance each step of the process. In other words, $x_{n+1}-x_n$ is a constant, called the “step size.” We will call this $h$.

In summary, we have the following:

<p style="font-size:24px">Euler's Formula</p>

$$x_{n+1}=x_n+h$$

$$y_{n+1}=y_n+f(x_n,y_n)\cdot h$$

︡32e25686-c06c-4410-bf9b-5425999af055︡{"done":true,"md":"We will move along the tangent line the same horizontal distance each step of the process. In other words, $x_{n+1}-x_n$ is a constant, called the “step size.” We will call this $h$.\n\nIn summary, we have the following:\n\n<p style=\"font-size:24px\">Euler's Formula</p>\n\n$$x_{n+1}=x_n+h$$\n\n$$y_{n+1}=y_n+f(x_n,y_n)\\cdot h$$"}
︠d902f479-d89d-440d-a834-063a54390adcis︠
%md
## Example 1

Use Euler's Method to approximate the solution curve to the differential equation $\displaystyle\frac{dy}{dx}=x\cdot y$ that passes through the point $(0,1)$. Plot the approximation for $0\le x \le 2$.
︡bcce4730-ca48-4102-b5ae-9797245d4cf6︡{"md":"## Example 1\n\nUse Euler's Method to approximate the solution curve to the differential equation $\\displaystyle\\frac{dy}{dx}=x\\cdot y$ that passes through the point $(0,1)$. Plot the approximation for $0\\le x \\le 2$.\n"}︡
︠bc7c6a18-0613-44fb-ac7f-7112fc942c04i︠
%md
We'll start with a small example by hand, and then we'll let the computer do the work.

We will use just 5 steps. That means the step size is $h=\frac{2-0}{5} = \frac{2}{5}$.

We'll start with $x_0=0$ and $y_0=1$, and then we will calculate new x- and y-coordinates with the formulas
$$x_{n+1}=x_n+h$$
$$y_{n+1}=y_n+x_n\cdot y_n\cdot h$$
︡cb72b9de-0e4e-4998-be08-33a878fd1fae︡{"done":true,"md":"We'll start with a small example by hand, and then we'll let the computer do the work.\n\nWe will use just 5 steps. That means the step size is $h=\\frac{2-0}{5} = \\frac{2}{5}$.\n\nWe'll start with $x_0=0$ and $y_0=1$, and then we will calculate new x- and y-coordinates with the formulas\n$$x_{n+1}=x_n+h$$\n$$y_{n+1}=y_n+x_n\\cdot y_n\\cdot h$$"}
︠60f7e3de-dee7-4033-9955-cec53724f8b0i︠
%md

|x | y|
|---|---|
|$x_0=0$|$y_0=1$|
|$x_1=0+\frac{2}{5}=\frac{2}{5}$ |  $y_1=1+0\cdot 1\cdot \frac{2}{5}=1$|
|$x_2=\frac{2}{5}+\frac{2}{5}=\frac{4}{5}$ | $y_2=1+\frac{2}{5}\cdot 1\cdot \frac{2}{5}=\frac{29}{25}$|
|$x_3=\frac{4}{5}+\frac{2}{5}=\frac{6}{5} $|$ y_3=\frac{29}{25}+\frac{4}{5}\cdot \frac{29}{25}\cdot \frac{2}{5}=\frac{957}{625}$|
|$x_4=\frac{6}{5}+\frac{2}{5}=\frac{8}{5} $|$ y_4=\frac{957}{625}+\frac{6}{5}\cdot \frac{957}{625}\cdot \frac{2}{5}=\frac{35409}{15625}$|
|$x_5=\frac{8}{5}+\frac{2}{5}=2 $|$ y_5=\frac{35409}{15625}+\frac{8}{5}\cdot \frac{35409}{15625}\cdot \frac{2}{5}=\frac{1451769}{390625}$|
︡fc09385d-19ce-4ca2-bbdb-355e8f814f51︡{"done":true,"md":"\n|x | y|\n|---|---|\n|$x_0=0$|$y_0=1$|\n|$x_1=0+\\frac{2}{5}=\\frac{2}{5}$ |  $y_1=1+0\\cdot 1\\cdot \\frac{2}{5}=1$|\n|$x_2=\\frac{2}{5}+\\frac{2}{5}=\\frac{4}{5}$ | $y_2=1+\\frac{2}{5}\\cdot 1\\cdot \\frac{2}{5}=\\frac{29}{25}$|\n|$x_3=\\frac{4}{5}+\\frac{2}{5}=\\frac{6}{5} $|$ y_3=\\frac{29}{25}+\\frac{4}{5}\\cdot \\frac{29}{25}\\cdot \\frac{2}{5}=\\frac{957}{625}$|\n|$x_4=\\frac{6}{5}+\\frac{2}{5}=\\frac{8}{5} $|$ y_4=\\frac{957}{625}+\\frac{6}{5}\\cdot \\frac{957}{625}\\cdot \\frac{2}{5}=\\frac{35409}{15625}$|\n|$x_5=\\frac{8}{5}+\\frac{2}{5}=2 $|$ y_5=\\frac{35409}{15625}+\\frac{8}{5}\\cdot \\frac{35409}{15625}\\cdot \\frac{2}{5}=\\frac{1451769}{390625}$|"}
︠5f57dd60-ef31-4b3c-9c27-af6b89002551i︠
%md
Now let's plot these six points.
︡1b6d8f35-978b-4063-b2af-14eab196647f︡{"done":true,"md":"Now let's plot these six points."}
︠047a3d7a-e961-42b4-99c1-6e105ce49ea0s︠
point([(0,1),(2/5,1),(4/5,29/25),(6/5,957/625),(8/5,35409/15625),(2,1451769/390625)])
︡6f91b414-7ea1-4102-ac5f-8a294e37e586︡{"file":{"filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/26940/tmp_QvKlW7.svg","show":true,"text":null,"uuid":"f9557fd1-caa2-48af-ad53-f149af07e17d"},"once":false}︡{"done":true}︡
︠2ceeba25-7303-4eb2-aa3f-c3382edbd8c2i︠
%md
The six points above are approximately on the solution curve. If we connect the points with straight lines, we will have an approximate solution curve.

Of course, just 5 steps is not enough to get a good approximation, so we'll use the computer with many more steps.
︡d8e19671-972f-499a-8bf7-0be1e2cd252d︡{"md":"The six points above are approximately on the solution curve. If we connect the points with straight lines, we will have an approximate solution curve.\n\nOf course, just 5 steps is not enough to get a good approximation, so we'll use the computer with many more steps.\n"}︡
︠26bcbb6b-9827-448d-93cc-8b029d73b772s︠
%var y
f(x,y)=x*y            #this is the function given by the differential equation
x0=0                  #initial value of x given in the problem
y0=1                  #initial value of y given in the problem
x_end=2               #the x-value you want to stop at
n=50                  #number of points to calculate
h=(x_end-x0)/n        #this calculates the step size for you
xlist=[x0];ylist=[y0] #we will use lists to keep track of all the x's and y's
p=point((x0,y0))      #we'll start keeping track of the points to graph
for i in range(n):    #here we apply Euler's Formula
    xlist+=[xlist[i]+h]
    ylist+=[ylist[i]+RR(f(xlist[i],ylist[i])*h)]  #Note: RR converts to a floating-point number to avoid Sage taking too much time with exact values.
    p=p+point((xlist[i+1],ylist[i+1]))+line([(xlist[i],ylist[i]),(xlist[i+1],ylist[i+1])])
show(p)
︡b8a3aee3-5a67-4eb9-a585-59163241cfa1︡{"file":{"filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/23068/tmp_k9jygo.svg","show":true,"uuid":"cd797180-43a5-49eb-9403-7b9a18a3bb61"},"once":false}︡{"done":true}
︠413f79cf-e0df-4185-9418-3cd70535aeb4i︠
%md
Here is a plot of our approximation (blue) along with the actual solution (red).
︡6fff980b-9544-4c7f-bd61-73da56ccc4ee︡{"md":"Here is a plot of our approximation (blue) along with the actual solution (red).\n"}︡
︠f0ddeff1-6a17-40b5-8973-b9e4c20536b6s︠
p+plot(e^(1/2*x^2),xmin=x0,xmax=x_end,color='red')
︡437fb912-dfff-415c-a3dd-f583e1924a1e︡{"file":{"filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/23068/tmp_xUb8ES.svg","show":true,"uuid":"5a729799-74b0-4ebf-b4b1-43b59fdc83c2"},"once":false}︡{"done":true}
︠b61faada-27b9-4103-bad8-bce14d7c91fbi︠
%md
We can make the approximation better by increasing $n$ (this decreases the step size).

If we want to plot the approximation past $x=2$, then we can change x_end. Of course, the approximation is going to get worse when we are farther away from our starting point.

The interactive box below allows us to change $n$ and x_end. Experiment with different values.
︡0d6cdbf9-c14e-4cf2-8ac4-1ff5a1a4eef7︡{"md":"We can make the approximation better by increasing $n$ (this decreases the step size).\n\nIf we want to plot the approximation past $x=2$, then we can change x_end. Of course, the approximation is going to get worse when we are farther away from our starting point.\n\nThe interactive box below allows us to change $n$ and x_end. Experiment with different values.\n"}︡
︠449940bb-1cf5-4de4-b48a-2dccd54bc6edsi︠
%auto
%hide
@interact
def _(x_end=2,n=50):
    %var x,y
    f(x,y)=x*y
    x0=0
    y0=1
    h=x_end/n
    xlist=[0];ylist=[1];p=point((x0,y0))
    for i in range(n):
        xlist+=[xlist[i]+h]
        ylist+=[ylist[i]+RR(f(xlist[i],ylist[i])*h)]
        p=p+point((xlist[i+1],ylist[i+1]))+line([(xlist[i],ylist[i]),(xlist[i+1],ylist[i+1])])
    show(p+plot(e^(1/2*x^2),xmin=0,xmax=x_end,ymax=ylist[n],color='red'))
︡fd1ac52e-8907-4bba-9891-ce8d6c9a729a︡{"hide":"input"}︡{"interact":{"controls":[{"control_type":"input-box","default":2,"label":"x_end","nrows":1,"readonly":false,"submit_button":null,"type":null,"var":"x_end","width":null},{"control_type":"input-box","default":50,"label":"n","nrows":1,"readonly":false,"submit_button":null,"type":null,"var":"n","width":null}],"flicker":false,"id":"5421462f-f647-4990-83f3-6edc8990a292","layout":[[["x_end",12,null]],[["n",12,null]],[["",12,null]]],"style":"None"}}︡{"done":true}︡
︠ff7c2edb-d5d5-4a80-b507-5b4e2f686080is︠
%md
## Example 2

Consider the initial value problem $\displaystyle\frac{dy}{dx}=y+x,\quad y(0)=0$.

Use Euler's Method to approximate $y(2)$.

I will copy and paste the formulas from above, skipping the plot:
︡e2a0a4d9-3f78-4bee-880e-2bd5ca6759ad︡{"md":"## Example 2\n\nConsider the initial value problem $\\displaystyle\\frac{dy}{dx}=y+x,\\quad y(0)=0$.\n\nUse Euler's Method to approximate $y(2)$.\n\nI will copy and paste the formulas from above, skipping the plot:\n"}︡
︠1b1870de-c3e7-4712-a9a2-062116fc0720s︠
%var y
f(x,y)=y+x  #dy/dx = y+x
x0=0        #initial x-value = 0
y0=0        #initial y-value = 0
x_end=2     #we want to stop at x = 2
n=50        #we'll try 50 for now
h=(x_end-x0)/n
xlist=[x0];ylist=[y0]
for i in range(n):
    xlist+=[xlist[i]+h]
    ylist+=[ylist[i]+RR(f(xlist[i],ylist[i])*h)]
N(ylist[n]) #notice that ylist[n] is the last point calculated, in this case y(2)
︡3954afcb-9c9b-4d5c-aac5-6363e84f4ed2︡{"stdout":"4.10668334627831\n"}︡{"done":true}︡
︠05aae2b5-32a9-46a9-9494-349885f60345i︠
%md
We have found that $y(2)\approx4.1067$.

Let's try a higher value of n and see what happens.
︡6b8a0d6e-b897-40ee-9fc5-aa055a835221︡{"md":"We have found that $y(2)\\approx4.1067$.\n\nLet's try a higher value of n and see what happens.\n"}︡
︠dab6ae01-704a-4d1e-a9a5-22e42b8a1336s︠
%var y
f(x,y)=y+x
x0=0
y0=0
x_end=2
n=100        #we'll try n=100 this time
h=(x_end-x0)/n
xlist=[x0];ylist=[y0]
for i in range(n):
    xlist+=[xlist[i]+h]
    ylist+=[ylist[i]+RR(f(xlist[i],ylist[i])*h)]
N(ylist[n])
︡ab6f39a8-1b43-413c-bdc5-4a74be175548︡{"stdout":"4.24464611825234\n"}︡{"done":true}︡
︠e036e11f-62fd-42d8-99db-3b13922bd911i︠
%md
Now we have $y(2)\approx4.2446$.
︡0193e2f6-dedd-42c5-902a-354a4fbf9864︡{"md":"Now we have $y(2)\\approx4.2446$.\n"}︡
︠85bd0890-145f-4d78-9611-5a6fea867966i︠
%md
Let's find the actual value. First, solve the differential equation.
︡1d04378f-1101-413d-8afa-5744546c2c7a︡{"done":true,"md":"Let's find the actual value. First, solve the differential equation."}
︠3b5d98c5-8a3a-4e83-8a00-2b7e2c983ab3︠
y=function('y',x)
desolve(derivative(y,x)==y+x,y,[0,0])
︡e01afd37-0aad-4671-aa49-700563c71bbf︡{"stdout":"-x + e^x - 1\n"}︡
︠8b07a5a8-c207-42cf-8bae-ce73d5505693i︠
%md
Now plug in $x=2$.
︡7b11495f-f0c7-4f28-8492-6a2eeeec0319︡{"md":"Now plug in $x=2$.\n"}︡
︠b3c398df-f02b-4fc5-82be-e82b260f4f37︠
F(x)=-x + e^x - 1 #I'll call the solution F(x)
F(2)
N(F(2))
︡115a808c-bc15-4390-98b5-c2492664ad3c︡{"stdout":"e^2 - 3\n"}︡{"stdout":"4.38905609893065\n"}︡
︠16a11106-9488-4692-a9fb-372dc21b9edbi︠
%md
So $y(2)=4.38905609893065$.
︡f847484d-e518-48d8-82e6-4ffb3a0aeb95︡{"md":"So $y(2)=4.38905609893065$.\n"}︡
︠525f8d1c-7f1b-4a0f-8657-e96faba91b3di︠
%md
Notice that increasing $n$ has gotten us closer to the actual answer. Let's increase $n$ one more time and see if we can get at least the first decimal place correct.
︡1b87cdd4-8098-416d-89da-d054ea090222︡{"done":true,"md":"Notice that increasing $n$ has gotten us closer to the actual answer. Let's increase $n$ one more time and see if we can get at least the first decimal place correct."}
︠e5b07814-0b62-47b5-8eea-735103abdabfs︠
%var y
f(x,y)=y+x
x0=0
y0=0
x_end=2
n=500        #we'll try n=500 this time
h=(x_end-x0)/n
xlist=[x0];ylist=[y0]
for i in range(n):
    xlist+=[xlist[i]+h]
    ylist+=[ylist[i]+RR(f(xlist[i],ylist[i])*h)]
N(ylist[n])
︡27159134-d9a6-4ba5-a692-4324ecebd991︡{"stdout":"4.35963717586897\n"}︡{"done":true}︡
︠64e83e4e-c5d0-4017-84b9-e41975fe6b90i︠
%md
Here is a summary of our results:

|n|Approximation|
|---|---|
|$50$|$4.10668334627831$|
|$100$|$4.24464611825234$|
|$500$|$4.35963717586897$|

The actual value is $e^2-3\approx 4.38905609893065$.
︡e8e32c75-f1e4-4b50-a44a-f876437443f3︡{"done":true,"md":"Here is a summary of our results:\n\n|n|Approximation|\n|---|---|\n|$50$|$4.10668334627831$|\n|$100$|$4.24464611825234$|\n|$500$|$4.35963717586897$|\n\nThe actual value is $e^2-3\\approx 4.38905609893065$."}
︠baf22509-4a31-4cab-b0c2-246db0ea35b2︠









