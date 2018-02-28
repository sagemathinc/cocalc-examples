︠03e8a8bb-a06e-4a5a-b978-d091a45bfb20i︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡5a3ff234-bed5-4b1d-a409-06ae8fad991b︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠5ecf12e4-c7cf-434d-9cfd-05d1bba19867i︠
%md
### Prerequisites:

* Intro to Sage
* Graphing and Solving Equations
* Tangent Lines
︡3a1e1ab7-23aa-45a2-9e9f-cc79f2fb041b︡{"done":true,"md":"### Prerequisites:\n\n* Intro to Sage\n* Graphing and Solving Equations\n* Tangent Lines"}
︠d0ff41e1-7ec5-424d-9faf-f0489ad89359si︠
%md
# Parametric Equations

Suppose $x$ and $y$ are both functions of a variable $t$, called the "parameter." Then each value of $t$ gives a point in the x-y plane, $(x(t),y(t))$. The set of all such points as $t$ varies is called a "parametric curve," and the equations defining this curve are called "parametric equations."
︡b007fcd7-a1a9-41a2-bfcd-cfc1da9cd45a︡{"done":true,"md":"# Parametric Equations\n\nSuppose $x$ and $y$ are both functions of a variable $t$, called the \"parameter.\" Then each value of $t$ gives a point in the x-y plane, $(x(t),y(t))$. The set of all such points as $t$ varies is called a \"parametric curve,\" and the equations defining this curve are called \"parametric equations.\""}
︠3578954d-0a11-4cb0-a5db-8686882107bci︠
%md
## Example 1

Below is an example of a parametric curve. Notice that $y$ is not a function of $x$ (or vice versa). Graphs of functions form a really limited collection of curves, and parametric curves provide many more kinds of graphs.
︡858f1588-cdde-4b70-8567-1b503f0b8490︡{"done":true,"md":"## Example 1\n\nBelow is an example of a parametric curve. Notice that $y$ is not a function of $x$ (or vice versa). Graphs of functions form a really limited collection of curves, and parametric curves provide many more kinds of graphs."}
︠e9edea05-0948-4358-999c-5e0afa70e628s︠
%var t
x(t)=sqrt(3)*cos(2*t)-cos(10*t)*sin(20*t)
y(t)=-sqrt(2)*sin(2*t)-sin(10*t)*sin(20*t)
parametric_plot((x(t),y(t)),(t,0,pi))
︡da6f269e-12c6-458c-830c-4ae66549e3cf︡{"file":{"filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/12486/tmp_xDZbjh.svg","show":true,"text":null,"uuid":"d941530d-42d4-4eb0-bfec-e6e064aea745"},"once":false}︡{"done":true}︡
︠5fb46dba-c89d-4b9c-8a7f-36bf1ac416d0i︠
%md
Below is an animation which shows the above curve being drawn as $t$ starts at $0$ and increases to $\pi$.
︡4945e76c-3f83-4954-a0cd-f8f4bea7e0a7︡{"md":"Below is an animation which shows the above curve being drawn as $t$ starts at $0$ and increases to $\\pi$.\n"}︡
︠740d460c-c23b-4020-9be7-a892f8efdc60s︠
%var t
x(t)=sqrt(3)*cos(2*t)-cos(10*t)*sin(20*t)
y(t)=-sqrt(2)*sin(2*t)-sin(10*t)*sin(20*t)
p=point((sqrt(3),0),xmin=-2.5,xmax=2.5,ymin=-2.5,ymax=2.5)
s=[p]
for n in [1..50]:
    p+=parametric_plot((x(t),y(t)),(t,(n-1)*pi/50,n*pi/50))
    s+=[p]
a=animate(s,figsize=5)
show(a,delay=20)
︡e002d13b-cc81-4700-a58f-4e988a81d27a︡{"file":{"filename":"/home/user/.sage/temp/project-9189c752-e334-4311-afa9-605b6159620a/217145/tmp_5IsDwb.webm","show":true,"text":null,"url":"/9189c752-e334-4311-afa9-605b6159620a/raw/.sage/temp/project-9189c752-e334-4311-afa9-605b6159620a/217145/tmp_5IsDwb.webm"},"once":false}︡{"done":true}︡
︠57c4e0a2-370c-4ff3-918d-dbb758fc71cdi︠
%md
You can graph a parametric curve by hand using a table of values - just choose some values of $t$ and plug them into the $x$ and $y$ functions. This is usually pretty tedious.

