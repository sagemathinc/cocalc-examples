︠a38b51c6-b461-485a-bf3e-e6c7dbcfbec4ai︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡40d290ea-d631-4a5b-a03f-fd6e4bc839de︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠4735b0e2-95d8-4db2-a8fc-0be1a5ecd4cai︠
%md
### Prerequisites:

* Intro to Sage
* Differentiation
* Implicit Differentiation
︡afaec28c-308e-40ef-a47e-5febbd1e43dc︡{"done":true,"md":"### Prerequisites:\n\n* Intro to Sage\n* Differentiation\n* Implicit Differentiation"}
︠be69b7cf-6cdf-4b73-a1d3-4671f3e037c1i︠
%md
# Related Rates

Related rates problems involve two or more changing quantities. The quantities are related to each other, and you know the rate of change of all but one quantity. The goal is to find the rate of change of the last quantity.

The computations are similar to implicit differentiation.
︡e72a7f08-1a4d-4e6d-9287-6b101ecf527a︡{"done":true,"md":"# Related Rates\n\nRelated rates problems involve two or more changing quantities. The quantities are related to each other, and you know the rate of change of all but one quantity. The goal is to find the rate of change of the last quantity.\n\nThe computations are similar to implicit differentiation."}
︠50519f09-fa3f-40fb-80ba-2d0d430189b9i︠
%md
## Example 1

The length of a rectangle is increasing at a rate of 8 cm/s and its width is increasing at a rate of 3 cm/s. At what rate is the area of the rectangle increasing when the length is 20 cm and the width is 10 cm?
︡c8c4b448-e90e-446c-8442-fe09583a2c0f︡{"done":true,"md":"## Example 1\n\nThe length of a rectangle is increasing at a rate of 8 cm/s and its width is increasing at a rate of 3 cm/s. At what rate is the area of the rectangle increasing when the length is 20 cm and the width is 10 cm?"}
︠eba34242-be1a-4e3a-ab7c-035fc347040di︠
%md
**Solution**

This example involves three quantities: length, width, and area of a rectangle. Let's call these $l$, $w$, and $A$.

We know from geometry that these three quantities are related: $A=l\cdot w$.

We know the rate of change of two of the three quantities with respect to time ($t$):

$\displaystyle\frac{dl}{dt}=8$ cm/s

$\displaystyle\frac{dw}{dt}=3$ cm/s

The question asks us about the third rate of change, $\displaystyle\frac{dA}{dt}$.

The idea is to take the derivative of the equation $A=l\cdot w$ with respect to $t$ (all three quantities are functions of time).

Similar to what we did with implicit differentiation, we must tell Sage that $l$, $w$, and $A$ are functions of $t$, and then we can take the derivative.

︡393f0026-18d0-4515-bd83-f77d3605aac4︡{"done":true,"md":"**Solution**\n\nThis example involves three quantities: length, width, and area of a rectangle. Let's call these $l$, $w$, and $A$.\n\nWe know from geometry that these three quantities are related: $A=l\\cdot w$.\n\nWe know the rate of change of two of the three quantities with respect to time ($t$):\n\n$\\displaystyle\\frac{dl}{dt}=8$ cm/s\n\n$\\displaystyle\\frac{dw}{dt}=3$ cm/s\n\nThe question asks us about the third rate of change, $\\displaystyle\\frac{dA}{dt}$.\n\nThe idea is to take the derivative of the equation $A=l\\cdot w$ with respect to $t$ (all three quantities are functions of time).\n\nSimilar to what we did with implicit differentiation, we must tell Sage that $l$, $w$, and $A$ are functions of $t$, and then we can take the derivative."}
︠ca132aa3-d2ab-4d72-a669-a0bdd7843ba7si︠
%latex
\noindent{\large\textbf{Caution: Always take the derivative \underline{before} plugging in values for any variables.}}
︡6c60879f-3aa1-46c2-a05b-9c6ed5398b42︡{"file":{"filename":"/tmp/tmppGMWzu.png","show":true,"text":null,"uuid":"8419d507-a71a-46e2-9f7e-dc4481b36ce0"},"once":false}︡{"done":true}︡
︠b37a1e64-5b35-4ef2-8045-b3aa2645d70as︠
%var t
l=function('l')(t)  #l is a function of t
w=function('w')(t)  #w is a function of t
A=function('A')(t)  #A is a function of t
derivative(A==l*w,t)  #don't forget the double equal sign ==
show(_)
︡38ceb7b0-ecac-4f01-a912-fc5f6a5b6420︡{"stdout":"diff(A(t), t) == w(t)*diff(l(t), t) + l(t)*diff(w(t), t)\n"}︡{"html":"<div align='center'>$\\displaystyle \\frac{\\partial}{\\partial t}A\\left(t\\right) = w\\left(t\\right) \\frac{\\partial}{\\partial t}l\\left(t\\right) + l\\left(t\\right) \\frac{\\partial}{\\partial t}w\\left(t\\right)$</div>"}︡{"done":true}︡
︠c5c90196-181d-43e6-9a85-d4f0b0b2d842i︠
%md
Notice that Sage writes $l$, $w$, and $A$ as functions of $t$.

