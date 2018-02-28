︠fa4cdab9-e9a8-4632-90f1-27ee47295fb7i︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡3cd55516-9b64-4123-a678-c0a965f26e6f︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠460df0a6-871f-4437-a3cb-59f9569837a6i︠
%md
### Prerequisites:

* Intro to Sage
* Symbolic Integration
︡d47c4a21-7493-4fcc-bc18-e07fea3ca6fa︡{"done":true,"md":"### Prerequisites:\n\n* Intro to Sage\n* Symbolic Integration"}
︠9c7626cf-5c73-43d1-8a66-632f9e0d3577i︠
%md
# Volume

Our goal is to find the volume of a three-dimensional object. We'll start with the simplest figure, a right cylindrical solid.

**Definition:** A right cylindrical solid consists of a plane region B1 (called the "base"), a congruent region B2 in a parallel plane, and all points on line segments that are perpendicular to B1 and that join B1 and B2.

Here's an example picture:
︡71186bc7-4096-43af-b1f0-324606f87305︡{"done":true,"md":"# Volume\n\nOur goal is to find the volume of a three-dimensional object. We'll start with the simplest figure, a right cylindrical solid.\n\n**Definition:** A right cylindrical solid consists of a plane region B1 (called the \"base\"), a congruent region B2 in a parallel plane, and all points on line segments that are perpendicular to B1 and that join B1 and B2.\n\nHere's an example picture:"}
︠e686e246-bd2f-4721-b723-51a5fb87483csi︠
%hide
salvus.file('RightCylindricalSolid.png')
︡e70bcded-a3c5-4f60-8203-48a2d0b2814d︡{"hide":"input"}︡{"file":{"filename":"RightCylindricalSolid.png","show":true,"text":null,"uuid":"2ef0dfe2-2f82-4e79-9758-99ba0bc00e39"},"once":false}︡{"done":true}︡
︠58a0d2c1-93ec-494c-a881-a458770aa190i︠
%md
The base could be any shape in a plane. If the base is a rectangle, we get a rectangular box. If the base is a polygon, we get a prism. If the base is a circle, we get a (circular) cylinder. If the base is an amoeba-shaped blob, then we get ... something.

The key fact about cylindrical solids is that they have congruent cross sections (when you cut parallel to the base).

A cross section is the intersection of the solid and a plane. If you take a plane parallel to the base that intersects the solid, then the intersection is a plane region congruent to the base.

It is easy to compute the volume of a cylindrical solid: simply multiply the area of the base and the height. So if $A=$ area of base and $h=$ height, then the volume is $V=A\cdot h$.

Of course, most solids are not cylindrical. How do we find the volume of different kinds of solids? The strategy is to cut the solid into pieces and approximate each piece with a cylindrical solid. Find the volume of these approximations and add up all the results. This gives you an approximation for the volume of the whole solid. You can improve the approximation by increasing the number of pieces.
︡8df8a04a-5abe-47a0-b413-ae1e32a77a21︡{"done":true,"md":"The base could be any shape in a plane. If the base is a rectangle, we get a rectangular box. If the base is a polygon, we get a prism. If the base is a circle, we get a (circular) cylinder. If the base is an amoeba-shaped blob, then we get ... something.\n\nThe key fact about cylindrical solids is that they have congruent cross sections (when you cut parallel to the base).\n\nA cross section is the intersection of the solid and a plane. If you take a plane parallel to the base that intersects the solid, then the intersection is a plane region congruent to the base.\n\nIt is easy to compute the volume of a cylindrical solid: simply multiply the area of the base and the height. So if $A=$ area of base and $h=$ height, then the volume is $V=A\\cdot h$.\n\nOf course, most solids are not cylindrical. How do we find the volume of different kinds of solids? The strategy is to cut the solid into pieces and approximate each piece with a cylindrical solid. Find the volume of these approximations and add up all the results. This gives you an approximation for the volume of the whole solid. You can improve the approximation by increasing the number of pieces."}
︠56015e5e-f9d4-4a9f-b69c-4022fc16799cis︠
%md
## Example 1

