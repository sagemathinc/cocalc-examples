︠280e1ef4-b39c-4248-b098-3b4118e6ba47i︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡ec1f6f70-d84a-4630-9592-48d6a0e95219︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠9452f16b-ed61-4220-bb3b-edc06f7b6e81i︠
%md
### Prerequisites:

* Intro to Sage
* Graphing and Solving Equations
* Differentiation
︡2b854354-5db3-4cd3-bd0e-1265bbb6be7a︡{"done":true,"md":"### Prerequisites:\n\n* Intro to Sage\n* Graphing and Solving Equations\n* Differentiation"}
︠e099b657-1baa-4111-9d20-b03082624f7ai︠
%md
# Optimization

Optimization is the process of maximizing or minimizing a desired quantity given certain constraints.

For example, you may want to create a cylindrical can that holds 1 liter with the smallest possible surface area.

Our goal is to find an absolute max (or min) of some function. We know this will occur at a local max (min). To find these we want to find the critical points (places where the derivative is 0 or undefined). We then plug these critical points into the function to find the biggest (smallest) value.

The challenge of optimization is converting the statement of the problem (a paragraph) into the right equations, in order to define the quantity to maximize (or minimize) as a function of one variable, which allows us to take the derivative and find the critical points.
︡9fd97d2f-773d-45bb-8e44-04fe13461322︡{"done":true,"md":"# Optimization\n\nOptimization is the process of maximizing or minimizing a desired quantity given certain constraints.\n\nFor example, you may want to create a cylindrical can that holds 1 liter with the smallest possible surface area.\n\nOur goal is to find an absolute max (or min) of some function. We know this will occur at a local max (min). To find these we want to find the critical points (places where the derivative is 0 or undefined). We then plug these critical points into the function to find the biggest (smallest) value.\n\nThe challenge of optimization is converting the statement of the problem (a paragraph) into the right equations, in order to define the quantity to maximize (or minimize) as a function of one variable, which allows us to take the derivative and find the critical points."}
︠994d387b-25aa-414a-9df5-51315be0a0bai︠
%md
We will generally follow these steps:

**Step 1** Define relevant variables.

**Step 2** Draw a picture.

**Step 3** Determine equations relating the variables.

**Step 4** Use the given constraints to eliminate as many variables as possible in order to write the quantity to be maximized (or minimized) as a function of one variable.

**Step 5** Take the derivative of our function.

**Step 6** Set the derivative equal to 0 and solve for the variable. Find where the derivative is undefined (if any). These are the critical points.

**Step 7** Plug the critical points and the endpoints of the domain into the function. [Note: If the endpoints of the domain are not included in the domain, then take limits instead.] The largest (smallest) value is the absolute max (min).

**Step 8** Check your answer with a graph.

**Step 9** Answer the original question. Sometimes you are asked for the max (or min) value. Other times you are asked for the values of the variables that result in that max (min) value. Sometimes you're asked for all of the above. When you're done with the other steps, go back and read the question. *And don't forget to use correct units.*
︡7c4770d5-5b6f-42ef-b85f-dd9213c28042︡{"done":true,"md":"We will generally follow these steps:\n\n**Step 1** Define relevant variables.\n\n**Step 2** Draw a picture.\n\n**Step 3** Determine equations relating the variables.\n\n**Step 4** Use the given constraints to eliminate as many variables as possible in order to write the quantity to be maximized (or minimized) as a function of one variable.\n\n**Step 5** Take the derivative of our function.\n\n**Step 6** Set the derivative equal to 0 and solve for the variable. Find where the derivative is undefined (if any). These are the critical points.\n\n**Step 7** Plug the critical points and the endpoints of the domain into the function. [Note: If the endpoints of the domain are not included in the domain, then take limits instead.] The largest (smallest) value is the absolute max (min).\n\n**Step 8** Check your answer with a graph.\n\n**Step 9** Answer the original question. Sometimes you are asked for the max (or min) value. Other times you are asked for the values of the variables that result in that max (min) value. Sometimes you're asked for all of the above. When you're done with the other steps, go back and read the question. *And don't forget to use correct units.*"}
︠12aa159a-3e1a-4db8-bc98-3dfae71dabd6i︠
%md
## Example 1