Usually we don't write all of these as functions of $t$, but we will use Liebniz's notation to make it clear that the derivatives are with respect to time:

$$\frac{dA}{dt}=w\frac{dl}{dt}+l\frac{dw}{dt}$$
︡3621abb3-d559-47ec-b2bc-d8584a530db4︡{"done":true,"md":"Notice that Sage writes $l$, $w$, and $A$ as functions of $t$.\n\nUsually we don't write all of these as functions of $t$, but we will use Liebniz's notation to make it clear that the derivatives are with respect to time:\n\n$$\\frac{dA}{dt}=w\\frac{dl}{dt}+l\\frac{dw}{dt}$$"}
︠664fbcd4-7a97-480f-b32a-9f3aeb6a0e63i︠
%md
Notice that this equation gives us a formula for the rate of change of area (what the question asks for) in terms of things we know (length, width, and their rates of change).

Although the rates of change of both length and width are constants, notice that the rate of change of area is *not* a constant.
︡35fd2c08-e7ea-4076-aad3-f133a922959f︡{"done":true,"md":"Notice that this equation gives us a formula for the rate of change of area (what the question asks for) in terms of things we know (length, width, and their rates of change).\n\nAlthough the rates of change of both length and width are constants, notice that the rate of change of area is *not* a constant."}
︠5287b498-6d16-448f-b3fc-a1c5b237d809i︠
%md
Now that we have the derivative, we can start plugging in values. The question asks for $\displaystyle\frac{dA}{dt}$ when $l=20$ and $w=10$.

$$\frac{dA}{dt}=10\cdot8+20\cdot3=140$$

So at the time specified, the area is changing at a rate of $140\ \textrm{cm}^2/\textrm{s}$.
︡edd695cc-7dbd-40db-a8d8-3641c0a27295︡{"done":true,"md":"Now that we have the derivative, we can start plugging in values. The question asks for $\\displaystyle\\frac{dA}{dt}$ when $l=20$ and $w=10$.\n\n$$\\frac{dA}{dt}=10\\cdot8+20\\cdot3=140$$\n\nSo at the time specified, the area is changing at a rate of $140\\ \\textrm{cm}^2/\\textrm{s}$."}
︠ec3b0ea5-8311-4345-9f9e-20412bf32906︠
10*8+20*3
︡3af3e8b8-b6f0-4c54-9b2b-9ab1ca444e9c︡{"stdout":"140\n"}︡
︠6b2fbc67-1c65-442a-b083-76c47b6cce7di︠
%md
## Example 2