Sage can handle parametric curves using the parametric_plot command, as in the example above.

First, declare the variable $t$. Then define $x(t)$ and $y(t)$. Finally, type parametric_plot((x(t),y(t)),(t,0,pi)). Notice that (t,0,pi) controls which values of $t$ are used. You may want to increase pi if the graph looks incomplete.
︡1c782eb2-7b2e-41b1-bbd1-a175b1e9e5c9︡{"md":"You can graph a parametric curve by hand using a table of values - just choose some values of $t$ and plug them into the $x$ and $y$ functions. This is usually pretty tedious.\n\nSage can handle parametric curves using the parametric_plot command, as in the example above.\n\nFirst, declare the variable $t$. Then define $x(t)$ and $y(t)$. Finally, type parametric_plot((x(t),y(t)),(t,0,pi)). Notice that (t,0,pi) controls which values of $t$ are used. You may want to increase pi if the graph looks incomplete.\n"}︡
︠73f8a58e-07d9-4258-af0f-7aeb9dac06dcis︠
%md
## Example 2

There is a toy called the [Spirograph](http://en.wikipedia.org/wiki/Spirograph) that lets you draw interesting curves using a collection of wheels. We can produce these pictures using Sage.

In the interact below, experiment with different values of $a$ and $b$. If the curve looks incomplete, then increase tmax.

For example, try $a=21,\ a=\frac{1}{2},\ a=\sqrt{2}$ (increase tmax to 100*pi for this one).
︡4ee31db3-0e83-44af-80e2-eb365b06be86︡{"md":"## Example 2\n\nThere is a toy called the [Spirograph](http://en.wikipedia.org/wiki/Spirograph) that lets you draw interesting curves using a collection of wheels. We can produce these pictures using Sage.\n\nIn the interact below, experiment with different values of $a$ and $b$. If the curve looks incomplete, then increase tmax.\n\nFor example, try $a=21,\\ a=\\frac{1}{2},\\ a=\\sqrt{2}$ (increase tmax to 100*pi for this one).\n"}︡
︠048008c7-c088-4fb7-b962-9acf57e4bcd5s︠
@interact
def _(a=5,b=2,tmax=10*pi):
    %var t
    x(t)=(a-b)*cos(t)+b*cos((a-b)/b*t)
    y(t)=(a-b)*sin(t)-b*sin((a-b)/b*t)
    show(parametric_plot((x(t),y(t)),(t,0,tmax)))
︡7efa5a29-a01d-47e7-adbe-de095dd4e132︡{"interact":{"controls":[{"control_type":"input-box","default":5,"label":"a","nrows":1,"readonly":false,"submit_button":null,"type":null,"var":"a","width":null},{"control_type":"input-box","default":2,"label":"b","nrows":1,"readonly":false,"submit_button":null,"type":null,"var":"b","width":null},{"control_type":"input-box","default":"10*pi","label":"tmax","nrows":1,"readonly":false,"submit_button":null,"type":null,"var":"tmax","width":null}],"flicker":false,"id":"eb2228ee-bcd0-4224-9713-21e98581a90b","layout":[[["a",12,null]],[["b",12,null]],[["tmax",12,null]],[["",12,null]]],"style":"None"}}︡{"done":true}︡
︠d983b09f-1ccc-41e0-9b63-8bc3743c1d61si︠
%md
## Tangents to Parametric Curves

We would like to do calculus with parametric curves, such as finding the slope of the curve.
︡16e6d95d-77e1-414d-986a-375ffa35d49a︡{"done":true,"md":"## Tangents to Parametric Curves\n\nWe would like to do calculus with parametric curves, such as finding the slope of the curve."}
︠fa3a375d-dbc6-447e-9707-7c541c80d3b7i︠
%md
## Example 3

Consider the parametric curve below, which has equations $x(t)=2\sin(2t)$ and $y(t)=2\sin(t)$.

Although $y$ is not a function of $x$, it looks like the curve should have tangent lines. How do we find the slope of the tangent line?
︡b3ef80a4-a2aa-4410-9d47-1706f3847af6︡{"done":true,"md":"## Example 3\n\nConsider the parametric curve below, which has equations $x(t)=2\\sin(2t)$ and $y(t)=2\\sin(t)$.\n\nAlthough $y$ is not a function of $x$, it looks like the curve should have tangent lines. How do we find the slope of the tangent line?"}
︠92bf202c-491c-4d14-bb63-1b3a5a653ddes︠
%var t
x(t)=2*sin(2*t)
y(t)=2*sin(t)
parametric_plot((x(t),y(t)),(t,0,2*pi))
︡9449bdac-e1b3-4192-a42e-5a44fff3c38f︡{"file":{"filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/12486/tmp_555e0A.svg","show":true,"text":null,"uuid":"199ac270-19a6-459b-8901-1c9615b8e956"},"once":false}︡{"done":true}︡
︠a3d3dbfc-7caa-4709-8319-ccacb2138a5fsi︠
%md
By the Chain Rule: $\displaystyle\frac{dy}{dt}=\frac{dy}{dx}\cdot\frac{dx}{dt}$.

If $\displaystyle\frac{dx}{dt}\ne 0$, then we can solve for $\displaystyle\frac{dy}{dx}$ to get $$\frac{dy}{dx}=\frac{\frac{dy}{dt}}{\frac{dx}{dt}}$$

In other words, the slope of the curve in the x-y plane is given by $\displaystyle\frac{y\,'(t)}{x'(t)}$.

Notice that this slope is given as a function of $t$. So if we want the slope of the curve at a particular point $(x,y)$, then we need to find a value of $t$ that gives us this point.
︡31ff2ae2-aaf4-4cba-a749-b975fe44985a︡{"done":true,"md":"By the Chain Rule: $\\displaystyle\\frac{dy}{dt}=\\frac{dy}{dx}\\cdot\\frac{dx}{dt}$.\n\nIf $\\displaystyle\\frac{dx}{dt}\\ne 0$, then we can solve for $\\displaystyle\\frac{dy}{dx}$ to get $$\\frac{dy}{dx}=\\frac{\\frac{dy}{dt}}{\\frac{dx}{dt}}$$\n\nIn other words, the slope of the curve in the x-y plane is given by $\\displaystyle\\frac{y\\,'(t)}{x'(t)}$.\n\nNotice that this slope is given as a function of $t$. So if we want the slope of the curve at a particular point $(x,y)$, then we need to find a value of $t$ that gives us this point."}
︠0a2982e3-f8bb-46eb-bc83-682e48bcf9abi︠
%md
## Example 4

Find an equation for the tangent line to the curve above at $t=\frac{\pi}{6}$.

First, find the slope function. I'll call this function $m$.
︡e4fc1e04-1397-4372-a538-2923919eb3fe︡{"done":true,"md":"## Example 4\n\nFind an equation for the tangent line to the curve above at $t=\\frac{\\pi}{6}$.\n\nFirst, find the slope function. I'll call this function $m$."}
︠05f8f08e-a53e-4028-b721-0f730cbee00ds︠
%var t
x(t)=2*sin(2*t)
y(t)=2*sin(t)
m(t)=derivative(y,t)/derivative(x,t)
show(m(t))
︡9863ba2b-a41d-4240-8a67-b798546c050a︡{"html":"<div align='center'>$\\displaystyle \\frac{\\cos\\left(t\\right)}{2 \\, \\cos\\left(2 \\, t\\right)}$</div>"}︡{"done":true}︡
︠deeec11f-393d-4af5-8612-4a3a8a763583i︠
%md
Now let's find the slope when $t=\frac{\pi}{6}$.
︡7785c761-6d42-4956-9846-2ac3d0a3f537︡{"md":"Now let's find the slope when $t=\\frac{\\pi}{6}$.\n"}︡
︠784726da-f610-45ed-b428-8f0703afa1be︠
show(m(pi/6))
︡76d0c5c8-1957-43c8-ab51-4fceb0a28a9c︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{2} \\, \\sqrt{3}$</div>"}︡
︠8bde84c2-74b3-40f6-a76d-f98950fe1e9ci︠
%md
Next, we calculate $x\left(\frac{\pi}{6}\right)$ and $y\left(\frac{\pi}{6}\right)$, then we use the point-slope form of a line: $$y=y_1+m(x-x_1)$$
︡e12a0d96-c4cd-4327-b4db-95a37df16012︡{"md":"Next, we calculate $x\\left(\\frac{\\pi}{6}\\right)$ and $y\\left(\\frac{\\pi}{6}\\right)$, then we use the point-slope form of a line: $$y=y_1+m(x-x_1)$$\n"}︡
︠8c70fe0b-0d97-47d9-8c11-413c37d7b141︠
x(pi/6)
y(pi/6)
︡eddbc723-08a1-42e5-b3fb-ff72f4c05aa1︡{"stdout":"sqrt(3)\n"}︡{"stdout":"1\n"}︡
︠955a1475-53f8-412d-b960-69985b9d2f61i︠
%md
Notice that the tangent line is a function of $x$, not $t$. In order to not interfere with our parametric function $x(t)$, I will use capital $X$ for the tangent line.
︡1de6bf03-67e4-41f7-9393-4fe58bb07afb︡{"md":"Notice that the tangent line is a function of $x$, not $t$. In order to not interfere with our parametric function $x(t)$, I will use capital $X$ for the tangent line.\n"}︡
︠e1d080a5-2269-46c4-9a0d-7bdd2c0912c5s︠
TL(X)=1+sqrt(3)/2*(X-sqrt(3))  #Note the capital X
show(TL(X))
parametric_plot((x(t),y(t)),(t,0,2*pi))+plot(TL(X),xmin=-2,xmax=3,color='red')+point((sqrt(3),1),size=25,color='black')
︡f6b96132-c8a1-4ebe-88ae-85918b012cf6︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{2} \\, \\sqrt{3} {\\left(X - \\sqrt{3}\\right)} + 1$</div>"}︡{"file":{"filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/12486/tmp_Fg67Un.svg","show":true,"text":null,"uuid":"c200f8f2-86b5-45da-9c0b-d215157ea8f6"},"once":false}︡{"done":true}︡
︠d31302d9-34b7-4aec-b2d4-89fae0f34068si︠
%md
## Intersection Points

What happens to the derivative when the curve crosses itself?
︡4740022c-a368-414c-ad43-9488add007b1︡{"done":true,"md":"## Intersection Points\n\nWhat happens to the derivative when the curve crosses itself?"}
︠8ae0d45b-5c43-4909-90f1-1842c9e87595i︠
%md
## Example 5

In the curve above, the curve intersects itself at $(0,0)$.

What values of $t$ result in $(x(t),y(t))=(0,0)$?

We need a value of $t$ that gives both $x(t)=0$ and $y(t)=0$.

First, we'll ask Sage to solve the equations.
︡d76af63c-3ed2-418d-8b96-515509048697︡{"done":true,"md":"## Example 5\n\nIn the curve above, the curve intersects itself at $(0,0)$.\n\nWhat values of $t$ result in $(x(t),y(t))=(0,0)$?\n\nWe need a value of $t$ that gives both $x(t)=0$ and $y(t)=0$.\n\nFirst, we'll ask Sage to solve the equations."}
︠e6a81302-fc4f-4a0b-8627-f799b60e6030︠
%var t
x(t)=2*sin(2*t)
y(t)=2*sin(t)
solve(x(t)==0,t)
solve(y(t)==0,t)
︡10eca8f4-66ec-4195-9e0a-a417300de412︡{"stdout":"[t == 0]"}︡{"stdout":"\n"}︡{"stdout":"[t == 0]\n"}︡
︠90578a1a-a747-4dc4-93f3-cd79f1fc6284i︠
%md
Sage tells us that $t=0$ will work. Is that the only possiblity?

No, we know there are more solutions, since $x$ and $y$ are both periodic functions. We can get Sage to give us a more complete answer by adding the optional argument to_poly_solve='force' (don't worry about what this does).
︡3ade8d62-eba6-4c9e-8315-a063e8e21bbd︡{"md":"Sage tells us that $t=0$ will work. Is that the only possiblity?\n\nNo, we know there are more solutions, since $x$ and $y$ are both periodic functions. We can get Sage to give us a more complete answer by adding the optional argument to_poly_solve='force' (don't worry about what this does).\n"}︡
︠7331fc8d-c394-43fa-9952-0c6d8d24796a︠
solve(x(t)==0,t,to_poly_solve='force')
solve(y(t)==0,t,to_poly_solve='force')
︡6b271020-150f-4447-9be7-68596c890400︡{"stdout":"[t == 1/2*pi*z45]\n"}︡{"stdout":"[t == pi*z50]\n"}︡
︠2f728302-8579-4a1c-915e-ea79c2318f50i︠
%md
In the output above, the variables z45 and z50 are assumed to be any integer (that's what the "z" is for).

In other words, $x(t)=0$ when $t=\frac{z\pi}{2}$ for any integer $z$, i.e., $t=0,\ \pm\frac{\pi}{2},\ \pm\frac{2\pi}{2}=\pm\pi,\ \pm\frac{3\pi}{2},\ \pm\frac{4\pi}{2}=\pm 2\pi,$ etc.

On the other hand, $y(t)=0$ when $t=z\pi$ for any integer $z$, i.e. $t=0,\ \pm\pi,\ \pm 2\pi,\ \pm3\pi,$ etc.
︡3ff3d597-1fe7-4fee-b7ae-f4c6eac908d2︡{"done":true,"md":"In the output above, the variables z45 and z50 are assumed to be any integer (that's what the \"z\" is for).\n\nIn other words, $x(t)=0$ when $t=\\frac{z\\pi}{2}$ for any integer $z$, i.e., $t=0,\\ \\pm\\frac{\\pi}{2},\\ \\pm\\frac{2\\pi}{2}=\\pm\\pi,\\ \\pm\\frac{3\\pi}{2},\\ \\pm\\frac{4\\pi}{2}=\\pm 2\\pi,$ etc.\n\nOn the other hand, $y(t)=0$ when $t=z\\pi$ for any integer $z$, i.e. $t=0,\\ \\pm\\pi,\\ \\pm 2\\pi,\\ \\pm3\\pi,$ etc."}
︠14bdacdc-1dc7-4153-9b1d-b8bf79ed439fi︠
%md
The values of $t$ on both of these lists result in both $x$ and $y$ being $0$.

Look at the two lists, and see what they have in common. In this case, both lists have $t=z\pi$.
︡6c63b7cb-0253-48fb-9d60-711ab27c85da︡{"done":true,"md":"The values of $t$ on both of these lists result in both $x$ and $y$ being $0$.\n\nLook at the two lists, and see what they have in common. In this case, both lists have $t=z\\pi$."}
︠ed470ad4-715e-47cc-b503-69a766df1af6i︠
%md
What is the slope of the curve when $t=z\pi$? Let's try a few values of $z$.
︡e74fc990-e377-4876-899d-2d1c8d4f218c︡{"md":"What is the slope of the curve when $t=z\\pi$? Let's try a few values of $z$.\n"}︡
︠9ca97f8e-a0d7-4968-a3cc-c9b86393fc02︠
m(-2*pi); m(-1*pi); m(0*pi); m(1*pi); m(2*pi)
︡f13c21fe-ba9f-4390-a525-88703fb03531︡{"stdout":"1/2\n-1/2\n1/2\n-1/2\n1/2\n"}︡
︠9cbbc685-64b7-4db7-b83f-74b6b65dd2e3i︠
%md
We get two different slopes: $\frac{1}{2}$ and $-\frac{1}{2}$.

Since there are two different slopes, there must be two different tangent lines.
︡cb94c04d-302e-47d3-bd26-37a41bbbea73︡{"md":"We get two different slopes: $\\frac{1}{2}$ and $-\\frac{1}{2}$.\n\nSince there are two different slopes, there must be two different tangent lines.\n"}︡
︠6365429e-a82e-4eb8-91e5-f8d355a2832cs︠
TL1(X)=0+1/2*(X-0)  #Note the capital X
TL2(X)=0-1/2*(X-0)  #Again, capital X
parametric_plot((x(t),y(t)),(t,0,2*pi))+plot(TL1(X),xmin=-3,xmax=3,color='red')+plot(TL2(X),xmin=-3,xmax=3,color='red')+point((0,0),size=25,color='black')
︡bd112051-1a56-4212-a5a7-be18cd13e778︡{"file":{"filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/12486/tmp_Q4m4Sk.svg","show":true,"text":null,"uuid":"7761ec13-b177-4cf7-95ad-a15e71b8ab40"},"once":false}︡{"done":true}︡
︠d46729be-6526-4e54-ac79-0455339c027b︠