A rectangle has perimeter 100 meters. Find the dimensions that maximize the area.

**Solution**

**Step 1** Define variables: (1) the dimensions of the rectangle, which we'll call $x$ and $y$; (2) the area, which we'll call $A$; and (3) the perimeter, which we'll call $P$.
︡b6f2fe57-0eef-4f3f-b5b8-5bc3bcf34515︡{"done":true,"md":"## Example 1\n\nA rectangle has perimeter 100 meters. Find the dimensions that maximize the area.\n\n**Solution**\n\n**Step 1** Define variables: (1) the dimensions of the rectangle, which we'll call $x$ and $y$; (2) the area, which we'll call $A$; and (3) the perimeter, which we'll call $P$."}
︠41faf248-b516-4ed7-bfec-7bb432d5609di︠
%md
**Step 2** Draw a picture.
︡0586c32e-6afb-43da-a81a-089cb1a5a0dd︡{"done":true,"md":"**Step 2** Draw a picture."}
︠3499e76f-2545-48a5-996b-41576830151esi︠
%auto
%hide
line([(0,0),(2,0),(2,1),(0,1),(0,0)],axes=false,color='black',figsize=3)+text('x',(1,-.07),color='black')+text('y',(2.07,.5),color='black')
︡5d6758e6-3698-4758-910d-0a618ae139e1︡{"hide":"input"}︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4928/tmp_akf3Hi.svg","show":true,"text":null,"uuid":"9e5e8dd3-1b67-470b-9d61-c36e6eb3538e"},"once":false}︡{"done":true}︡
︠32b5da44-e1e0-49a8-8924-84bb00c10149i︠
%md
**Step 3** Set up equations:

* the area of a rectangle is $A=xy$.

* the perimeter is $P=2x+2y$.
︡887cbaa9-daf7-47c9-afaf-652d7fa4c2df︡{"done":true,"md":"**Step 3** Set up equations:\n\n* the area of a rectangle is $A=xy$.\n\n* the perimeter is $P=2x+2y$."}
︠0b1704ab-e52c-4c9c-b3c5-29cbd8849ab1i︠
%md
**Step 4** Eliminate variables:

We are told that $P=100$. Plug this in to the perimeter equation and solve for one of the variables:
︡1965ebe8-5e15-4261-b6bb-f27f4bd15275︡{"done":true,"md":"**Step 4** Eliminate variables:\n\nWe are told that $P=100$. Plug this in to the perimeter equation and solve for one of the variables:"}
︠52a21d57-9957-4687-939c-274eedde3e4b︠
%var y
solve(100==2*x+2*y,y)
︡5beca883-c26c-4ca5-8235-a9f3d3ccf88e︡{"stdout":"[y == -x + 50]"}︡{"stdout":"\n"}︡
︠59df1b67-27bb-451e-b822-5deabbe07d6di︠
%md
We found $y=-x+50$. Plug this into the area equation: $$A=xy=x(-x+50)=-x^2+50x$$