A 12 m ladder rests on horizontal ground and leans against a vertical wall. The foot of the ladder is pulled away from the wall at the rate of $\frac{1}{10}$ m/s. How fast is the top sliding down the wall when the foot of the ladder is 4 m from the wall?
︡1241659b-fb79-497b-af49-258e7633439c︡{"done":true,"md":"## Example 2\n\nA 12 m ladder rests on horizontal ground and leans against a vertical wall. The foot of the ladder is pulled away from the wall at the rate of $\\frac{1}{10}$ m/s. How fast is the top sliding down the wall when the foot of the ladder is 4 m from the wall?"}
︠6826961f-6f08-43ba-af2c-5669bc5a3be2is︠
%auto
%hide
line([(0,0),(2,0),(0,3),(0,0),(.2,0),(.2,.2),(0,.2)],axes=false,color='black',aspect_ratio=1,figsize=4)+text('y (wall)',(-.5,1.5),color='black')+text('12 (ladder)',(1.7,1.5),color='black')+text('x (ground)',(1,-.3),color='black')
︡9c9f6c3c-5c04-40bf-9b48-d30186f09b3c︡{"hide":"input"}︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4728/tmp_vwXblT.svg","show":true,"text":null,"uuid":"8d3ee956-29b3-432e-a4e0-b331819ba113"},"once":false}︡{"done":true}︡
︠dbb6ae20-570f-4ad8-a0e7-ab7e9c458b86i︠
%md
**Solution**

Let $y$ be the vertical distance from the top of the ladder to the ground, and let $x$ be the horizontal distance from the wall to the foot of the ladder.

We are told $\frac{dx}{dt}=\frac{1}{10}$, and we are asked to find $\frac{dy}{dt}$ when $x=4$.

Since the ladder, wall, and ground form a right triangle, the Pythagorean Theorem relates $x$ and $y$:

$$x^2+y^2=12^2$$

We now take the derivative of this equation with respect to time.

[Note: 12 is a constant, so we can plug it in now. But $x$ and $y$ are changing, so do not plug in values for these until after you have found the derivative.]
︡c619a2df-d9d9-4b5d-a5e2-100788c504c3︡{"done":true,"md":"**Solution**\n\nLet $y$ be the vertical distance from the top of the ladder to the ground, and let $x$ be the horizontal distance from the wall to the foot of the ladder.\n\nWe are told $\\frac{dx}{dt}=\\frac{1}{10}$, and we are asked to find $\\frac{dy}{dt}$ when $x=4$.\n\nSince the ladder, wall, and ground form a right triangle, the Pythagorean Theorem relates $x$ and $y$:\n\n$$x^2+y^2=12^2$$\n\nWe now take the derivative of this equation with respect to time.\n\n[Note: 12 is a constant, so we can plug it in now. But $x$ and $y$ are changing, so do not plug in values for these until after you have found the derivative.]"}
︠c5283faf-9612-43a3-af3c-50621b3acc7cs︠
%var t
x=function('x')(t)
y=function('y')(t)
derivative(x^2+y^2==12^2,t)  #don't forget ==
show(_)
︡94ea7bfd-a685-4778-8c7e-a8979bf11776︡{"stdout":"2*x(t)*diff(x(t), t) + 2*y(t)*diff(y(t), t) == 0\n"}︡{"html":"<div align='center'>$\\displaystyle 2 \\, x\\left(t\\right) \\frac{\\partial}{\\partial t}x\\left(t\\right) + 2 \\, y\\left(t\\right) \\frac{\\partial}{\\partial t}y\\left(t\\right) = 0$</div>"}︡{"done":true}︡
︠bfcc9037-9574-4774-ad30-55cd3d6d4150i︠
%md
Let's rewrite this:

$$2x\frac{dx}{dt}+2y\frac{dy}{dt}=0$$

We want $\frac{dy}{dt}$, so let's have Sage solve for this:
︡13944c5f-52e8-4664-901f-a814478367f0︡{"md":"Let's rewrite this:\n\n$$2x\\frac{dx}{dt}+2y\\frac{dy}{dt}=0$$\n\nWe want $\\frac{dy}{dt}$, so let's have Sage solve for this:\n"}︡
︠13b62df7-eb20-4442-80f8-4ce863dedae9s︠
solve(derivative(x^2+y^2==12^2,t),derivative(y,t))
show(_)
︡798a5924-39f1-4754-abce-5e7893ea4b71︡{"stdout":"[diff(y(t), t) == -x(t)*diff(x(t), t)/y(t)]"}︡{"stdout":"\n"}︡{"html":"<div align='center'>[$\\displaystyle \\frac{\\partial}{\\partial t}y\\left(t\\right) = -\\frac{x\\left(t\\right) \\frac{\\partial}{\\partial t}x\\left(t\\right)}{y\\left(t\\right)}$]</div>"}︡{"done":true}︡
︠818e0248-c105-4ac7-8a36-37d161097ee0i︠
%md
$$\frac{dy}{dt}=-\frac{x}{y}\frac{dx}{dt}$$