To find the volume of a loaf of bread, cut it into slices and approximate the volume of each slice ($V=$ area of face times width of slice).
︡9fbc278b-9c78-4e2d-9514-2c2cd1dfcbcd︡{"md":"## Example 1\n\nTo find the volume of a loaf of bread, cut it into slices and approximate the volume of each slice ($V=$ area of face times width of slice).\n"}︡
︠fb2aa0df-55c2-43fe-93d0-0fcff21953c9si︠
%hide
salvus.file('SlicedBread.jpg')
︡598df307-ece3-4544-aaab-d04108af4322︡{"hide":"input"}︡{"file":{"filename":"SlicedBread.jpg","show":true,"text":null,"uuid":"5d85f173-6b9c-4c9c-80f9-353a436a9f5d"},"once":false}︡{"done":true}︡
︠372e6017-aa35-46a1-9be3-6d9adf5e25b4i︠

%md
Let's make this idea more mathematical.

* Orient the solid $S$ along the x-axis between $x=a$ and $x=b$.

* Divide the interval $[a,b]$ into $n$ subintervals of equal width $\Delta x=\frac{b-a}{n}$.

* Label the endpoints of the intervals in order: $a=x_0, x_1, x_2,\ldots,x_n=b$. [Is this sounding familiar?]

* Let $A(x)$ be the area of the cross section of $S$ obtained by intersecting $S$ with the plane perpendicular to the x-axis that includes $x$.

* Approximate the volume of the portion of $S$ between $x_i$ and $x_{i+1}$ by $V_i=A(x_i)\cdot \Delta x$. That is, treat this portion as a cylindrical solid with base area $A(x_i)$ and height $\Delta x = x_{i+1}-x_i$.

* Add up all the approximations to get an estimate for the volume of $S$: $V\approx\displaystyle\sum_{i=0}^{n-1} V_i=\sum_{i=0}^{n-1}A(x_i)\cdot\Delta x$.

* Notice that this is a Riemann sum! To get the actual volume, take the limit as $n\to\infty$. When you take a limit of Riemann sums, you get an integral.

* Therefore, $\displaystyle V=\int_a^bA(x)\, dx$.
︡ab62f96e-540d-4628-88d8-35d1a749cacf︡{"md":"Let's make this idea more mathematical.\n\n* Orient the solid $S$ along the x-axis between $x=a$ and $x=b$.\n\n* Divide the interval $[a,b]$ into $n$ subintervals of equal width $\\Delta x=\\frac{b-a}{n}$.\n\n* Label the endpoints of the intervals in order: $a=x_0, x_1, x_2,\\ldots,x_n=b$. [Is this sounding familiar?]\n\n* Let $A(x)$ be the area of the cross section of $S$ obtained by intersecting $S$ with the plane perpendicular to the x-axis that includes $x$.\n\n* Approximate the volume of the portion of $S$ between $x_i$ and $x_{i+1}$ by $V_i=A(x_i)\\cdot \\Delta x$. That is, treat this portion as a cylindrical solid with base area $A(x_i)$ and height $\\Delta x = x_{i+1}-x_i$.\n\n* Add up all the approximations to get an estimate for the volume of $S$: $V\\approx\\displaystyle\\sum_{i=0}^{n-1} V_i=\\sum_{i=0}^{n-1}A(x_i)\\cdot\\Delta x$.\n\n* Notice that this is a Riemann sum! To get the actual volume, take the limit as $n\\to\\infty$. When you take a limit of Riemann sums, you get an integral.\n\n* Therefore, $\\displaystyle V=\\int_a^bA(x)\\, dx$."}︡
︠fc25afad-64d2-4dd6-9ace-e97361f9a475i︠

%md
## Example 2

Find the volume of a sphere of radius $r$.
︡c3a5f883-23bf-4d36-9892-520590d44cbb︡{"done":true,"md":"## Example 2\n\nFind the volume of a sphere of radius $r$."}
︠c6566533-4a53-4782-a3e2-818b26d724a9i︠
%md
**Solution:** Put the center of the sphere at the origin. On the x-axis, the sphere starts at $a=-r$ and ends at $b=r$. A cross section perpendicular to the x-axis is a circle whose radius is the y-value of the sphere at that point.

