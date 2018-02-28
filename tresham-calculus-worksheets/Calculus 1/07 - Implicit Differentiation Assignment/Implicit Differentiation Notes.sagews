︠7d3d4278-6f13-41ab-88ca-62ce00c70c0ci︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡2819764c-f0b5-4591-bb21-3c1a889bdeed︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠6b7c85f5-f784-4b68-8cc3-b26b47b0f4f6i︠
%md
### Prerequisites:

* Intro to Sage
* Tangent Lines
* Differentiation
︡5439d442-18f0-49f4-a50a-a3d3d16aa322︡{"done":true,"md":"### Prerequisites:\n\n* Intro to Sage\n* Tangent Lines\n* Differentiation"}
︠d5f616c6-ecb8-4ee4-b125-d59053e6be4di︠
%md
# Implicit Differentiation

In this lab we will explore implicit functions (of two variables), including their graphs, derivatives, and tangent lines.

An example of an implicit function is given by the equation $x^2+y^2=25$. This equation provides an implicit relation between $x$ and $y$. Compare this to the equation $\displaystyle y=\sqrt{x^2-25}$, which gives $y$ explicitly in terms of $x$.
︡64486257-2153-431f-aded-0b9351754c23︡{"done":true,"md":"# Implicit Differentiation\n\nIn this lab we will explore implicit functions (of two variables), including their graphs, derivatives, and tangent lines.\n\nAn example of an implicit function is given by the equation $x^2+y^2=25$. This equation provides an implicit relation between $x$ and $y$. Compare this to the equation $\\displaystyle y=\\sqrt{x^2-25}$, which gives $y$ explicitly in terms of $x$."}
︠d6624176-2a2a-48d7-a8a6-b5860f61d8f2i︠
%md
## Graphing

Graphing an implicit function is fairly simple in Sage using the implicit_plot command. This command requires three arguments: an equation (using double equal sign), a plot range for the first variable, and a plot range for the second variable. I will add the optional "axes=true" and "frame=false" so that axes will be plotted instead of a frame.

## Example 1

Graph $x^2+y^2=25$ (circle of radius 5 centered at the origin).


︡ba743d56-ceef-4147-8c7a-66326ba1d150︡{"done":true,"md":"## Graphing\n\nGraphing an implicit function is fairly simple in Sage using the implicit_plot command. This command requires three arguments: an equation (using double equal sign), a plot range for the first variable, and a plot range for the second variable. I will add the optional \"axes=true\" and \"frame=false\" so that axes will be plotted instead of a frame.\n\n## Example 1\n\nGraph $x^2+y^2=25$ (circle of radius 5 centered at the origin)."}
︠bcd1c885-b4e0-4e59-b20d-5934bbc8c916s︠
#Do not forget to declare variables
%var y
implicit_plot(x^2+y^2==25,(x,-5,5),(y,-5,5),axes=true,frame=false)
#Note the double equal sign
#Notice that x and y both take values from -5 to 5
︡7f643f0f-dbe3-4d7c-853c-5f533d3535dd︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/24722/tmp_aeAEhZ.svg","show":true,"text":null,"uuid":"ce6c20d1-d152-4b77-bccf-5a67cd19c358"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠8cd91509-a24d-4e86-882c-8edbed32af92i︠
%md
## Example 2

Graph $x(x^2+y^2)+(2x-y)y=0$.
︡049a59dc-d01f-4693-ba28-660bd2c89f29︡{"md":"## Example 2\n\nGraph $x(x^2+y^2)+(2x-y)y=0$.\n"}︡
︠f6f44b65-7bfc-42d5-a5f2-33fcbce4ad7bs︠
%var y
implicit_plot(x*(x^2+y^2)+(2*x-y)*y==0,(x,-2,2),(y,-2,2),axes=true,frame=false)  #do not forget the double equal sign
︡2c24eb8e-84d5-4cdc-b4aa-9bd38b662a3c︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/24722/tmp_pjWWo2.svg","show":true,"text":null,"uuid":"4df666f7-8ea3-40fb-8fcf-961be239111d"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠c1c0fd02-55f9-4688-81b5-43addc37992fi︠
%md
## Derivatives