This equation gives $A$ as a function of $x$: $$A(x)=-x^2+50x$$
︡fa2d5229-679f-4286-9844-fb2e9dbe720a︡{"done":true,"md":"We found $y=-x+50$. Plug this into the area equation: $$A=xy=x(-x+50)=-x^2+50x$$\n\nThis equation gives $A$ as a function of $x$: $$A(x)=-x^2+50x$$"}
︠7ec22f75-da05-47b5-8d89-228172f8bcbbi︠
%md
**Steps 5 and 6** Take the derivative and find the critical points.
︡08d0b33f-cb52-4cb9-a849-4d1057764d8f︡{"done":true,"md":"**Steps 5 and 6** Take the derivative and find the critical points."}
︠a88b0bb8-2795-42cb-85ab-a978ee5a4cd4s︠
A(x)=-x^2+50*x
dA(x)=derivative(A,x);show(dA(x))
solve(dA(x)==0,x)
︡ce13a592-1687-4208-ad70-d9cd33d61270︡{"html":"<div align='center'>$\\displaystyle -2 \\, x + 50$</div>"}︡{"stdout":"[x == 25]"}︡{"stdout":"\n"}︡{"done":true}︡
︠c2f6ce26-f131-4cb2-bd99-6e8d6e7ae299i︠
%md
So $A'(x)=0$ if and only if $x=25$.
︡efabc390-0386-4bd0-bbc6-6959caf71578︡{"done":true,"md":"So $A'(x)=0$ if and only if $x=25$."}
︠e0c429bd-e740-4a6f-a98c-3480c55ee3eei︠
%md
Is the derivative ever undefined? No, except at the endpoints of the domain.

We need $x$ and $y$ to be positive (they are distances), which means they also need to be less than 50 (if one is greater than 50, the other would have to be less than 0 to get a perimeter of 100). So our endpoints are $x=0$ and $x=50$.
︡517ed1f0-9bd8-4ecf-a21b-4858566b1b1a︡{"done":true,"md":"Is the derivative ever undefined? No, except at the endpoints of the domain.\n\nWe need $x$ and $y$ to be positive (they are distances), which means they also need to be less than 50 (if one is greater than 50, the other would have to be less than 0 to get a perimeter of 100). So our endpoints are $x=0$ and $x=50$."}
︠a5fc7dd6-8e54-486c-940a-34b4ebfd20d9i︠
%md
**Step 7** Plug the critical points into the function:
︡09e8a817-fbf5-4da5-8c1e-a2ec6bd038ab︡{"done":true,"md":"**Step 7** Plug the critical points into the function:"}
︠07699d58-7f95-44ca-89f3-de6a0c5f42e7︠
A(0);A(25);A(50)
︡8acd41e6-c047-47fa-83b7-59f3ff7e74b9︡{"stdout":"0\n625\n0\n"}︡
︠e5ead317-4dae-4aee-8f80-b626ce0b3658i︠
%md
Now we see that 625 is the maximum possible area, which occurs when $x=25$.
︡6704c722-24c0-487d-a72b-fc560fdd97e1︡{"done":true,"md":"Now we see that 625 is the maximum possible area, which occurs when $x=25$."}
︠41d3d489-5be6-4ad0-86d9-9bb80ebab438i︠
%md
**Step 8** Check with a graph.

We can see that $A$ does indeed have a maximum value around $x=25$.
︡8dff9131-0c5d-41aa-beaa-922d95311cd8︡{"done":true,"md":"**Step 8** Check with a graph.\n\nWe can see that $A$ does indeed have a maximum value around $x=25$."}
︠2fac2f91-9080-4a0b-932c-f42d6ecb7419s︠
plot(A,xmin=0,xmax=50,figsize=4)
︡e09bc031-5a70-4eaa-b957-65cd376e8133︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/20161/tmp_8NUFJi.svg","show":true,"text":null,"uuid":"e364f304-ad23-48f1-8f91-c5fa8ba7ac35"},"once":false}︡{"done":true}︡
︠daa19793-83bf-44f4-80e6-6f925eb6efdai︠
%md
**Step 9** Answer the question:

When $x=25$ meters, $y=-x+50=-25+50=25$ meters as well.

So the rectangle with maximum area and perimeter $100$ m is a $25$ m by $25$ m square.
︡b8766d84-db2d-476c-a53a-aff58c30e40c︡{"done":true,"md":"**Step 9** Answer the question:\n\nWhen $x=25$ meters, $y=-x+50=-25+50=25$ meters as well.\n\nSo the rectangle with maximum area and perimeter $100$ m is a $25$ m by $25$ m square."}
︠5d8a505d-1d26-45f2-b077-42f7898e7221i︠
%md
## Example 2