Take a cross section perpendicular to the x-axis at $x$. The point on the sphere directly above $x$ is $(x,y,0)$, for some $y>0$ (we're right above $x$, so $z=0$). This point is the very top of the circular cross section.

︡67058490-98f7-48e8-af80-15730b235e6d︡{"done":true,"md":"**Solution:** Put the center of the sphere at the origin. On the x-axis, the sphere starts at $a=-r$ and ends at $b=r$. A cross section perpendicular to the x-axis is a circle whose radius is the y-value of the sphere at that point.\n\nTake a cross section perpendicular to the x-axis at $x$. The point on the sphere directly above $x$ is $(x,y,0)$, for some $y>0$ (we're right above $x$, so $z=0$). This point is the very top of the circular cross section."}
︠9d3ce85a-7d23-4e05-bfa2-31033ab15826si︠
%hide
%var y
implicit_plot(x^2+y^2==1,(x,-1,1),(y,-1,1),axes=False,frame=False,color='black')+implicit_plot(x^2+5*y^2==1,(x,-1,1),(y,-1,0),axes=False,frame=False,color='black')+implicit_plot(x^2+5*y^2==1,(x,-1,1),(y,0,1),axes=False,frame=False,linestyle='dashed',color='black')+implicit_plot((x-2/3)^2/(1/10)^2+y^2/(5/9)==1,(x,-1,1),(y,-1,1),axes=False,frame=False)+point((2/3,sqrt(5)/3),color='black',pointsize=30)+text('(x,y,0)',(.8,.8),color='black')
︡4c84557f-4353-4a99-974b-f947a422dad3︡{"hide":"input"}︡{"file":{"filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/6934/tmp_6vrSUg.svg","show":true,"text":null,"uuid":"a7322dd2-bbf1-4df4-9400-28110ac81614"},"once":false}︡{"done":true}︡
︠f10cbee8-aec0-4797-8d58-4841e4143c15i︠

%md
The equation of the sphere is $x^2+y^2+z^2=r^2$, so for the point $(x,y,0)$ we have $x^2+y^2=r^2$. Solving for $y$, we get $\displaystyle y=\sqrt{r^2-x^2}$ (remember $y>0$).

This $y$ is the radius of the cross section, so using the area formula for a circle we see that the area of our cross section is $\displaystyle A(x)=\pi y^2=\pi\left(\sqrt{r^2-x^2}\right)^2=\pi(r^2-x^2)$.

Thus, the volume of the sphere is $\displaystyle V=\int_{-r}^rA(x)\, dx=\int_{-r}^r\pi(r^2-x^2)\, dx$.

Let's have Sage compute this (although this is not a hard integral; $r$ is a constant, so we're integrating a quadratic function).
︡38e483d8-6399-4c59-b00a-02cc98feabe4︡{"done":true,"md":"The equation of the sphere is $x^2+y^2+z^2=r^2$, so for the point $(x,y,0)$ we have $x^2+y^2=r^2$. Solving for $y$, we get $\\displaystyle y=\\sqrt{r^2-x^2}$ (remember $y>0$).\n\nThis $y$ is the radius of the cross section, so using the area formula for a circle we see that the area of our cross section is $\\displaystyle A(x)=\\pi y^2=\\pi\\left(\\sqrt{r^2-x^2}\\right)^2=\\pi(r^2-x^2)$.\n\nThus, the volume of the sphere is $\\displaystyle V=\\int_{-r}^rA(x)\\, dx=\\int_{-r}^r\\pi(r^2-x^2)\\, dx$.\n\nLet's have Sage compute this (although this is not a hard integral; $r$ is a constant, so we're integrating a quadratic function)."}
︠8ad747eb-2a52-4782-9f16-167d1f27e1e0︠
%var r
integral(pi*(r^2-x^2),x,-r,r)  #integral(function, variable, lower limit, upper limit)
︡7214b2d7-5f2e-4dc1-afa9-a6b5bac2aaa8︡{"stdout":"4/3*pi*r^3"}︡{"stdout":"\n"}︡
︠87c9b9bc-cc1d-42a6-a557-d4168ad6235bi︠
%md
So, $V=\frac{4}{3}\pi r^3$. That's just what we expect from Geometry.
︡995f171a-87da-46a5-be4f-e56ddd0a92fa︡{"md":"So, $V=\\frac{4}{3}\\pi r^3$. That's just what we expect from Geometry.\n"}︡
︠c0e50ffc-3768-4feb-8276-a86e6b3cf2c8i︠
%md
## Example 3

Find the volume of a right pyramid whose base is a square with sides of length 10 and whose height is 5.
︡a927799e-0354-461f-b082-e473d536c96e︡{"done":true,"md":"## Example 3\n\nFind the volume of a right pyramid whose base is a square with sides of length 10 and whose height is 5."}
︠f5df7ae9-223d-4ccf-a183-097a74f4e1d9i︠
%md
**Solution:** Put the vertex of the pyramid at the origin and the x-axis along its central axis (so the x-axis goes right through the center of the square). Thus $a=0$ and $b=5$.