Now that we can graph these functions, we want to compute the derivative of $y$ with respect to $x$. This assumes that $y$ is a function of $x$, so we need to tell Sage to assume this as well:
︡b15f364a-583c-4645-b88e-9fffe42f4314︡{"md":"## Derivatives\n\nNow that we can graph these functions, we want to compute the derivative of $y$ with respect to $x$. This assumes that $y$ is a function of $x$, so we need to tell Sage to assume this as well:\n"}︡
︠a6f1fcb1-b1fe-4b25-a425-6b7e5950e477s︠
y=function('y')(x)
︡be710235-18bd-40b1-bfd8-c96a1f0db609︡{"done":true}︡
︠ab56ca03-539e-4932-ae80-81be0e845a9di︠
%md
Now we can take the derivative.

## Example 3

Find $\frac{dy}{dx}$ if $x^2+y^2=25$.
︡aa12d163-3f3a-4c00-9cfa-dc7ae178fb8b︡{"done":true,"md":"Now we can take the derivative.\n\n## Example 3\n\nFind $\\frac{dy}{dx}$ if $x^2+y^2=25$."}
︠151b116d-5f5f-4265-9020-8d74a527825ci︠
%md
First, we take the derivative of the whole equation, then we'll solve for $\frac{dy}{dx}$.
︡65f004a9-b652-44bc-a59b-015d00262572︡{"done":true,"md":"First, we take the derivative of the whole equation, then we'll solve for $\\frac{dy}{dx}$."}
︠110260e6-10a6-4942-b401-ed3050960023s︠
derivative(x^2+y^2==25,x)
show(_)
︡95eb5d68-7bdd-4273-a1d5-caa29500db9d︡{"stdout":"2*y(x)*diff(y(x), x) + 2*x == 0\n"}︡{"html":"<div align='center'>$\\displaystyle 2 \\, y\\left(x\\right) \\frac{\\partial}{\\partial x}y\\left(x\\right) + 2 \\, x = 0$</div>"}︡{"done":true}︡
︠8c38953c-cdfe-4878-81ed-f0c3be2b41fbi︠
%md
The diff(y(x),x) is  the derivative $\frac{dy}{dx}$.