A landscape architect wishes to enclose a rectangular garden. On one side she will use a brick wall costing \$30 per foot, and on the other three sides she will use a metal fence costing \$10 per foot. If the area of the garden is to be 1000 square feet, find the dimensions of the garden that will minimize the cost of material.

**Solution**

**Step 1** $A$=area of garden, $C$=cost of material, $x$=length, $y$=width (put brick along one of the "$y$" sides)

**Step 2** Draw a picture.
︡49699198-9bdd-4f5c-a044-8fd235fe1ebe︡{"done":true,"md":"## Example 2\n\nA landscape architect wishes to enclose a rectangular garden. On one side she will use a brick wall costing \\$30 per foot, and on the other three sides she will use a metal fence costing \\$10 per foot. If the area of the garden is to be 1000 square feet, find the dimensions of the garden that will minimize the cost of material.\n\n**Solution**\n\n**Step 1** $A$=area of garden, $C$=cost of material, $x$=length, $y$=width (put brick along one of the \"$y$\" sides)\n\n**Step 2** Draw a picture."}
︠6d27fe3a-316c-480b-becf-cefa2ee9133dis︠
%auto
%hide
line([(0,0),(3,0),(3,1),(0,1),(0,0)],axes=false,color='black',figsize=3,aspect_ratio=1)+text('x - $10/ft',(1.5,-.2),color='black')+text('y - $30/ft',(3.6,.5),color='black')+text('x - $10/ft',(1.5,1.2),color='black')+text('y - $10/ft',(-.6,.5),color='black')
︡3242a316-ab15-4506-9241-0d7880bd0cff︡{"hide":"input"}︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4928/tmp_cwQrRB.svg","show":true,"text":null,"uuid":"7075fb07-7000-40c1-803d-1c390e929fea"},"once":false}︡{"done":true}︡
︠bf2cebcb-7360-4b01-8cc7-e5955f0910c3i︠
%md
**Step 3** $$A=xy$$

The cost of fence is the cost per foot times the distance for each side:

$$C=30y+10y+10x+10x=40y+20x$$
︡5a431271-0bb1-4747-8084-369e80fe92ff︡{"done":true,"md":"**Step 3** $$A=xy$$\n\nThe cost of fence is the cost per foot times the distance for each side:\n\n$$C=30y+10y+10x+10x=40y+20x$$"}
︠c4d6625c-0959-4124-a3ce-c45c20fde1cei︠
%md
**Step 4** We are told $A=1000$, so plug this into the area equation and solve for $y$:

$$1000=xy\Rightarrow$$

$$y=\frac{1000}{x}$$

Now substitute for $y$ in the cost equation to get a function of $x$:

$$C(x)=40\left(\frac{1000}{x}\right)+20x=\frac{40000}{x}+20x$$
︡94109b27-9603-4a82-aeaf-33a328d14030︡{"done":true,"md":"**Step 4** We are told $A=1000$, so plug this into the area equation and solve for $y$:\n\n$$1000=xy\\Rightarrow$$\n\n$$y=\\frac{1000}{x}$$\n\nNow substitute for $y$ in the cost equation to get a function of $x$:\n\n$$C(x)=40\\left(\\frac{1000}{x}\\right)+20x=\\frac{40000}{x}+20x$$"}
︠edede70d-e90b-4714-82d1-4260197fac32i︠
%md
**Steps 5 and 6** Take the derivative and find the critical points.
︡16a79b4d-d81e-4675-9118-ce70e965df31︡{"done":true,"md":"**Steps 5 and 6** Take the derivative and find the critical points."}
︠ec8820a1-25f9-443f-add4-8ef5943da26as︠
C(x)=40000/x+20*x
dC(x)=derivative(C,x);show(dC(x))
solve(dC(x)==0,x)
︡ad22365d-19f1-4aad-971c-fc9615f3fd1e︡{"html":"<div align='center'>$\\displaystyle -\\frac{40000}{x^{2}} + 20$</div>"}︡{"stdout":"[x == -20*sqrt(5), x == 20*sqrt(5)]"}︡{"stdout":"\n"}︡{"done":true}︡
︠d50f3a61-8eab-4339-998d-4396ae3fababi︠
%md
Since x is a distance, we know $x>0$, so we have one critical point: $x=20\sqrt{5}\approx44.72$.