We are given $\frac{dx}{dt}$ and $x$, but we also need to know $y$.

When $x=4$, what is $y$?
︡613c5365-fdf2-43ac-93e9-bf5c6246399e︡{"md":"$$\\frac{dy}{dt}=-\\frac{x}{y}\\frac{dx}{dt}$$\n\nWe are given $\\frac{dx}{dt}$ and $x$, but we also need to know $y$.\n\nWhen $x=4$, what is $y$?\n"}︡
︠08327bdb-9632-4baa-bcdd-ca026b512680︠
solve(4^2+y^2==12^2,y)
show(_)
︡5c93b2e4-12f4-4cf6-92ed-a1813dbec875︡{"stdout":"[y(t) == -8*sqrt(2), y(t) == 8*sqrt(2)]"}︡{"stdout":"\n"}︡{"html":"<div align='center'>[$\\displaystyle y\\left(t\\right) = -8 \\, \\sqrt{2}$, $\\displaystyle y\\left(t\\right) = 8 \\, \\sqrt{2}$]</div>"}︡
︠2c5b0c39-a991-4cb2-a9cc-98ec5a41ea6ei︠
%md
We don't care about the negative solution ($y>0$ since it is a distance). So when $x=4$ we have $y=8\sqrt{2}$.

Now let's plug in all the given information:

$$\frac{dy}{dt}=-\frac{4}{8\sqrt{2}}\cdot \frac{1}{10}=-\frac{\sqrt{2}}{40}\approx-0.0354$$

Notice that the derivative is negative, since the distance is decreasing (top of ladder sliding down the wall).

The top of the ladder is sliding down the wall at a rate of about 0.0354 m/s.
︡a1f01d31-31b3-4ebe-a42b-70064c706359︡{"md":"We don't care about the negative solution ($y>0$ since it is a distance). So when $x=4$ we have $y=8\\sqrt{2}$.\n\nNow let's plug in all the given information:\n\n$$\\frac{dy}{dt}=-\\frac{4}{8\\sqrt{2}}\\cdot \\frac{1}{10}=-\\frac{\\sqrt{2}}{40}\\approx-0.0354$$\n\nNotice that the derivative is negative, since the distance is decreasing (top of ladder sliding down the wall).\n\nThe top of the ladder is sliding down the wall at a rate of about 0.0354 m/s.\n"}︡
︠854b0c9c-5c27-4b81-a2a7-a09118426538︠
-4/(8*sqrt(2))*1/10
N(_)
︡a7dd1555-e902-4c88-ba27-76e3f448a893︡{"stdout":"-1/40*sqrt(2)\n"}︡{"stdout":"-0.0353553390593274\n"}︡
︠50c9f2b6-dca7-49d8-91ad-403e20d2ab0ei︠
%md
## Example 3