The curvy-looking "d" you get when you use show is the symbol for a partial derivative (you'll learn about those in Calc 3). Since this is Calc 1, you should just think of those as a regular "d."
︡5994987f-7159-4674-9458-b809aa87ffad︡{"done":true,"md":"The diff(y(x),x) is  the derivative $\\frac{dy}{dx}$.\n\nThe curvy-looking \"d\" you get when you use show is the symbol for a partial derivative (you'll learn about those in Calc 3). Since this is Calc 1, you should just think of those as a regular \"d.\""}
︠25687821-d593-4ccc-b478-a7637e52ac31i︠
%md
Now we can solve for the derivative:
︡ed4cb6a4-a008-4445-9412-72dc7bebabac︡{"md":"Now we can solve for the derivative:\n"}︡
︠c0c32f4e-08b3-473e-ba5c-8bc444b67a5bs︠
solve(derivative(x^2+y^2==25,x),derivative(y,x))
show(_)
︡107792ae-7f52-408e-baa7-37dd350e1380︡{"stdout":"[diff(y(x), x) == -x/y(x)]\n"}︡{"html":"<div align='center'>[$\\displaystyle \\frac{\\partial}{\\partial x}y\\left(x\\right) = -\\frac{x}{y\\left(x\\right)}$]</div>"}︡{"done":true}︡
︠8dceed6d-75cc-44b0-a9c4-5cbc8a02b452i︠
%md
This tells us that $\displaystyle\frac{dy}{dx}=-\frac{x}{y}$. [Note: Sage is treating $y$ as a function of $x$, so it uses function notation $y=y(x)$. We usually write just $y$.]
︡2e91969c-0447-4778-879a-23b22afbb1ae︡{"md":"This tells us that $\\displaystyle\\frac{dy}{dx}=-\\frac{x}{y}$. [Note: Sage is treating $y$ as a function of $x$, so it uses function notation $y=y(x)$. We usually write just $y$.]"}︡
︠2e81353e-0cab-42c7-9938-0c04d820ace9i︠
%md
## Example 4

Find $\frac{dy}{dx}$ when $x(x^2+y^2)+(2x-y)y=0$.
︡5cd50193-c78d-4cb9-b46f-4b703bb36e16︡︡{"done":true,"md":"## Example 4\n\nFind $\\frac{dy}{dx}$ when $x(x^2+y^2)+(2x-y)y=0$."}
︠6b8575d3-66eb-4306-a35a-71d89800b93ds︠
y=function('y')(x)
solve(derivative(x*(x^2+y^2)+(2*x-y)*y==0,x),derivative(y,x)) #do not forget the ==
show(_)
︡4b49587e-0d91-405d-bab6-cf48708a212d︡{"stdout":"[diff(y(x), x) == -1/2*(3*x^2 + y(x)^2 + 2*y(x))/((x - 1)*y(x) + x)]\n"}︡{"html":"<div align='center'>[$\\displaystyle \\frac{\\partial}{\\partial x}y\\left(x\\right) = -\\frac{3 \\, x^{2} + y\\left(x\\right)^{2} + 2 \\, y\\left(x\\right)}{2 \\, {\\left({\\left(x - 1\\right)} y\\left(x\\right) + x\\right)}}$]</div>"}︡{"done":true}︡
︠a6e6df80-1c21-4091-b597-7f467c449e6bi︠
%md
So $\displaystyle\frac{dy}{dx}=-\frac{3x^2+y^2+2y}{2((x-1)y+x)}$.
︡a3d439f6-205c-4d38-80c0-273298ca2522︡{"md":"So $\\displaystyle\\frac{dy}{dx}=-\\frac{3x^2+y^2+2y}{2((x-1)y+x)}$.\n"}︡
︠037f2fb5-3b31-490f-af8b-913d17626e95i︠
%md
## Tangent Lines

Now that we can find the derivative of an implicit function, we can also find tangent lines.

Recall that the line tangent to a function $f$ at the point $(x_0,f(x_0))$ has equation $y=f(x_0)+f'(x_0)(x-x_0)$.

## Example 5

Find an equation for the line tangent to the circle given by $x^2+y^2=25$ at the point $(3,4)$.
︡0f5d1500-1a68-46e1-a074-d115d588d85c︡{"done":true,"md":"## Tangent Lines\n\nNow that we can find the derivative of an implicit function, we can also find tangent lines.\n\nRecall that the line tangent to a function $f$ at the point $(x_0,f(x_0))$ has equation $y=f(x_0)+f'(x_0)(x-x_0)$.\n\n## Example 5\n\nFind an equation for the line tangent to the circle given by $x^2+y^2=25$ at the point $(3,4)$."}
︠5bf7e3d4-19bb-4881-8433-3da61b2c2dcei︠
%md
Above we found $\displaystyle\frac{dy}{dx}=-\frac{x}{y}$. So the slope of the tangent line at $(3,4)$ is $-\frac{3}{4}$.

Thus, an equation for the tangent line is $y=4-\frac{3}{4}(x-3)$.

Let's graph the implicit function and the tangent line.
︡d38ba534-70c6-498c-b434-32c168504129︡{"done":true,"md":"Above we found $\\displaystyle\\frac{dy}{dx}=-\\frac{x}{y}$. So the slope of the tangent line at $(3,4)$ is $-\\frac{3}{4}$.\n\nThus, an equation for the tangent line is $y=4-\\frac{3}{4}(x-3)$.\n\nLet's graph the implicit function and the tangent line."}
︠38daceba-7154-40ba-a22c-8235ba3316c4s︠
#Before plotting, we need to "reset" the variable y
%var y
implicit_plot(x^2+y^2==25,(x,-5,5),(y,-5,5),axes=true,frame=false)+plot(4-(3/4)*(x-3),xmin=-5,xmax=6,ymax=6,color='red')+point((3,4),color='black',size=25)
︡9f831537-1e6e-4d2f-bbb7-243727e07447︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/23186/tmp_Z_BMsO.svg","show":true,"text":null,"uuid":"541056df-f75a-4502-86bd-8b7fbd873385"},"once":false}︡{"done":true}︡
︠ad8fa3d5-6e82-41da-b341-9739595f69a6i︠
%md
## Example 6

Find an equation for the tangent line to the graph of $x(x^2+y^2)+(2x-y)y=0$ at the point $(1,-\frac{1}{2})$.
︡f69d0471-4a5a-4eea-95a7-a36cbcd502e2︡{"done":true,"md":"## Example 6\n\nFind an equation for the tangent line to the graph of $x(x^2+y^2)+(2x-y)y=0$ at the point $(1,-\\frac{1}{2})$."}
︠519f2841-9e1a-4549-bef2-c4cc9e824c28i︠
%md
We found the derivative above: $\displaystyle\frac{dy}{dx}=-\frac{3x^2+y^2+2y}{2((x-1)y+x)}$.

Now we need to substitute $x=1$ and $y=-\frac{1}{2}$.

I will copy and paste this derivative from the calculation above, and then I will replace x with $1$ and y(x) with $-\frac{1}{2}$.
︡0ec3cae8-bea0-48bb-913c-85385d750fd9︡{"done":true,"md":"We found the derivative above: $\\displaystyle\\frac{dy}{dx}=-\\frac{3x^2+y^2+2y}{2((x-1)y+x)}$.\n\nNow we need to substitute $x=1$ and $y=-\\frac{1}{2}$.\n\nI will copy and paste this derivative from the calculation above, and then I will replace x with $1$ and y(x) with $-\\frac{1}{2}$."}
︠512c9fe9-4c53-4d99-a647-309f4f90c4ees︠
-1/2*(3*1^2 + (-1/2)^2 + 2*(-1/2))/((1 - 1)*(-1/2) + 1)   #notice the parentheses around -1/2
︡2d21034c-f21f-463b-bc27-a9c2be8fb0b1︡{"stdout":"-9/8\n"}︡{"done":true}︡
︠a1986c55-c4b1-4008-af14-a41df4cd355ai︠
%md
Now that we have the slope, we can find an equation of the tangent line: $y=-\frac{1}{2}-\frac{9}{8}(x-1)$.

Let's check our answer by graphing:
︡8b794ad1-582c-469c-a13a-00b7c09fd3f1︡{"md":"Now that we have the slope, we can find an equation of the tangent line: $y=-\\frac{1}{2}-\\frac{9}{8}(x-1)$.\n\nLet's check our answer by graphing:\n"}︡
︠0e5073dd-75c9-4d83-ae8e-6a0db29ce4f9s︠
%var y
implicit_plot(x*(x^2+y^2)+(2*x-y)*y==0,(x,-2,2),(y,-2,2),axes=true,frame=false)+plot(-1/2-9/8*(x-1),xmin=-1,xmax=2,color='red')+point((1,-1/2),color='black',size=25)
︡3b6f2880-239c-4edd-ad2a-b2499f5c8a9e︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/23186/tmp_fzJln9.svg","show":true,"text":null,"uuid":"2fc6b194-f99b-4c3a-97e8-8f2959baf9b2"},"once":false}︡{"done":true}︡
︠35f8bb1c-b3c0-4974-860e-10afedcb1904i︠
%md
## Example 7 (follow this example for your assignment)

Here is one final example that puts all the pieces together.

Consider $\displaystyle\left(x^2+y^2\right)^2+12x^2y=\left(\frac{3}{2}y\right)^3$

Find the derivative, find the tangent line at $(a,b)=(0.5832,2)$, and graph the curve and tangent line.
︡e2c29bf1-c00d-44a5-bbdd-e7aa48f7910d︡{"done":true,"md":"## Example 7 (follow this example for your assignment)\n\nHere is one final example that puts all the pieces together.\n\nConsider $\\displaystyle\\left(x^2+y^2\\right)^2+12x^2y=\\left(\\frac{3}{2}y\\right)^3$\n\nFind the derivative, find the tangent line at $(a,b)=(0.5832,2)$, and graph the curve and tangent line."}
︠14d07f5e-25be-4088-be93-ee5819ee493di︠
%md
First, we find the derivative.
︡329a115a-6259-4640-a38d-e7d72e2f11af︡{"done":true,"md":"First, we find the derivative."}
︠e56dc5ee-29ca-48ba-b9a9-4a3c5a3aeb91s︠
y=function('y')(x)
solve(derivative((x^2+y^2)^2+12*x^2*y==(3/2*y)^3,x),derivative(y,x))
show(_)
︡1398a50f-ca04-4545-bc70-dfbb036ae5ac︡{"stdout":"[diff(y(x), x) == -32*(x^3 + x*y(x)^2 + 6*x*y(x))/(32*x^2*y(x) + 32*y(x)^3 + 96*x^2 - 81*y(x)^2)]\n"}︡{"html":"<div align='center'>[$\\displaystyle \\frac{\\partial}{\\partial x}y\\left(x\\right) = -\\frac{32 \\, {\\left(x^{3} + x y\\left(x\\right)^{2} + 6 \\, x y\\left(x\\right)\\right)}}{32 \\, x^{2} y\\left(x\\right) + 32 \\, y\\left(x\\right)^{3} + 96 \\, x^{2} - 81 \\, y\\left(x\\right)^{2}}$]</div>"}︡{"done":true}︡
︠14ec9294-2a53-412b-80e6-69b676f435b2i︠
%md
Now we define "a" and "b," copy and paste the derivative, and replace x with a and y(x) with b.
︡f4f2ac3d-85ae-4803-a719-9636d6b3fbc3︡{"done":true,"md":"Now we define \"a\" and \"b,\" copy and paste the derivative, and replace x with a and y(x) with b."}
︠a312a7f1-2d78-4b8f-b4ba-a492f22ddb1as︠
a=0.5832   #x-coordinate of point of tangency
b=2        #y-coordinate of point of tangency
-32*(a^3 + a*b^2 + 6*a*b)/(32*a^2*b + 32*b^3 + 96*a^2 - 81*b^2)
︡ad063a4c-3344-44d4-a2bc-b742624ea753︡{"stdout":"22.4547850705957\n"}︡{"done":true}︡
︠d9e3a93c-8a7d-4056-b3dd-4bbfae868af5i︠
%md
Next we define the tangent line, using the answer above for the slope.
︡864aa117-8045-41c3-996c-413a0e4e906f︡{"done":true,"md":"Next we define the tangent line, using the answer above for the slope."}
︠7015c1de-8b87-4482-aba0-c24925015744s︠
TL(x)=b+22.4547850705957*(x-a)
TL(x)
︡b091d3a1-0e12-4384-acac-d84dee3b8bef︡{"stdout":"22.4547850705957*x - 11.0956306531714\n"}︡{"done":true}︡
︠38355880-3a27-40f3-ad3c-9829b92bd2e3i︠
%md
Finally, we plot the original function and the tangent line (remember to "reset" y using %var y before graphing).
︡1280e816-2b97-4f3e-ac90-f2776f8fb8ce︡{"done":true,"md":"Finally, we plot the original function and the tangent line (remember to \"reset\" y using %var y before graphing)."}
︠51aa5b38-5c09-49d7-bde7-b045968cef9b︠
%var y
implicit_plot((x^2+y^2)^2+12*x^2*y==(3/2*y)^3,(x,-5,5),(y,-5,5),axes=true,frame=false)+plot(TL,xmin=-5,xmax=5,ymin=-5,ymax=5,color='red')+point((a,b),color='black',size=25)
︡6c59f749-023c-4233-ab74-e86796968813︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/24722/tmp_LXJ5K2.svg","show":true,"text":null,"uuid":"57d86d35-fd40-4625-af64-1b3c22e5482b"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠61bd7f34-1e70-4b39-bba8-98abc7b4242di︠
%md
## 3D Examples

Sage can also plot an implicit function of three variables. We won't need this for our assignment, but here are a few examples.

[Note: you can make it bigger or smaller with the mouse wheel; click and drag to rotate]

Sphere of radius 5:
︡99fbd4ff-247c-479c-901f-e6e23ee050dd︡{"md":"## 3D Examples\n\nSage can also plot an implicit function of three variables. We won't need this for our assignment, but here are a few examples.\n\n[Note: you can make it bigger or smaller with the mouse wheel; click and drag to rotate]\n\nSphere of radius 5:\n"}︡
︠1f1cc617-ee42-4448-a013-12e3a4fdd450s︠
%var x,y,z
implicit_plot3d(x^2+y^2+z^2==25,(x,-5,5),(y,-5,5),(z,-5,5))
︡3b781635-2659-45d8-8f13-68180c0cd0e4︡{"file":{"filename":"629fbcc2-a6bc-4f0c-b0a9-283e4b579f75.sage3d","uuid":"629fbcc2-a6bc-4f0c-b0a9-283e4b579f75"}}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠e00f7bdf-1a98-4e21-b439-a375559b3317i︠
%md
This one is a little more interesting:
︡ecedaf88-9742-45f6-a83d-d6eb13345e8d︡{"md":"This one is a little more interesting:\n"}︡
︠8b868eba-1587-40e0-a118-fcf28e400ac2s︠
%var x,y,z
implicit_plot3d(sin(x^2+y^2+z^2-36),(x,-3,3),(y,-3,3),(z,-3,3))
︡f315831f-0c65-4e77-95b1-c0fc6210209f︡{"file":{"filename":"a96646dd-a9e9-4d2c-a350-e952e059ba20.sage3d","uuid":"a96646dd-a9e9-4d2c-a350-e952e059ba20"}}︡{"html":"<div align='center'></div>"}︡{"done":true}︡︡{"html":"<div align='center'></div>"}︡{"done":true}
︠239949ed-fbb1-47d9-beb2-7e082793183fi︠
%md
One more:

[This example is from a Sage tutorial available [here](https://github.com/sagemath/sage/blob/master/src/doc/en/prep/Symbolics-and-Basic-Plotting.rst).  It is licensed under the Creative Commons Attribution-ShareAlike 3.0 license ([CC BY-SA](https://creativecommons.org/licenses/by-sa/3.0/)).]
︡4286383f-d369-46bc-9005-1e4332bff342︡{"done":true,"md":"One more:\n\n[This example is from a Sage tutorial available [here](https://github.com/sagemath/sage/blob/master/src/doc/en/prep/Symbolics-and-Basic-Plotting.rst).  It is licensed under the Creative Commons Attribution-ShareAlike 3.0 license ([CC BY-SA](https://creativecommons.org/licenses/by-sa/3.0/)).]"}
︠4df68411-b392-4224-9916-235f46027c9es︠
%var x,y,z
T = golden_ratio
p = 2 - (cos(x + T*y) + cos(x - T*y) + cos(y + T*z) + cos(y - T*z) + cos(z - T*x) + cos(z + T*x))
r = 4.78
show(implicit_plot3d(p, (x, -r, r), (y, -r, r), (z, -r, r), plot_points=50))
︡e8863caa-23fc-4635-9018-37b06ddcaad3︡{"file":{"filename":"241ac834-2055-44e4-819a-ba0183e404f5.sage3d","uuid":"241ac834-2055-44e4-819a-ba0183e404f5"}}︡{"done":true}︡
︠f0ab048a-54da-4d46-8149-655564a2ea6e︠









