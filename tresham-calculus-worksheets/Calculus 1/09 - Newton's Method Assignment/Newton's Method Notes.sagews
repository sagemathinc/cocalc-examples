︠887aba02-4c65-4768-b814-4a11dc8fd28fai︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡177ed064-4b08-4d60-a4dd-d28a3147ba2c︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠fe0e7545-3d87-4a93-80b4-90e2bfdeccafi︠
%md
### Prerequisites:

* Intro to Sage
* Graphing and Solving Equations
* Tangent Lines
* Differentiation
︡6cb823ab-77e6-4247-9d78-af871a7f41b0︡{"done":true,"md":"### Prerequisites:\n\n* Intro to Sage\n* Graphing and Solving Equations\n* Tangent Lines\n* Differentiation"}
︠8a15ccba-2826-4a85-9482-86e60b692007i︠
%md
# Newton's Method

Newton's Method is a tool that uses calculus to estimate the roots (zeros or x-intercepts) of a function.

In a previous lab, we considered the find_root and solve commands in Sage, which can be used to find roots. The purpose of this lab is to give us some idea of the math behind these commands. There is no practical reason to use Newton's Method (unless you really need to find a root without a computer/calculator). However, it is instructive to see how calculus (which is not directly related to roots) can be used to estimate roots.

Newton's basic idea is that a differentiable function is "close" to its tangent lines (at least near the point of tangency). So if we know the root of a tangent line (easy algebra), we suppose that the root of the function is somewhere close.
︡c2d741cd-53f3-4de0-96a3-9516e385934f︡{"done":true,"md":"# Newton's Method\n\nNewton's Method is a tool that uses calculus to estimate the roots (zeros or x-intercepts) of a function.\n\nIn a previous lab, we considered the find_root and solve commands in Sage, which can be used to find roots. The purpose of this lab is to give us some idea of the math behind these commands. There is no practical reason to use Newton's Method (unless you really need to find a root without a computer/calculator). However, it is instructive to see how calculus (which is not directly related to roots) can be used to estimate roots.\n\nNewton's basic idea is that a differentiable function is \"close\" to its tangent lines (at least near the point of tangency). So if we know the root of a tangent line (easy algebra), we suppose that the root of the function is somewhere close."}
︠41b6ac76-54ad-41e3-a9ba-c94b460d61f5i︠
%md
## Example 1