<br>

The domain of the cost function is $(0,\infty)$.
︡e8942b1a-c98b-45b7-8b20-94e7b2663b1f︡{"done":true,"md":"Since x is a distance, we know $x>0$, so we have one critical point: $x=20\\sqrt{5}\\approx44.72$.\n\n<br>\n\nThe domain of the cost function is $(0,\\infty)$."}
︠60afbf99-bd40-48ff-b102-d7c820573b86i︠
%md
**Step 7** Let's plug the critical point into the cost function:
︡b899df2b-abe1-42d8-a302-0a91c0ed4bc7︡{"done":true,"md":"**Step 7** Let's plug the critical point into the cost function:"}
︠fc14dbd9-0a45-4207-a473-577302861f7b︠
C(20*sqrt(5));N(_)
︡d9748934-0ceb-49e5-a6aa-91716dba8162︡{"stdout":"800*sqrt(5)\n1788.85438199983\n"}︡
︠6351739d-5b28-4972-b735-8c081628ad2ei︠
%md
What happens to the cost as $x\rightarrow0$ or $x\rightarrow\infty$?
︡ee35d19c-c76e-43f6-b3f4-0ac3d8deb797︡{"md":"What happens to the cost as $x\\rightarrow0$ or $x\\rightarrow\\infty$?\n"}︡
︠38912f6f-0b90-4356-b6cf-d636371bd717︠
limit(C(x),x=0,dir='right');limit(C(x),x=infinity)
︡ff3af06f-df08-4a8a-9e70-ad116301f78f︡{"stdout":"+Infinity\n+Infinity\n"}︡
︠ae2a4d2e-e343-44c8-87f4-750485af569ai︠
%md
As the $x$ dimension gets really small or really large, the cost increases without bound, so we have a minimum at our critical point.
︡a7e34ea1-8dd3-4f08-9b82-0adb3dc63b85︡{"done":true,"md":"As the $x$ dimension gets really small or really large, the cost increases without bound, so we have a minimum at our critical point."}
︠591a11a2-07fd-454c-8f19-3200a0f6e31ai︠
%md
**Step 8** Check with a graph.

We can see a minimum around $x=45$.
︡71b63ac5-74d5-4e96-b82c-9b6636674b1c︡{"done":true,"md":"**Step 8** Check with a graph.\n\nWe can see a minimum around $x=45$."}
︠af0d9816-6047-4fa1-916a-28dc7e91b813s︠
plot(C,xmin=0,xmax=100,ymax=5000,figsize=4)
︡8ba5f405-4f30-490d-b821-45974d6cc91c︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/20161/tmp_kKQmow.svg","show":true,"text":null,"uuid":"9af8b74c-b7c5-44f3-a31c-6e2e46c58c45"},"once":false}︡{"done":true}︡
︠b59726b3-d68c-4cc4-bcad-8374f78216edi︠
%md
**Step 9** Make sure to answer the question: What dimensions minimize the cost?

We want $x=20\sqrt{5}\approx 44.72$ feet, and then $\displaystyle y=\frac{1000}{x}=\frac{1000}{20\sqrt{5}}\approx 22.36$ feet (remember the brick goes along one of the sides of this length).
︡99fe3928-2115-4256-b842-e47ff9cf2d93︡︡{"done":true,"md":"**Step 9** Make sure to answer the question: What dimensions minimize the cost?\n\nWe want $x=20\\sqrt{5}\\approx 44.72$ feet, and then $\\displaystyle y=\\frac{1000}{x}=\\frac{1000}{20\\sqrt{5}}\\approx 22.36$ feet (remember the brick goes along one of the sides of this length)."}
︠c4d0bc79-d8a3-45fa-a561-96b9fe3bb1a6i︠
%md
## Example 3