Take a cross section perpendicular to the x-axis at $x$. This cross section is a square.

︡2ce8f9a0-e8eb-4270-9164-4a36745a1739︡{"done":true,"md":"**Solution:** Put the vertex of the pyramid at the origin and the x-axis along its central axis (so the x-axis goes right through the center of the square). Thus $a=0$ and $b=5$.\n\nTake a cross section perpendicular to the x-axis at $x$. This cross section is a square."}
︠279acd43-15f7-4775-916e-82194ba77fd4is︠
%auto
%hide
P=plot(.8*x,0,4.5)+plot(-x,0,4.5)+line([(4.5,-4.5),(4.5,.8*4.5)])+plot(1.2*x,0,5.5)+line([(4.5,.8*4.5),(5.5,1.2*5.5)])+plot(-.2*x,0,5.5,linestyle='dashed')+line([(4.5,-4.5),(5.5,-.2*5.5)])+line([(5.5,-.2*5.5),(5.5,1.2*5.5)])+text('10',(5.6,2),color='black')+text('10',(5.1,-3),color='black')+line([(3.5,.8*3.5),(3.5,-3.5),(4.28,-.2*4.28),(4.28,1.2*4.28),(3.5,.8*3.5)],color='black')+text('s',(4,-2.3),color='black')+text('s',(4.35,2.14),color='black')
show(P,ticks=[[],[]])
︡e66b565e-af57-413c-8820-64006b97e082︡{"hide":"input"}︡{"file":{"filename":"/home/user/.sage/temp/project-9189c752-e334-4311-afa9-605b6159620a/216417/tmp_IfFnkd.svg","show":true,"text":null,"uuid":"efc36dbc-6e95-467b-8227-5c00b1c667e1"},"once":false}︡{"done":true}︡
︠bcd70469-e983-4716-8572-370d9e6ba6dfi︠
%md
If the we call the length of the sides of the cross section $s$, then the area of the cross section is $s^2$. But we need to find the area of this cross section in terms of $x$.

Consider the line through $(0,0)$ and $(5,5)$. This line has equation $y=x$. When we take a cross section at some $x$, then the point $(x,x)$ is at the very top, and the length of one side of the cross section is twice $x$, i.e., $s=2x$.

Here is a side view:
︡532fdb67-b191-4265-80eb-a11b7a8dc9fc︡{"done":true,"md":"If the we call the length of the sides of the cross section $s$, then the area of the cross section is $s^2$. But we need to find the area of this cross section in terms of $x$.\n\nConsider the line through $(0,0)$ and $(5,5)$. This line has equation $y=x$. When we take a cross section at some $x$, then the point $(x,x)$ is at the very top, and the length of one side of the cross section is twice $x$, i.e., $s=2x$.\n\nHere is a side view:"}
︠19001d35-c0ce-48fe-9478-e82428b37efdisw︠
%auto
%hide
plot(x,0,5)+plot(-x,0,5)+line([(3.5,-3.5),(3.5,3.5)],color='black')+line([(5,-5),(5,5)])+point([(0,0),(3.5,3.5),(5,5),(3.5,-3.5)],color='black',pointsize=30)+text('(0,0)',(.15,.5),color='black')+text('(x,x)',(3.5,3.9),color='black')+text('(5,5)',(5,5.4),color='black')+text('(x,-x)',(3.5,-3.9),color='black')
︡ef59a4d6-7905-4c28-aaf6-794ec93f7451︡{"hide":"input"}︡{"file":{"filename":"/home/user/.sage/temp/project-9189c752-e334-4311-afa9-605b6159620a/217/tmp_V3J3cl.svg","show":true,"text":null,"uuid":"9197efe8-ed8d-4bbf-b474-6a956e59a62c"},"once":false}︡{"done":true}︡
︠367b63a0-cc75-4674-9845-4708d6af6540i︠

%md
So the area of the cross section is $A(x)=s^2=(2x)^2=4x^2$.