A cylindrical tank standing upright (with one circular base on the ground) has radius 20 cm. How fast does the water level in the tank drop when the water is being drained at a rate of 25 cm$^3$/s?
︡40433443-4d4d-4355-b8f1-3a8aaf61195a︡{"done":true,"md":"## Example 3\n\nA cylindrical tank standing upright (with one circular base on the ground) has radius 20 cm. How fast does the water level in the tank drop when the water is being drained at a rate of 25 cm$^3$/s?"}
︠b065170f-6d6f-4bc1-ab5e-5ca7c4b072bbis︠
%auto
%hide
ellipse((0,2),2,.25,axes=false,aspect_ratio=1,figsize=4,color='black')+ellipse((0,-2),2,.25,axes=false,aspect_ratio=1,figsize=4,color='black')+line([(-2,-2),(-2,2)],color='black')+line([(2,-2),(2,2)],color='black')+line([(0,2),(2,2)],color='black')+text('r=20',(1,2.5),color='black')+line([(2.1,-2),(2.3,-2)],color='black')+line([(2.2,-2),(2.2,1.5)],color='black')+line([(2.1,1.5),(2.3,1.5)],color='black')+text('h (water level)',(3.5,0),color='black')
︡b604d05c-0cd8-4ca8-b707-b206b496964a︡{"hide":"input"}︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4728/tmp_g44Br1.svg","show":true,"text":null,"uuid":"cb56fcde-84ee-4785-b5a0-a159bbc69c5a"},"once":false}︡{"done":true}︡
︠bca15e94-ae2e-4347-afcf-ac6a01a1cf55i︠
%md
**Solution**

Let $r$ be the radius of the tank, $h$ be the water level, and $V$ the volume of the water. We are given that $r=20$ and $\frac{dV}{dt}=-25$ [the derivative must be negative, since $V$ is decreasing].

The relationship of these three quantities is given by the volume formula for a cylinder: $V=\pi r^2h$.

In this case $r=20$, so $V=400\pi h$.

Let's take the derivative:
︡d55df82c-27e8-468e-8178-130ad3879616︡{"done":true,"md":"**Solution**\n\nLet $r$ be the radius of the tank, $h$ be the water level, and $V$ the volume of the water. We are given that $r=20$ and $\\frac{dV}{dt}=-25$ [the derivative must be negative, since $V$ is decreasing].\n\nThe relationship of these three quantities is given by the volume formula for a cylinder: $V=\\pi r^2h$.\n\nIn this case $r=20$, so $V=400\\pi h$.\n\nLet's take the derivative:"}
︠8fcaa016-7372-475e-b84f-2ac8114e37e4s︠
%var t
V=function('V')(t)
h=function('h')(t)
derivative(V==400*pi*h,t)
show(_)
︡880035a6-81da-400c-b304-3af84c115798︡{"stdout":"diff(V(t), t) == 400*pi*diff(h(t), t)\n"}︡{"html":"<div align='center'>$\\displaystyle \\frac{\\partial}{\\partial t}V\\left(t\\right) = 400 \\, \\pi \\frac{\\partial}{\\partial t}h\\left(t\\right)$</div>"}︡{"done":true}︡
︠3b51833e-8e15-485b-be71-b0d6122a9158i︠
%md
So we see

$$\frac{dV}{dt}=400\pi\frac{dh}{dt}$$

We want to solve this for $\frac{dh}{dt}$, so divide both sides by $400\pi$ and plug in the given value of $\frac{dV}{dt}$:

$$\frac{dh}{dt}=\frac{\frac{dV}{dt}}{400\pi}=\frac{-25}{400\pi}=-\frac{1}{16\pi}\approx-0.01989$$

Thus, the water level is falling at a rate of about 0.02 cm/s.
︡84ee6b87-d727-4f0f-8da0-d3db6549ba5a︡{"md":"So we see\n\n$$\\frac{dV}{dt}=400\\pi\\frac{dh}{dt}$$\n\nWe want to solve this for $\\frac{dh}{dt}$, so divide both sides by $400\\pi$ and plug in the given value of $\\frac{dV}{dt}$:\n\n$$\\frac{dh}{dt}=\\frac{\\frac{dV}{dt}}{400\\pi}=\\frac{-25}{400\\pi}=-\\frac{1}{16\\pi}\\approx-0.01989$$\n\nThus, the water level is falling at a rate of about 0.02 cm/s.\n"}︡
︠5535463b-7a83-4dad-9705-adecc241302e︠
-25/(400*pi)
N(_)
︡fa522612-7234-439b-977d-dd8bd47a115c︡{"stdout":"-1/16/pi\n"}︡{"stdout":"-0.0198943678864869\n"}︡
︠ebab2fda-928c-4e3c-891b-68ade547cd4bi︠