A box with no top is to be constructed from a 5 ft by 4 ft piece of cardboard by cutting a square from each corner and folding up the sides. How much should be cut off each corner to maximize the volume of the box?

**Solution**

**Step 1** $V=$ volume, $l=$ length, $w=$ width, and $h=$ height. We'll cut out an $h$ by $h$ square from each side (when we fold up the sides, $h$ will be the height of the box).

**Step 2** Draw a picture.
︡71cbadae-8f91-4422-aec2-c90b6b49970b︡{"done":true,"md":"## Example 3\n\nA box with no top is to be constructed from a 5 ft by 4 ft piece of cardboard by cutting a square from each corner and folding up the sides. How much should be cut off each corner to maximize the volume of the box?\n\n**Solution**\n\n**Step 1** $V=$ volume, $l=$ length, $w=$ width, and $h=$ height. We'll cut out an $h$ by $h$ square from each side (when we fold up the sides, $h$ will be the height of the box).\n\n**Step 2** Draw a picture."}
︠7ed509f1-1bda-4307-9bda-247f11660c0dis︠
%auto
%hide
line([(0,0),(5,0),(5,4),(0,4),(0,0)],color='black',axes=false,figsize=4)+line([(0,3),(1,3),(1,4)],color='black',linestyle='dashed',aspect_ratio=1)+line([(1,0),(1,1),(0,1)],color='black',linestyle='dashed')+line([(4,0),(4,1),(5,1)],color='black',linestyle='dashed')+line([(4,4),(4,3),(5,3)],color='black',linestyle='dashed')+text('h',(.5,1.2),color='black')+text('h',(1.2,.5),color='black')
︡dfd37ef7-f97f-46e9-8c23-c6d387dedf82︡{"hide":"input"}︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4928/tmp_cWw1xK.svg","show":true,"text":null,"uuid":"89da1edf-5797-4795-aedf-adcd35937691"},"once":false}︡{"done":true}︡
︠1b9901a4-e6e3-4f99-84b5-9ff79c21c54fi︠
%md
**Step 3** The volume of the box is $V=lwh$, where $l=5-2h$ and $w=4-2h$.

**Step 4** Substituting we see $V=(5-2h)(4-2h)h=4h^3-18h^2+20h$
︡290a0621-2a43-4e57-862d-58ef0bfc0778︡{"done":true,"md":"**Step 3** The volume of the box is $V=lwh$, where $l=5-2h$ and $w=4-2h$.\n\n**Step 4** Substituting we see $V=(5-2h)(4-2h)h=4h^3-18h^2+20h$"}
︠e43144ce-19cb-4978-b4cc-c3809fb3ae90︠
%var h
expand((5-2*h)*(4-2*h)*h)
︡0491104b-68a4-4d08-be3a-26164c6d416f︡{"stdout":"4*h^3 - 18*h^2 + 20*h\n"}︡
︠74cd70fd-2edb-4eae-a823-8f884bd33242i︠
%md
**Steps 5 and 6**
︡152ce46b-f759-4721-814e-c8978c261772︡{"md":"**Steps 5 and 6**\n"}︡
︠ce6608aa-b615-454e-acf3-9ae0f983fa91s︠
V(h)=4*h^3 - 18*h^2 + 20*h
dV(h)=derivative(V,h);show(dV(h))
solve(dV(h)==0,h)
︡702d291a-633e-4e23-ad0c-98daeecb8cd2︡{"html":"<div align='center'>$\\displaystyle 12 \\, h^{2} - 36 \\, h + 20$</div>"}︡{"stdout":"[h == -1/6*sqrt(21) + 3/2, h == 1/6*sqrt(21) + 3/2]\n"}︡{"done":true}︡
︠05d841ed-613c-4854-af85-60b5760d37d0︠
N(-1/6*sqrt(21) + 3/2);N(1/6*sqrt(21) + 3/2)
︡616b8885-c082-4335-a3a7-5c852fa667f7︡{"stdout":"0.736237384174027\n2.26376261582597\n"}︡
︠72f2c05b-c6f1-4784-b96d-cd3db9aef96ci︠
%md
**Step 7**
︡b93e7d01-ba27-4438-96ab-dd98185c1817︡{"md":"**Step 7**\n"}︡
︠e509de84-8298-4278-a440-83166c6f1230︠
V(-1/6*sqrt(21) + 3/2);N(_)
︡106fca61-cf82-4fe2-ab3a-f79b858722e0︡{"stdout":"-1/54*(sqrt(21) - 9)^3 - 1/2*(sqrt(21) - 9)^2 - 10/3*sqrt(21) + 30\n6.56422554052121\n"}︡
︠e4f63ede-b227-42a0-b719-28619696b34e︠
V(1/6*sqrt(21) + 3/2);N(_)
︡d7daeddb-95e7-4c27-a233-a49b46490b62︡{"stdout":"1/54*(sqrt(21) + 9)^3 - 1/2*(sqrt(21) + 9)^2 + 10/3*sqrt(21) + 30\n-0.564225540521207\n"}︡
︠ed4ad005-a59a-4715-97df-8c1a21f45104i︠
%md
The second value gives a negative volume, so that can't be right. It looks like the first value is the one we want.