Thus, the volume of the pyramid is $\displaystyle V=\int_0^54x^2\, dx=\frac{500}{3}$.
︡f0f33e54-8eba-40c3-9ca1-69fce081e939︡{"done":true,"md":"So the area of the cross section is $A(x)=s^2=(2x)^2=4x^2$.\n\nThus, the volume of the pyramid is $\\displaystyle V=\\int_0^54x^2\\, dx=\\frac{500}{3}$."}
︠c7330373-577a-4c56-b07c-ab4a60bab276︠
integral(4*x^2,x,0,5)
︡23526568-7390-4ce3-8696-4e06ba7facd2︡{"stdout":"500/3\n"}︡
︠e95f5bdc-85e3-46c0-b05a-cfefeb5868c0is︠
%md
## Example 4

Find the volume of the solid whose base is an elliptical region with boundary curve $9x^2+4y^2=36$ when the cross sections perpendicular to the x-axis are isosceles right triangles with hypotenuse in the base.

Here's a picture of the base. Imagine a solid sticking up out of this ellipse.
︡f8087d03-3c6f-4422-bdb1-0762621b3828︡{"md":"## Example 4\n\nFind the volume of the solid whose base is an elliptical region with boundary curve $9x^2+4y^2=36$ when the cross sections perpendicular to the x-axis are isosceles right triangles with hypotenuse in the base.\n\nHere's a picture of the base. Imagine a solid sticking up out of this ellipse.\n"}︡
︠a76a8a99-2d62-405f-b1b3-011878e10431︠
%var y
implicit_plot(9*x^2+4*y^2==36,(x,-3,3),(y,-3,3))
︡8a19f990-413a-44fc-ab21-455cfc7abd51︡{"once":false,"file":{"show":true,"uuid":"5e695122-91b9-4f41-bd31-dd38a4b16547","filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/5983/tmp_FxGFtP.svg"}}︡{"html":"<div align='center'></div>"}︡
︠8fc1eab3-22de-4171-9643-01abaa71343ei︠
%md
**Solution:** The cross section perpendicular to the x-axis through the point $(x,y)$ with $y>0$ on the ellipse is an isosceles right triangle. The hypotenuse is in the base - it has length $2y$. Let's call the length of the legs $s$.

The Pythagorean Theorem gives $s^2+s^2=(2y)^2$, or $2s^2=4y^2=36-9x^2$ (from the equation of the ellipse).

The area of the cross section is $A=\frac{1}{2}bh=\frac{1}{2}s^2=\frac{1}{4}(36-9x^2)$.

Thus, the volume is $\displaystyle V=\int_{-2}^{2}\frac{1}{4}(36-9x^2)\, dx=24$.
︡1e45f3d6-a807-4e9a-9811-1ee2f6c321b0︡{"md":"**Solution:** The cross section perpendicular to the x-axis through the point $(x,y)$ with $y>0$ on the ellipse is an isosceles right triangle. The hypotenuse is in the base - it has length $2y$. Let's call the length of the legs $s$.\n\nThe Pythagorean Theorem gives $s^2+s^2=(2y)^2$, or $2s^2=4y^2=36-9x^2$ (from the equation of the ellipse).\n\nThe area of the cross section is $A=\\frac{1}{2}bh=\\frac{1}{2}s^2=\\frac{1}{4}(36-9x^2)$.\n\nThus, the volume is $\\displaystyle V=\\int_{-2}^{2}\\frac{1}{4}(36-9x^2)\\, dx=24$.\n"}︡
︠1674f241-244d-4b19-9d87-45c2a4b9ede0︠
integral(1/4*(36-9*x^2),x,-2,2)
︡b9eba7a4-3df0-4b6f-b2a5-00af30a941ae︡{"stdout":"24\n"}︡
︠478ac35f-8f09-42e9-bdac-897ec1fcfdd1i︠
%md
This approach to volume is an example of a very common strategy: break up a complicated problem into small pieces, approximate the answer for the small pieces using something we understand, combine all the approximations, then increase the number of pieces. There are many examples in which this strategy results in an integral.

Next week we'll find the volume of solids of revolution using this cross-section approach.
︡2889552e-45f6-46cc-b595-1264d3051229︡{"md":"This approach to volume is an example of a very common strategy: break up a complicated problem into small pieces, approximate the answer for the small pieces using something we understand, combine all the approximations, then increase the number of pieces. There are many examples in which this strategy results in an integral.\n\nNext week we'll find the volume of solids of revolution using this cross-section approach.\n"}︡
︠27a909df-9c89-432d-9b6b-88b9db50ee10︠