Estimate the roots of $f(x)=x^2+2x-1$. [Of course, we can find the roots of a quadratic function with the Quadratic Formula, but it's just an example.] Let's look at a graph:
︡43f83f16-9dad-41b9-b8dd-8d68c6a8a9de︡{"done":true,"md":"## Example 1\n\nEstimate the roots of $f(x)=x^2+2x-1$. [Of course, we can find the roots of a quadratic function with the Quadratic Formula, but it's just an example.] Let's look at a graph:"}
︠2b128ad5-7804-4948-bfc4-c53fe54181e3s︠
f(x)=x^2+2*x-1
plot(f,xmin=-5,xmax=5)
︡d39b06aa-77a8-41ad-b646-d01b36209cb0︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/24698/tmp_aINPCG.svg","show":true,"text":null,"uuid":"b1c82312-39fe-4d0e-81cc-fcbc9779a5b9"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠cc14a2c2-c13e-4456-be6b-b37cebedca70i︠
%md
From this graph, it appears that there is a root near $x=\frac{1}{2}$.

Let's find the tangent line at this point. Remember, an equation for the tangent line at $x=x_0$ is $y=f(x_0)+f'(x_0)(x-x_0)$.
︡0a4ec575-461c-40f4-b244-ba207aee4308︡{"done":true,"md":"From this graph, it appears that there is a root near $x=\\frac{1}{2}$.\n\nLet's find the tangent line at this point. Remember, an equation for the tangent line at $x=x_0$ is $y=f(x_0)+f'(x_0)(x-x_0)$."}
︠db6bcc70-3a0e-4369-b786-24bb5f3661f2s︠
f(x)=x^2+2*x-1
df(x)=derivative(f,x)        #find the derivative
TL(x)=f(1/2)+df(1/2)*(x-1/2) #find the tangent line
print 'The tangent line is y =',TL(x)
plot(f,xmin=0,xmax=1)+plot(TL,xmin=0,xmax=1,color='red')+point((1/2,f(1/2)),color='black',size=25)
︡be0dddd0-609b-46ab-8c07-df68e65ccec2︡{"stdout":"The tangent line is y = 3*x - 5/4\n"}︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/24698/tmp_t3vJ1z.svg","show":true,"text":null,"uuid":"5ff827d3-0867-4a07-a003-b7e0adffd30d"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠b8fc731a-2120-4207-b41c-1638c8fc7111i︠
%md
Notice that the tangent line and the graph of $f$ are close together near $x=\frac{1}{2}$, and we can see that the root of the tangent line is close to the root of $f$.

Sage gives the equation of the tangent line as $y=3x-\frac{5}{4}$. To find the root of this line, just plug in 0 for $y$ and solve for $x$:

$0=3x-\frac{5}{4}$

$\frac{5}{4}=3x$

$\frac{\frac{5}{4}}{3}=x$


$x=\frac{5}{12}\approx 0.41666$

Let's zoom in on the graph and plot this root.

︡0eebf7a0-f3b5-41bb-855b-e833ebee5b88︡{"md":"Notice that the tangent line and the graph of $f$ are close together near $x=\\frac{1}{2}$, and we can see that the root of the tangent line is close to the root of $f$.\n\nSage gives the equation of the tangent line as $y=3x-\\frac{5}{4}$. To find the root of this line, just plug in 0 for $y$ and solve for $x$:\n\n$0=3x-\\frac{5}{4}$\n\n$\\frac{5}{4}=3x$\n\n$\\frac{\\frac{5}{4}}{3}=x$\n\n\n$x=\\frac{5}{12}\\approx 0.41666$\n\nLet's zoom in on the graph and plot this root.\n\n"}︡
︠f818eb2a-2065-4a70-9159-3362b0af71b2s︠
f(x)=x^2+2*x-1
df(x)=derivative(f,x)
TL(x)=f(1/2)+df(1/2)*(x-1/2)
plot(f,xmin=0.4,xmax=.5)+plot(TL,xmin=0.4,xmax=.5,color='red')+point((5/12,0),size=25,color='black')+point((1/2,f(1/2)),color='black',size=25)
︡441ac0ff-af89-4cde-8cbf-24417a1e210e︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/24698/tmp_EnRJn7.svg","show":true,"text":null,"uuid":"fefade63-fde9-42d4-8356-7f6ae26f3093"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠94e46826-0b4a-4d2d-8500-7b1929922ab8i︠
%md
On this window, we can see that the root of $f$ is not exactly $\frac{5}{12}$, but this is a good approximation.

If we want a better approximation, we can repeat the process, starting with a point of tangency that's closer to the root. Remember we started this example using $x=\frac{1}{2}$ as our point of tangency. This time, we'll use $x=\frac{5}{12}$, the approximation we got last time. We can see from the graph that this is closer to the root of $f$ than $\frac{1}{2}$, so the tangent line we get from $x=\frac{5}{12}$ should be even closer to the actual root of $f$.

So let's find a new tangent line:
︡a9863b54-af91-4167-a6a1-d8cccd816505︡{"md":"On this window, we can see that the root of $f$ is not exactly $\\frac{5}{12}$, but this is a good approximation.\n\nIf we want a better approximation, we can repeat the process, starting with a point of tangency that's closer to the root. Remember we started this example using $x=\\frac{1}{2}$ as our point of tangency. This time, we'll use $x=\\frac{5}{12}$, the approximation we got last time. We can see from the graph that this is closer to the root of $f$ than $\\frac{1}{2}$, so the tangent line we get from $x=\\frac{5}{12}$ should be even closer to the actual root of $f$.\n\nSo let's find a new tangent line:\n"}︡
︠200b23ba-3345-47f9-afdb-5bd9fa9e3dd4s︠
f(x)=x^2+2*x-1
df(x)=derivative(f,x)
TL(x)=f(5/12)+df(5/12)*(x-5/12)
print 'The tangent line is y =',TL(x)
plot(f,xmin=.41,xmax=.42)+plot(TL,xmin=.41,xmax=.42,color='red',linestyle='--')+point((5/12,f(5/12)),size=25,color='black')
︡c09d646d-6680-42e7-b76b-7b4fb0dcc608︡{"stdout":"The tangent line is y = 17/6*x - 169/144\n"}︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/24698/tmp_jHCxtb.svg","show":true,"text":null,"uuid":"c980041c-f36a-434c-a04d-87b5734f3a84"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠8f78a954-568e-4652-ae7b-3313ab7eb94ei︠
%md
We can see that the tangent line and $f$ are very close together on this window, so the root of the tangent line is very close to the root of $f$.

Let's find the root of the tangent line:

$0=\frac{17}{6}x-\frac{169}{144}$

$\frac{169}{144}=\frac{17}{6}x$

$\frac{\frac{169}{144}}{\frac{17}{6}}=x$

$x=\frac{169}{408}\approx0.414216$
︡c0e1c114-ba8f-4985-a187-9bf3946976bb︡{"md":"We can see that the tangent line and $f$ are very close together on this window, so the root of the tangent line is very close to the root of $f$.\n\nLet's find the root of the tangent line:\n\n$0=\\frac{17}{6}x-\\frac{169}{144}$\n\n$\\frac{169}{144}=\\frac{17}{6}x$\n\n$\\frac{\\frac{169}{144}}{\\frac{17}{6}}=x$\n\n$x=\\frac{169}{408}\\approx0.414216$\n"}︡
︠85d89303-f329-4b07-9062-637e96c2c81di︠
%md
Just for comparison, let's find the exact root of $f$.
︡57390b0c-f650-433f-b3ac-31aac12ec437︡{"md":"Just for comparison, let's find the exact root of $f$.\n"}︡
︠f2892716-cd45-4795-80d3-42ecd48a4f9d︠
f(x)=x^2+2*x-1
solve(f(x)==0,x)
︡2e6d862a-1438-49bd-8cef-4c5dbf07efd2︡{"stdout":"[x == -sqrt(2) - 1, x == sqrt(2) - 1]\n"}︡
︠ee182511-832d-4933-abb4-7a38cb288072i︠
%md
There are two solutions, $x=-\sqrt{2}-1$ and $x=\sqrt{2}-1$. We have been trying to estimate the postive root, which is $x=\sqrt{2}-1\approx0.414214$.

This is very close to our estimate, which is off by only $\frac{169}{408}-(\sqrt{2}-1)\approx0.0000021239$ (about $0.0005\%$ error).
︡6a624c18-a582-4448-a289-e8c822eb6331︡{"md":"There are two solutions, $x=-\\sqrt{2}-1$ and $x=\\sqrt{2}-1$. We have been trying to estimate the postive root, which is $x=\\sqrt{2}-1\\approx0.414214$.\n\nThis is very close to our estimate, which is off by only $\\frac{169}{408}-(\\sqrt{2}-1)\\approx0.0000021239$ (about $0.0005\\%$ error).\n"}︡
︠46e64d50-6973-4a4d-8bca-dd0b0d63d485i︠
%md
If we wanted to improve our estimate even more, then we could repeat the process again, using $x=\frac{169}{408}$ as our new point of tangency.

I hope you see from this short example that this process involves repetition of the same steps over and over with different numbers. It lends itself very easily to be made into an algorithm that can be automated.

Before we discuss this algorithm, I have two comments:

* We have to start the process with a point of tangency (we used $\frac{1}{2}$ in our example above). The closer this point is to the actual root, the better. In fact, if our point of tangency is chosen poorly, Newton's Method might never get close to the actual root, or it might take more repetitions than we want to use.

* Newton's Method only estimates one root at a time. If we had chosen a different point of tangency, we may have ended up at the other root of $f$ (in our example, $f$ has two roots).

Now let's develop the algorithm.
︡94fdda53-a340-433f-8172-8fa992a3d36d︡{"done":true,"md":"If we wanted to improve our estimate even more, then we could repeat the process again, using $x=\\frac{169}{408}$ as our new point of tangency.\n\nI hope you see from this short example that this process involves repetition of the same steps over and over with different numbers. It lends itself very easily to be made into an algorithm that can be automated.\n\nBefore we discuss this algorithm, I have two comments:\n\n* We have to start the process with a point of tangency (we used $\\frac{1}{2}$ in our example above). The closer this point is to the actual root, the better. In fact, if our point of tangency is chosen poorly, Newton's Method might never get close to the actual root, or it might take more repetitions than we want to use.\n\n* Newton's Method only estimates one root at a time. If we had chosen a different point of tangency, we may have ended up at the other root of $f$ (in our example, $f$ has two roots).\n\nNow let's develop the algorithm."}
︠ac6f237c-bda2-4857-8427-abc47f0ae572i︠
%md
## Generalizing Newton's Method

Given a function $f$ with at least one root, the first step is to get a ballpark estimate for the root to use as the x-coordinate of our first point of tangency.

We'll use a graph to get this initial estimate, which we'll call $x_0$.

Now we find the tangent line to $f$ when $x=x_0$:

$$TL(x)=f(x_0)+f'(x_0)(x-x_0)$$

Then we find the root of the tangent line by setting it equal to 0 and solving for $x$:

$$0=f(x_0)+f'(x_0)(x-x_0)$$

First, distribute:

$$0=f(x_0)+f'(x_0)\cdot x-f'(x_0)\cdot x_0$$

Then gather like terms:

$$f'(x_0)\cdot x_0-f(x_0)=f'(x_0)\cdot x$$

Now divide both sides by $f'(x_0)$:

$$\frac{f'(x_0)\cdot x_0-f(x_0)}{f'(x_0)}=x$$

And simplify:

$$x_0-\frac{f(x_0)}{f'(x_0)}=x$$

This is the root of the tangent line, so this becomes our new estimate for the root of $f$. Let's call it $x_1$. Thus,

$$x_1=x_0-\frac{f(x_0)}{f'(x_0)}$$

To improve our approximation, use $x=x_1$ as our new point of tangency and repeat the process. The algebra is exactly the same. Simply replace all the $x_0$ in the above equations with $x_1$.

What we get is a new approximation, $x_2$, given by

$$x_2=x_1-\frac{f(x_1)}{f'(x_1)}$$

In general, if we have repeated this process $n$ times to get an estimate $x_n$, then repeating the process again will give a new estimate, $x_{n+1}$ given by:

$$x_{n+1}=x_n-\frac{f(x_n)}{f'(x_n)}$$
︡583e8fcf-fe0a-4287-93ea-4f1541c5c36c︡{"done":true,"md":"## Generalizing Newton's Method\n\nGiven a function $f$ with at least one root, the first step is to get a ballpark estimate for the root to use as the x-coordinate of our first point of tangency.\n\nWe'll use a graph to get this initial estimate, which we'll call $x_0$.\n\nNow we find the tangent line to $f$ when $x=x_0$:\n\n$$TL(x)=f(x_0)+f'(x_0)(x-x_0)$$\n\nThen we find the root of the tangent line by setting it equal to 0 and solving for $x$:\n\n$$0=f(x_0)+f'(x_0)(x-x_0)$$\n\nFirst, distribute:\n\n$$0=f(x_0)+f'(x_0)\\cdot x-f'(x_0)\\cdot x_0$$\n\nThen gather like terms:\n\n$$f'(x_0)\\cdot x_0-f(x_0)=f'(x_0)\\cdot x$$\n\nNow divide both sides by $f'(x_0)$:\n\n$$\\frac{f'(x_0)\\cdot x_0-f(x_0)}{f'(x_0)}=x$$\n\nAnd simplify:\n\n$$x_0-\\frac{f(x_0)}{f'(x_0)}=x$$\n\nThis is the root of the tangent line, so this becomes our new estimate for the root of $f$. Let's call it $x_1$. Thus,\n\n$$x_1=x_0-\\frac{f(x_0)}{f'(x_0)}$$\n\nTo improve our approximation, use $x=x_1$ as our new point of tangency and repeat the process. The algebra is exactly the same. Simply replace all the $x_0$ in the above equations with $x_1$.\n\nWhat we get is a new approximation, $x_2$, given by\n\n$$x_2=x_1-\\frac{f(x_1)}{f'(x_1)}$$\n\nIn general, if we have repeated this process $n$ times to get an estimate $x_n$, then repeating the process again will give a new estimate, $x_{n+1}$ given by:\n\n$$x_{n+1}=x_n-\\frac{f(x_n)}{f'(x_n)}$$"}
︠8b53a246-f541-4f28-b814-6ef72143a687i︠
%md
## Example 2
Now we're ready to lay out an algorithm for Newton's Method.

As I go through the steps, I'll use the example of $f(x)=x^3+2x-1$.
︡79fd8d12-187d-4d07-9405-298f1c807f43︡{"md":"## Example 2\nNow we're ready to lay out an algorithm for Newton's Method.\n\nAs I go through the steps, I'll use the example of $f(x)=x^3+2x-1$.\n"}︡
︠d73fd147-2898-4024-ad82-d984ba90c37ci︠
%md
**Step 1** Define the function
︡ae350235-cd4c-4caf-afa0-1e51f8f0397e︡{"md":"**Step 1** Define the function\n"}︡
︠836c04af-ca2b-4a31-8b7c-36d6ac20ce47s︠
f(x)=x^3+2*x-1
︡204530ed-8036-4c60-8660-ab0564fff972︡{"done":true}︡
︠3c672ca1-c525-466d-a78d-4e5e8a5e7951i︠
%md
**Step 2** Choose an initial value by graphing the function
︡36c80e16-4c13-4c2a-9826-d96d825bf7a6︡{"md":"**Step 2** Choose an initial value by graphing the function\n"}︡
︠478f4f66-87cf-459f-a98e-914a1767b670s︠
plot(f,xmin=-5,xmax=5,ymin=-10,ymax=10)
︡ca5feafa-57c2-4743-b76f-dd0d4ca0a217︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/24953/tmp_va0Ik5.svg","show":true,"text":null,"uuid":"41b00b5c-3988-46a6-95d3-51c47fe4e948"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠f058fba0-a753-4083-93ff-6323e093f0f2i︠
%md
From this graph, we can see that $f$ has one (real) root, somewhere in the neighborhood of $x=\frac{1}{2}$.

We'll use this as our initial guess. I'm going to abandon subscripts to make it easier to do this in Sage. Instead, I'll call our estimate "$r$," and we'll replace $r$ with better approximations as we go:
︡96e4b56e-cadf-4045-ac38-11cb0657706e︡︡{"done":true,"md":"From this graph, we can see that $f$ has one (real) root, somewhere in the neighborhood of $x=\\frac{1}{2}$.\n\nWe'll use this as our initial guess. I'm going to abandon subscripts to make it easier to do this in Sage. Instead, I'll call our estimate \"$r$,\" and we'll replace $r$ with better approximations as we go:"}
︠e9dd2947-415e-497d-a814-1cfb29796e07s︠
r=1/2  #initial guess
︡cfd32fe6-38fe-4a96-a244-68d159b2f705︡︡{"done":true}
︠1dc7b0b6-d19d-48b6-9718-26cfdfd84e4ei︠
%md

**Step 3** Define the number of repetitions

Now we have to decide how many times we want to repeat the process. I'll call this number "$n$."
︡81fa1e1e-5a0f-4a7e-9f1b-b3dd956acc42︡{"md":"\n**Step 3** Define the number of repetitions\n\nNow we have to decide how many times we want to repeat the process. I'll call this number \"$n$.\"\n"}︡
︠637e37bd-553a-480f-96a2-a04777bfa375s︠
n=10    #number of repetitions
︡845f47b6-ef19-43cb-9cf6-df1d2b2ed02b︡︡{"done":true}
︠54f7af48-553d-4dd3-9240-717a6f98c48fi︠
%md
**Step 4** Define the derivative
︡03041776-093a-432c-a984-cccfd2700b5d︡{"md":"**Step 4** Define the derivative\n"}︡
︠3b6799dc-9b90-4f9f-91a9-932e64ad04c1s︠
df(x)=derivative(f,x)    #find the derivative
︡491124b8-69eb-45e3-8f57-727bdc46b63d︡︡{"done":true}
︠76ed0b9f-482a-47a1-a18a-19c00d3020abi︠
%md
**Step 5** Iterate Newton's Method
︡7a884822-778d-476c-b584-941b76ef43bb︡{"md":"**Step 5** Iterate Newton's Method\n"}︡
︠69e690d0-7dc3-4853-a2de-e3362e956ca4︠
for i in range(n):
    r=N(r-f(r)/df(r),digits=30)  #I will use N() to convert to decimal - it makes it run faster
    r
︡3999e587-ab8f-4372-af06-def4160f30d2︡︡{"stdout":"0.454545454545454545454545454545\n0.453398336679093776885574992831\n0.453397651516647791761892775232\n0.453397651516403767644746569954\n0.453397651516403767644746539000\n0.453397651516403767644746539000\n0.453397651516403767644746539000\n0.453397651516403767644746539000\n0.453397651516403767644746539000\n0.453397651516403767644746539000\n"}︡{"done":true}
︠91eb08f4-d8a7-4db0-989f-870a385c5f1ai︠
%md
Our estimates get better as we go down the list, so our best estimate for the root of $f$ is $x\approx0.453397651516404$ (rounded to 15 decimal places).
︡14b536ee-4201-4fbe-bda8-ca8da4c711d5︡︡{"done":true,"md":"Our estimates get better as we go down the list, so our best estimate for the root of $f$ is $x\\approx0.453397651516404$ (rounded to 15 decimal places)."}
︠17345e63-0e28-40c1-b24e-9d93e473f768i︠
%md
For comparison, the exact solution is $$\left(\frac{1}{18}\sqrt{59}\sqrt{3} + \frac{1}{2}\right)^{1/3} - \frac{\frac{2}{3}}{\left(\frac{1}{18}\sqrt{59}\sqrt{3} + \frac{1}{2}\right)^{1/3}}\approx0.453397651516404$$

To 15 decimal places, our estimate matches the actual root exactly - and that's after only 5 repetitions.
︡b62163b9-fee8-4444-9f32-93d19383a082︡︡{"done":true,"md":"For comparison, the exact solution is $$\\left(\\frac{1}{18}\\sqrt{59}\\sqrt{3} + \\frac{1}{2}\\right)^{1/3} - \\frac{\\frac{2}{3}}{\\left(\\frac{1}{18}\\sqrt{59}\\sqrt{3} + \\frac{1}{2}\\right)^{1/3}}\\approx0.453397651516404$$\n\nTo 15 decimal places, our estimate matches the actual root exactly - and that's after only 5 repetitions."}
︠085a4c45-3d44-4c9d-bcf6-51ce182a7b6ci︠
%md
**Note 1** It is possible to use Newton's Method to find complex roots as well (just start with a complex guess), but we will not do this in this class.

**Note 2** As mentioned above, Newton's Method does not always work. An obvious example is when our initial guess is a local minimum or maximum. Then we get a horizontal tangent line, which has no roots. Another problem arises if the function has a limited domain; in this case, the root of the tangent line may end up outside the domain of the function.
︡75ffdab1-6007-4ac5-9dbc-3da87ca4c2a7︡{"done":true,"md":"**Note 1** It is possible to use Newton's Method to find complex roots as well (just start with a complex guess), but we will not do this in this class.\n\n**Note 2** As mentioned above, Newton's Method does not always work. An obvious example is when our initial guess is a local minimum or maximum. Then we get a horizontal tangent line, which has no roots. Another problem arises if the function has a limited domain; in this case, the root of the tangent line may end up outside the domain of the function."}
︠e6d17dcb-9014-4b7b-835c-f7da712eefdbi︠
%md
## Example 3

Here's an example of a poor choice of initial guess. I have chosen an initial guess of $x=0.05$ which is close to the minimum at $x=0$. Although the root of the function is around $1.5$, the root of the tangent line is about $20$.
︡105ccc53-27d8-4f49-ae89-02e91c98d05f︡{"done":true,"md":"## Example 3\n\nHere's an example of a poor choice of initial guess. I have chosen an initial guess of $x=0.05$ which is close to the minimum at $x=0$. Although the root of the function is around $1.5$, the root of the tangent line is about $20$."}
︠1bf2efea-985c-4f5d-a44c-9dea12a8b1c2s︠
f(x)=x^2-2
df(x)=derivative(f,x)
TL(x)=f(.05)+df(.05)*(x-.05)
plot(f,xmin=-5,xmax=10,ymax=10)+plot(TL,xmin=-5,xmax=20,color='red')
︡4b7be14b-b06e-4d5a-87e4-2b03a48cdbe2︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/24698/tmp_bnS3lI.svg","show":true,"text":null,"uuid":"acdd5cad-a451-4aa5-8772-9006a5ea240a"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠8251a132-7ac5-4c11-add0-4afa371386aei︠
%md
In this case, Newton's Method will eventually get back to the root, but it requires a few more repetitions.
︡8f3d1dd8-7b78-4006-973e-6aa6e8199309︡{"md":"In this case, Newton's Method will eventually get back to the root, but it requires a few more repetitions.\n"}︡
︠afefe8b4-9c11-47ff-8338-e3818eae9579s︠
f(x)=x^2-2
df(x)=derivative(f,x)
r=.05
n=10
for i in range(n):
    r=N(r-f(r)/df(r),digits=30)
    r
︡fcd9f03d-1219-4675-88fa-84ce3a7f0e15︡︡{"stdout":"20.0250000000000021316282072803\n10.0624375780274667284134369772\n5.13059828749466002723375156069\n2.76020818631209362823054307491\n1.74239560615097680133916978411\n1.44512027881510583654836619356\n1.41454406258654789561762947488\n1.41421360098284711712728104594\n1.41421356237309557584829389812\n1.41421356237309504880168872421\n"}︡{"done":true}
︠553fa1b2-a0e8-4714-9cdf-cffaf7c5ae70s︠
N(sqrt(2),digits=30) #This is the exact answer for comparison.
︡39a4022a-740a-408d-9f29-1ac16abe8e96︡︡{"stdout":"1.41421356237309504880168872421\n"}︡{"done":true}
︠c9bde3ac-73aa-4dba-8226-bfd8b6a58686i︠
%md
## Example 4

Here's another poor choice of initial guess. Consider the function $f(x)=\ln(3x)$. I'm going to choose an initial guess of $x=1$.

Below is a graph of $f$ with the tangent line at $x=1$.

Notice that the root of the tangent line is a negative number, which is not in the domain of $f$. That means we can't find a new tangent line using that root for the point of tangency.
︡2a0bf27d-c48c-43af-9fa5-fb9cef09bcce︡{"md":"## Example 4\n\nHere's another poor choice of initial guess. Consider the function $f(x)=\\ln(3x)$. I'm going to choose an initial guess of $x=1$.\n\nBelow is a graph of $f$ with the tangent line at $x=1$.\n\nNotice that the root of the tangent line is a negative number, which is not in the domain of $f$. That means we can't find a new tangent line using that root for the point of tangency.\n"}︡
︠5f533488-8c43-431d-a5b8-7c27e4aba487s︠
f(x)=ln(3*x)
df(x)=derivative(f,x)
TL(x)=f(1)+df(1)*(x-1)
plot(f,xmin=0,xmax=3)+plot(TL,xmin=-1,xmax=3,color='red')
︡bfbbda0e-de0e-45f3-9ca1-9051939c2bd2︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/24953/tmp_NVJsSS.svg","show":true,"text":null,"uuid":"fe9fafb4-27f3-46ee-a36d-67015b39181b"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠745aef12-e517-4075-b8e6-aafe9bc1f886i︠
%md
If we try Newton's Method, we end up with complex numbers!
︡70beed93-bf04-400a-82b6-8b501b74b7d0︡{"md":"If we try Newton's Method, we end up with complex numbers!\n"}︡
︠daf5f9a9-800c-4b42-9380-afa47335dd86s︠
f(x)=ln(3*x)
df(x)=derivative(f,x)
r=1
n=10
for i in range(n):
    r=N(r-f(r)/df(r),digits=30)
    r
︡e76bc13d-0002-494a-ab67-0cfe1e7ac86a︡︡{"stdout":"-0.0986122886681096913952452369225\n-0.218716840163818113193686201622 + 0.309799641633409422971177200538*I\n0.486573380029164645618123813404 + 0.747851351286347649636703893786*I\n0.750863295538137729101406222465 - 0.472094422407517673683036387351*I\n0.281017333228159361240218105002 + 0.411360592167483474474911835095*I\n0.567723052665054031979560084438 - 0.0269370880736900299716388852836*I\n0.266054602422544386407234133316 + 0.0143538498950625204601308076185*I\n0.326421345527530860589818981361 + 0.00322899526648179221542540133414*I\n0.333277139958278835460959346320 + 0.0000676076180662915803991932452887*I\n0.333333335453865043806626867823 + 1.13977978161361846019880300147e-8*I\n"}︡{"done":true}
︠efb79dab-4f4b-4454-ab38-c7d25d777baai︠
%md
## Newton's Method in One Cell

You can copy and paste the input below to implement Newton's Method.

Change the function $f$, then hit run.

If no root is visible, adjust the plot window and run until you find a root.

Once you see a root, choose an initial guess in the ballpark of the root, change the number $r$, and hit run.

## Example 5

Find the roots of $f(x)=x^2-2$.
︡189bd9f6-aa83-4068-b5ce-7e273b030726︡{"md":"## Newton's Method in One Cell\n\nYou can copy and paste the input below to implement Newton's Method.\n\nChange the function $f$, then hit run.\n\nIf no root is visible, adjust the plot window and run until you find a root.\n\nOnce you see a root, choose an initial guess in the ballpark of the root, change the number $r$, and hit run.\n\n## Example 5\n\nFind the roots of $f(x)=x^2-2$.\n"}︡
︠e2b5fbf2-3553-4ac1-9f60-155c8627a2afs︠
f(x)=x^2-2                                 #change this (original function)
plot(f,xmin=-10,xmax=10,ymin=-10,ymax=10)  #you may need to adjust the plot window
r=1.5                                        #change this based on the graph (initial guess)
n=10                                       #number of iterations
df(x)=derivative(f,x)                      #only change the rest if you change the function's name
print ''
for i in range(n):
    r=N(r-f(r)/df(r),digits=30)
    r
︡1221144c-6946-4010-b567-e6a1713e452b︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/14479/tmp_dxEmui.svg","show":true,"text":null,"uuid":"d6e9e92b-702b-4a68-baa3-637dcb39b5e8"},"once":false}︡{"stdout":"\n"}︡{"stdout":"1.41666666666666674068153497501\n1.41421568627450980404962203283\n1.41421356237468991062629577120\n1.41421356237309504880168962350\n1.41421356237309504880168872421\n1.41421356237309504880168872421\n1.41421356237309504880168872421\n1.41421356237309504880168872421\n1.41421356237309504880168872421\n1.41421356237309504880168872421\n"}︡{"done":true}︡
︠c61e65f1-175e-4dca-86ef-87a101bc8259i︠
%md
We found a root near $1.4142$.

Notice how the answers stabilize after a few repetitions. This suggests we have the right answer.

For this example, the graph shows two roots. We have found the positive root; to find the negative root, change the initial guess and run it again.
︡d44a91fa-01cd-4c60-a175-05d24e6da278︡{"md":"We found a root near $1.4142$.\n\nNotice how the answers stabilize after a few repetitions. This suggests we have the right answer.\n\nFor this example, the graph shows two roots. We have found the positive root; to find the negative root, change the initial guess and run it again.\n"}︡
︠1b7625d5-4b18-4c54-a5bc-815d3b6c0900s︠
f(x)=x^2-2                                 #change this (original function)
plot(f,xmin=-10,xmax=10,ymin=-10,ymax=10)  #you may need to adjust the plot window
r=-1.5                                        #change this based on the graph (initial guess)
n=10                                       #number of iterations
df(x)=derivative(f,x)                      #only change the rest if you change the function's name
print ''
for i in range(n):
    r=N(r-f(r)/df(r),digits=30)
    r
︡96904868-42ab-466b-aac9-2d10702967d4︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/14479/tmp_WiZQ0U.svg","show":true,"text":null,"uuid":"fd55f432-17a4-48f1-8efa-dbaabb97d0d4"},"once":false}︡{"stdout":"\n"}︡{"stdout":"-1.41666666666666674068153497501\n-1.41421568627450980404962203283\n-1.41421356237468991062629577120\n-1.41421356237309504880168962350\n-1.41421356237309504880168872421\n-1.41421356237309504880168872421\n-1.41421356237309504880168872421\n-1.41421356237309504880168872421\n-1.41421356237309504880168872421\n-1.41421356237309504880168872421\n"}︡{"done":true}︡
︠7b9a3d82-2cff-4127-8e22-4f5966be2522i︠
%md
Now we have found the second root, around $-1.4142$.
︡a03b8e83-0d4f-471a-bbbc-21deeb0ce7ab︡{"md":"Now we have found the second root, around $-1.4142$.\n"}︡
︠0a859af1-131d-4466-9dfb-9877f9eef520i︠
%md
## Using Newton's Method to find a point of intersection
If you have two functions, $f_1$ and $f_2$, and you want to know where they cross, then define a new function $f=f_1-f_2$ and find the roots of $f$. This gives you the x-coordinate of a point of intersection. Plug this into either $f_1$ or $f_2$ to get the corresponding y-coordinate.
︡71ebab24-87bf-471b-b60e-9e377d2c2275︡{"done":true,"md":"## Using Newton's Method to find a point of intersection\nIf you have two functions, $f_1$ and $f_2$, and you want to know where they cross, then define a new function $f=f_1-f_2$ and find the roots of $f$. This gives you the x-coordinate of a point of intersection. Plug this into either $f_1$ or $f_2$ to get the corresponding y-coordinate."}
︠5f9195b4-8643-45f9-80ce-21b1d1483cb7i︠
%md
## Example 6

Find the points of intersection of $f_1(x)=\sqrt[3]{2\sin(x)}$ and $f_2(x)=e^{-2x}$ for $0\le x \le \pi$.
︡0930eb0f-d34e-41f8-84d2-a050e043caae︡{"done":true,"md":"## Example 6\n\nFind the points of intersection of $f_1(x)=\\sqrt[3]{2\\sin(x)}$ and $f_2(x)=e^{-2x}$ for $0\\le x \\le \\pi$."}
︠f8323f5e-fdf5-45cf-9e40-9fe44eb6fb84s︠
f1(x)=(2*sin(x))^(1/3)
f2(x)=e^(-2*x)
f(x)=f1(x)-f2(x)       #find the root of f1-f2
plot(f,xmin=0,xmax=pi) #I have adjusted the window
r=.2                   #Based on the graph, one root is close to 0.2
n=10
df(x)=derivative(f,x)
print ''
for i in range(n):
    r=N(r-f(r)/df(r),digits=30)
    r
︡e09d730b-bd86-40aa-a5c5-87a2b2786dab︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/14479/tmp_MU1nfG.svg","show":true,"text":null,"uuid":"1bd87a11-d976-499e-9e77-e60e6cef5868"},"once":false}︡{"stdout":"\n"}︡{"stdout":"0.174564614046446152487753889929\n0.175422261883443201580220134114\n0.175423347113948424255917239990\n0.175423347115679360373198129103\n0.175423347115679360373202532593\n0.175423347115679360373202532593\n0.175423347115679360373202532593\n0.175423347115679360373202532593\n0.175423347115679360373202532593\n0.175423347115679360373202532593\n"}︡{"done":true}︡
︠b706e8f3-4876-49f6-8ea0-d1314f831b87i︠
%md
This tells us that the x-coordinate of one point of intersection is approximately $0.175423347115679$.

To find the y-coordinate, plug this into $f_1$ or $f_2$. I'll plug it into both as a check (I'd better get the same answer).
︡33a124e2-9324-4888-8c19-3ee7b503bc9e︡{"done":true,"md":"This tells us that the x-coordinate of one point of intersection is approximately $0.175423347115679$.\n\nTo find the y-coordinate, plug this into $f_1$ or $f_2$. I'll plug it into both as a check (I'd better get the same answer)."}
︠80339143-6843-4104-91e1-06299a5c3ba8s︠
f1(x)=(2*sin(x))^(1/3)
f2(x)=e^(-2*x)
N(f1(0.175423347115679360373202532593),digits=30)
N(f2(0.175423347115679360373202532593),digits=30)
︡61730d36-6ddf-4b4a-ad32-0c96892f3f96︡︡{"stdout":"0.704091686899284448083383801316\n"}︡{"stdout":"0.704091686899284448083383801316\n"}︡{"done":true}
︠0a92e18d-5d53-4610-b448-106ff2fcb724i︠
%md
So our point of intersection is approximately $(0.175423347115679,0.704091686899284)$.

︡c9b5705e-478b-47e9-9720-be9336180cc2︡{"done":true,"md":"So our point of intersection is approximately $(0.175423347115679,0.704091686899284)$."}
︠43090352-09df-434d-b9c6-e736cb1a1d39i︠
%md

The second root is hard to approximate with Newton's Method (at least in Sage), since Sage does not allow fractional powers of negative numbers (this happens when $x$ goes past $\pi$). We need a very good initial guess to avoid ending up with complex numbers.
︡8289d82e-faec-409b-ad20-c31f3590dd3c︡{"done":true,"md":"\nThe second root is hard to approximate with Newton's Method (at least in Sage), since Sage does not allow fractional powers of negative numbers (this happens when $x$ goes past $\\pi$). We need a very good initial guess to avoid ending up with complex numbers."}
︠2c1149e2-6ec9-4599-ac0a-77612e02e36c︠
f1(x)=(2*sin(x))^(1/3)
f2(x)=e^(-2*x)
f(x)=f1(x)-f2(x)
plot(f,xmin=0,xmax=pi)
r=3.14159265
n=10
df(x)=derivative(f,x)
print ''
for i in range(n):
    r=N(r-f(r)/df(r),digits=30)
    r
︡55158de3-b655-4229-a1be-52f55ae24afa︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/14479/tmp_L53nyE.svg","show":true,"text":null,"uuid":"bab61ea7-6391-4040-b50c-82119faf548a"},"once":false}︡{"stdout":"\n"}︡{"stdout":"3.14159265034448884600068852662\n3.14159265033359929124197408890\n3.14159265033358710682062112553\n3.14159265033358710680542340382\n3.14159265033358710680542340382\n3.14159265033358710680542340382\n3.14159265033358710680542340382\n3.14159265033358710680542340382\n3.14159265033358710680542340382\n3.14159265033358710680542340382\n"}︡{"done":true}︡
︠fd985ab6-0f81-4e37-b19d-9d0b03ccbc22i︠
%md
This is the x-coordinate; now find the y-coordinate:
︡1dbdcb31-bcb8-4b8a-93e0-838bfae24c0d︡{"done":true,"md":"This is the x-coordinate; now find the y-coordinate:"}
︠183a7adc-9e18-49bb-a8a9-aeb6563eba1fs︠
N(f1(3.14159265033358710680542340382),digits=30)
N(f2(3.14159265033358710680542340382),digits=30)
︡3aef542c-51e3-4a6e-b9b2-615221e23976︡{"stdout":"0.00186744274386954580104325212193\n"}︡{"stdout":"0.00186744274386954580104327322816\n"}︡{"done":true}︡
︠1bf169c7-6a36-49ef-92a5-ff53b1e773aei︠
%md
So our second point of intersection is approximately $(3.141592650333587,0.001867442743870)$.

Here's a graph of the two functions:
︡c6b19d70-e44c-423b-8bc0-3ae202766c7e︡{"done":true,"md":"So our second point of intersection is approximately $(3.141592650333587,0.001867442743870)$.\n\nHere's a graph of the two functions:"}
︠64fedad2-f95d-4b06-8175-8b05eff35ef8s︠
f1(x)=(2*sin(x))^(1/3)
f2(x)=e^(-2*x)
plot(f1,xmin=0,xmax=pi)+plot(f2,xmin=0,xmax=pi,color='red')+point((0.175423347115679,0.704091686899284),size=25,color='black')+point((3.141592650333587,0.001867442743870),size=25,color='black')
︡b15b63a0-837c-4811-9a51-220b695215ca︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/14479/tmp_TcAHmV.svg","show":true,"text":null,"uuid":"b96dc21a-9f0d-460a-a3a0-5d14d23a2a4c"},"once":false}︡{"done":true}︡
︠e2eacb7c-5063-406e-a702-87e74c88c6ee︠