We should also think about the endpoints of the domain. We need $h>0$, since it is a length. We also need $h<2$, because $w=4-2h$, and if $h\ge2$, then $w\le 0$.

Indeed, if we set $h=0$ or $h=2$ we get a volume of 0. This also explains why we got a negative volume for $h\approx2.26$.
︡a1b66098-756f-4ed8-9e23-55acb0837500︡{"md":"The second value gives a negative volume, so that can't be right. It looks like the first value is the one we want.\n\nWe should also think about the endpoints of the domain. We need $h>0$, since it is a length. We also need $h<2$, because $w=4-2h$, and if $h\\ge2$, then $w\\le 0$.\n\nIndeed, if we set $h=0$ or $h=2$ we get a volume of 0. This also explains why we got a negative volume for $h\\approx2.26$.\n"}︡
︠51318a90-225e-4553-9461-a71598a145c2︠
V(0);V(2)
︡ea20503f-0f07-4f4a-bdb2-268e501672f2︡{"stdout":"0\n0\n"}︡
︠deb3d256-2066-44b4-beed-33c93fb31de4i︠
%md
So the maximum volume is about $6.56$, which occurs when $h\approx0.74$.
︡131b0f37-6032-438d-8b08-2bf587f2f914︡︡{"done":true,"md":"So the maximum volume is about $6.56$, which occurs when $h\\approx0.74$."}
︠12979e43-297d-4b6e-98d6-0133ab5ea84ci︠
%md
**Step 8** On the graph, we can see a max around $h\approx\frac{3}{4}$.
︡9e49d5e0-a743-48c4-955e-8122dfca25da︡︡{"done":true,"md":"**Step 8** On the graph, we can see a max around $h\\approx\\frac{3}{4}$."}
︠e78ded21-547c-4eb4-bc63-c07a85b89906s︠
plot(V,xmin=0,xmax=2,figsize=4)
︡fad8db04-b1c9-4b11-8872-aac0a0d57c82︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/20161/tmp_rNqZCP.svg","show":true,"text":null,"uuid":"80c52130-29ee-4565-bab8-576cbb26d0d7"},"once":false}︡{"done":true}︡
︠a7fe8ecb-fcbc-4c58-acaf-cea1f8d8c7b3i︠
%md
**Step 9** We should cut off approximately $0.74$ feet from each corner.
︡7a550f09-b8e3-4879-acf3-cb1637630fdf︡︡{"done":true,"md":"**Step 9** We should cut off approximately $0.74$ feet from each corner."}
︠6545a4ab-2c47-451b-a638-45a610ce56b6︠










