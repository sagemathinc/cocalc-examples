︠736124cc-122c-455d-8e1d-13dbfdbec02aai︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡0dc59bd9-3e36-4276-852a-06dd302e129c︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠649db687-819b-4d83-bf41-046973d9ed37i︠
%md
### Prerequisites:

* Intro to Sage
* Graphing and Solving Equations
* Symbolic Integration
︡e7c6353e-58a8-4b37-bbd5-34c49fa2df61︡{"done":true,"md":"### Prerequisites:\n\n* Intro to Sage\n* Graphing and Solving Equations\n* Symbolic Integration"}
︠9be2f466-dfd9-4b85-89c6-d523c9b36cddsi︠
%md
# Volume, part 3: Cylindrical Shells

For some solids of revolution, the disk and washer methods we discussed last week are difficult, if not impossible. For these examples, there is another method: cylindrical shells.
︡8bf030d6-ef26-40f3-9426-c749e3aef704︡{"done":true,"md":"# Volume, part 3: Cylindrical Shells\n\nFor some solids of revolution, the disk and washer methods we discussed last week are difficult, if not impossible. For these examples, there is another method: cylindrical shells."}
︠3f89a96d-0444-4cd4-9ba0-dd345a72ddd4i︠
%md
## Example 1

Find the volume of the solid obtained by rotating around the y-axis the region between $f(x)=2x^2-x^3$ and the x-axis from $x=0$ to $x=2$.
︡b810d036-27b2-4f2d-b6e2-f765625f2419︡{"done":true,"md":"## Example 1\n\nFind the volume of the solid obtained by rotating around the y-axis the region between $f(x)=2x^2-x^3$ and the x-axis from $x=0$ to $x=2$."}
︠6b4837ee-8dfc-4243-bdbf-891d4cc78601i︠
%md
Here is the region:
︡efc3b30f-e2dc-4669-9a31-f1e0c8db0151︡{"done":true,"md":"Here is the region:"}
︠99b3864c-4e61-4e86-9621-4d062b03c1a7︠
f(x)=2*x^2-x^3
plot(f,xmin=0,xmax=2,fill='axis')
︡50115d14-2d36-4e30-9118-e3ff405fe239︡{"once":false,"file":{"show":true,"uuid":"0eb93ca0-b9f7-4ec1-8171-f3506709e2e6","filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/15093/tmp_VoulVf.svg"}}︡{"html":"<div align='center'></div>"}︡
︠b53561a5-b96b-44b8-a7e3-a3b36a439044i︠
%md
Here is the surface we get by rotating the curve. It's kind of like a bundt cake.
︡f8a76bfc-5a84-484e-9468-7b2c8cad60a3︡{"md":"Here is the surface we get by rotating the curve. It's kind of like a bundt cake.\n"}︡
︠679dfb99-9faa-45fa-ad22-4e01240818deis︠
%auto
%hide
f(x)=2*x^2-x^3
revolution_plot3d(f,(x,0,2),show_curve=True)+revolution_plot3d(0,(x,0,2),color='green',opacity=.5)
︡1ba23f89-9e7a-4627-b3be-12e1eeb5e4c8︡{"hide":"input"}︡{"file":{"filename":"32396b8b-c38d-421d-949d-9d8791f32d3d.sage3d","uuid":"32396b8b-c38d-421d-949d-9d8791f32d3d"}}︡{"done":true}︡
︠800431b3-ac19-4e85-a54d-b6878ffdd1b1i︠
%md
If we take cross sections perpendicular to the y-axis (the axis of rotation), we get annuli (or washers). But we run into problems with this method:

* The inner and outer radii are given by the same function.

* To find the limits of integration, we need to find the maximum y-value on this interval.

* We need to know $x$ given $y$; that is, we must solve $y=2x^2-x^3$ for $x$.

For this particular example, we could solve these problems (but it would take some work). Let's try another approach, which turns out to be easier.
︡96a51ff5-29b2-41dc-a271-d5485d3d036b︡{"done":true,"md":"If we take cross sections perpendicular to the y-axis (the axis of rotation), we get annuli (or washers). But we run into problems with this method:\n\n* The inner and outer radii are given by the same function.\n\n* To find the limits of integration, we need to find the maximum y-value on this interval.\n\n* We need to know $x$ given $y$; that is, we must solve $y=2x^2-x^3$ for $x$.\n\nFor this particular example, we could solve these problems (but it would take some work). Let's try another approach, which turns out to be easier."}
︠3e1f4c53-b148-4330-aab7-6b46e32bf482i︠
%md
Instead of slicing with a horizontal knife (to get cross sections), let's cut this "cake" using cylindrical "cookie cutters". That is, take a cylinder of radius $r$ (centered on the axis of rotation) and press it straight through the solid. Then take a cylinder with a slightly bigger radius (say $R$) and press it down. What you have now cut out is a cylindrical shell, a slab of cake shaped like a circular cylinder.

Here's a sample picture I found online (it's from a YouTube [video](https://www.youtube.com/watch?v=W3S_TBW1vSY) by Andrea Marchese of the City College of New York):
︡4095d0ea-a9db-4056-b796-95e6a9e5a0af︡{"done":true,"md":"Instead of slicing with a horizontal knife (to get cross sections), let's cut this \"cake\" using cylindrical \"cookie cutters\". That is, take a cylinder of radius $r$ (centered on the axis of rotation) and press it straight through the solid. Then take a cylinder with a slightly bigger radius (say $R$) and press it down. What you have now cut out is a cylindrical shell, a slab of cake shaped like a circular cylinder.\n\nHere's a sample picture I found online (it's from a YouTube [video](https://www.youtube.com/watch?v=W3S_TBW1vSY) by Andrea Marchese of the City College of New York):"}
︠517e75a3-8de9-48a6-b913-04ab47118754si︠
%hide
salvus.file('CylindricalShell.jpg')
︡2f3aac72-1b76-405a-b6ad-554fe40efcd3︡{"hide":"input"}︡{"file":{"filename":"CylindricalShell.jpg","show":true,"text":null,"uuid":"2d080cbe-9a21-4f52-a26e-900661786f41"},"once":false}︡{"done":true}︡
︠d2fa5e4d-802e-4ffc-bb19-5b17b3dbd411i︠

%md
What's the volume of this cylinder of cake?

Slice the slab down the side and unroll it. What you have is a flat slab of cake. Its height is the height of the cake at that point $(f(R)\approx f(r))$, its width is the circumference of the cylinder $(2\pi R\approx 2\pi r)$, and its thickness is $R-r$. I have the approximations because our cylindrical shell is not exactly flat on top (because of the curve of the function).

So the volume of this slab is approximately $f(r)\cdot2\pi r\cdot (R-r)$.

Now we need to keep cutting more slabs until we've cut up the whole cake, approximate the volume of each slab, and add them all up. That gives the approximate volume of the cake.

Of course, we make the approximation better by cutting thinner slabs. In other words, we let the number of cylindrical shells approach infinity.

Does this process sound familiar? It should; this is the limit of Riemann sums again - an integral!
︡42c53324-f223-4e3b-8270-927bf667c3fb︡{"done":true,"md":"What's the volume of this cylinder of cake?\n\nSlice the slab down the side and unroll it. What you have is a flat slab of cake. Its height is the height of the cake at that point $(f(R)\\approx f(r))$, its width is the circumference of the cylinder $(2\\pi R\\approx 2\\pi r)$, and its thickness is $R-r$. I have the approximations because our cylindrical shell is not exactly flat on top (because of the curve of the function).\n\nSo the volume of this slab is approximately $f(r)\\cdot2\\pi r\\cdot (R-r)$.\n\nNow we need to keep cutting more slabs until we've cut up the whole cake, approximate the volume of each slab, and add them all up. That gives the approximate volume of the cake.\n\nOf course, we make the approximation better by cutting thinner slabs. In other words, we let the number of cylindrical shells approach infinity.\n\nDoes this process sound familiar? It should; this is the limit of Riemann sums again - an integral!"}
︠59b68d9e-4bd4-4e06-b302-1c15dd632cd8i︠
%md
Here's the final result:

The volume of the solid is $\displaystyle V=\int_0^2 2\pi x f(x)\, dx=\frac{16\pi}{5}$.
︡c857007e-4ac3-4be7-ae0e-30108487f04c︡{"done":true,"md":"Here's the final result:\n\nThe volume of the solid is $\\displaystyle V=\\int_0^2 2\\pi x f(x)\\, dx=\\frac{16\\pi}{5}$."}
︠6ffc291b-5531-4dc9-acfc-5b747d672cd5︠
integral(2*pi*x*f(x),x,0,2)
︡bdc490ae-eaef-4a37-af56-b0bd93ea74d3︡{"stdout":"16/5*pi\n"}︡
︠682e4de0-8e93-47e9-8727-94caaccc3d89i︠
%md
In general, the volume of the solid obtained by rotating about the y-axis the region between a curve $y=f(x)$ $(f(x)\ge0)$ and the x-axis from $x=a$ to $x=b$ is given by $$V=\int_a^b 2\pi x f(x)\, dx=\int_a^b 2\pi\binom{\mathrm{shell}}{\mathrm{radius}}\binom{\mathrm{shell}}{\mathrm{height}}\, dx.$$
︡405ff224-a804-4a58-ae59-20576e0de566︡{"md":"In general, the volume of the solid obtained by rotating about the y-axis the region between a curve $y=f(x)$ $(f(x)\\ge0)$ and the x-axis from $x=a$ to $x=b$ is given by $$V=\\int_a^b 2\\pi x f(x)\\, dx=\\int_a^b 2\\pi\\binom{\\mathrm{shell}}{\\mathrm{radius}}\\binom{\\mathrm{shell}}{\\mathrm{height}}\\, dx.$$\n"}︡
︠dfe1bb1c-22b1-42b7-8d8d-941c67822185is︠
%md
## Example 2

Find the volume of the solid obtained by rotating around the y-axis the region between $f(x)=\sqrt{x}$ and the x-axis from $x=0$ to $x=4$.
︡1d148ce1-c7d7-47dc-a9d3-19adb285c8cb︡{"md":"## Example 2\n\nFind the volume of the solid obtained by rotating around the y-axis the region between $f(x)=\\sqrt{x}$ and the x-axis from $x=0$ to $x=4$.\n"}︡
︠36da9100-df41-499b-9372-43b571521a06︠
f(x)=sqrt(x)
plot(f,xmin=0,xmax=4,fill='axis')
︡db00ac2a-f12f-481e-a41f-70a5fdd6ff0a︡{"once":false,"file":{"show":true,"uuid":"4d2e6aef-4503-42ed-b4e0-51bf268c374f","filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/7201/tmp_dtZGQe.svg"}}︡{"html":"<div align='center'></div>"}︡
︠1801aa77-8690-4a5a-956e-6dc3646fe7e5i︠
%md
The volume is $\displaystyle V=\int_0^4 2\pi x \sqrt{x}\, dx=\frac{128\pi}{5}$.

[Note: we could have done this with washers as well.]
︡6f9d001f-e2c5-467f-b19b-b81ed96a8307︡{"md":"The volume is $\\displaystyle V=\\int_0^4 2\\pi x \\sqrt{x}\\, dx=\\frac{128\\pi}{5}$.\n\n[Note: we could have done this with washers as well.]\n"}︡
︠f8d894c0-231a-4ce5-8c12-177b3f781904︠
integral(2*pi*x*f(x),x,0,4)
︡fb63134d-a0ca-4397-b87e-89d678338fc8︡{"stdout":"128/5*pi\n"}︡
︠2b37125b-5f96-4ab9-85b8-163c9b82a66eis︠
%auto
%hide
%var t
f(x)=sqrt(x)
revolution_plot3d(f,(x,0,4),parallel_axis='z',show_curve=True)+revolution_plot3d((4,t),(t,0,2),parallel_axis='z',color='green',opacity=.5,show_curve=True)+revolution_plot3d(0,(x,0,4),parallel_axis='z',show_curve=True,color='green',opacity=.5)
︡5afcbdd6-c3f1-42f1-82bd-0c79e678a9cd︡{"hide":"input"}︡{"file":{"filename":"87013ca6-5370-40e9-9497-6c9562a56d0f.sage3d","uuid":"87013ca6-5370-40e9-9497-6c9562a56d0f"}}︡{"done":true}︡
︠6eaff035-a26e-4710-abd7-9621bbbaf362is︠
%md
## Example 3 - Rotating around a vertical line other than the y-axis

Find the volume of the solid obtained by rotating around the line $x=6$ the region between $f(x)=-(x-2)(x-4)$ and the x-axis from $x=2$ to $x=4$.
︡b1e396ef-910d-4090-8011-01e26e11c7d6︡{"md":"## Example 3 - Rotating around a vertical line other than the y-axis\n\nFind the volume of the solid obtained by rotating around the line $x=6$ the region between $f(x)=-(x-2)(x-4)$ and the x-axis from $x=2$ to $x=4$.\n"}︡
︠fc54d808-8272-4832-9f76-6cd4eae762c3︠
f(x)=-(x-2)*(x-4)
plot(f,xmin=2,xmax=4,fill='axis')+line([(6,0),(6,1)],color='black',linestyle='--')
︡c5380d2d-95d5-4c9d-9b4c-e41d92e06448︡{"once":false,"file":{"show":true,"uuid":"7cb381d4-40d0-4389-bade-33f2a41e860b","filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/7201/tmp_RQhCrX.svg"}}︡{"html":"<div align='center'></div>"}︡
︠9478a271-1656-46ad-9622-54fad9d63362i︠
%md
Since we are rotating around the line $x=6$ and not the y-axis, the shell radius is not given by $x$; instead, the shell radius is $6-x$. The shell height is given by the function, $f(x)$.

So the volume is $\displaystyle V=\int_2^4 2\pi(6-x)f(x)\, dx=8\pi$.
︡1efa0886-3e85-484a-b9ff-7061a3a9e9aa︡{"md":"Since we are rotating around the line $x=6$ and not the y-axis, the shell radius is not given by $x$; instead, the shell radius is $6-x$. The shell height is given by the function, $f(x)$.\n\nSo the volume is $\\displaystyle V=\\int_2^4 2\\pi(6-x)f(x)\\, dx=8\\pi$.\n"}︡
︠c9169b4b-379f-43c1-987a-a5c76a87ad76︠
integral(2*pi*(6-x)*f(x),x,2,4)
︡b23bdad9-77ad-4d5e-b7cd-70f6a57ada4c︡{"stdout":"8*pi\n"}︡
︠a9f97842-af9b-4423-891d-389da7e80fc3is︠
%auto
%hide
f(x)=-(x-2)*(x-4)
revolution_plot3d(f,(x,2,4),parallel_axis='z',axis=(6,0),show_curve=True)+revolution_plot3d(0,(x,2,4),parallel_axis='z',axis=(6,0),color='green',opacity=.5)
︡686e215d-f814-487d-815f-390f1b8bd0c1︡{"hide":"input"}︡{"file":{"filename":"207da056-4e19-4482-9313-d1568791d424.sage3d","uuid":"207da056-4e19-4482-9313-d1568791d424"}}︡{"done":true}︡
︠7159bd16-1ee7-4ce1-83cc-fdb4a828da6cis︠
%md
## Example 4 - Rotating around a horizontal line

Find the volume of the solid obtained by rotating around the x-axis the region between the curves $y=2\sqrt{x}+1$ and $y=x+1$ from $x=0$ to $x=4$.
︡bda988c6-5475-4ee3-bff8-47d44d7cdb29︡{"md":"## Example 4 - Rotating around a horizontal line\n\nFind the volume of the solid obtained by rotating around the x-axis the region between the curves $y=2\\sqrt{x}+1$ and $y=x+1$ from $x=0$ to $x=4$.\n"}︡
︠5c884f6d-9949-460a-aaf8-6122f00882e9︠
f(x)=2*sqrt(x)+1
g(x)=x+1
plot(f,xmin=0,xmax=4,fill=g(x))+plot(g,xmin=0,xmax=4,ymin=0)
︡a48f4087-4ca4-49b0-ad5a-f1dbb647bd9b︡{"once":false,"file":{"show":true,"uuid":"d172f5c2-ddc4-499a-85a0-f0f80acf1aeb","filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/22631/tmp_1WmZqR.svg"}}︡{"html":"<div align='center'></div>"}︡
︠76a95150-3682-4301-99ab-f6fd653e32f3i︠
%md
This could be done with washers, but let's try to use cylindrical shells. Here we are rotating around a horizontal line (the x-axis). That means our shell radius will be $y$, and our shell height is the horizontal distance between the curves at that given $y$.

We need to solve our equations for $x$. For the first, we get $x=\frac{(y-1)^2}{4}$. For the second, $x=y-1$. The shell height is then $y-1-\frac{(y-1)^2}{4}$.

Thus, the volume is $\displaystyle V=\int_1^5 2\pi y\left(y-1-\frac{(y-1)^2}{4}\right)\, dy=12\pi$.

[Note the limits of integration are *y-values*. When $x=0$, then $y=1$; when $x=4$, then $y=5$.]
︡8af79d59-5564-4556-a2a3-27bf4e4c9d88︡{"md":"This could be done with washers, but let's try to use cylindrical shells. Here we are rotating around a horizontal line (the x-axis). That means our shell radius will be $y$, and our shell height is the horizontal distance between the curves at that given $y$.\n\nWe need to solve our equations for $x$. For the first, we get $x=\\frac{(y-1)^2}{4}$. For the second, $x=y-1$. The shell height is then $y-1-\\frac{(y-1)^2}{4}$.\n\nThus, the volume is $\\displaystyle V=\\int_1^5 2\\pi y\\left(y-1-\\frac{(y-1)^2}{4}\\right)\\, dy=12\\pi$.\n\n[Note the limits of integration are *y-values*. When $x=0$, then $y=1$; when $x=4$, then $y=5$.]\n"}︡
︠1b0d6498-e5d5-4c1e-aaf2-e0a9e9bc811f︠
%var y
integral(2*pi*y*(y-1-(y-1)^2/4),y,0,4)
︡f99489a8-01e1-477b-a04e-e6fc531818e9︡{"stdout":"12*pi"}︡{"stdout":"\n"}︡
︠ac484c79-6f59-4c60-be31-ffcb68743fb9is︠
%auto
%hide
f(x)=2*sqrt(x)+1
g(x)=x+1
revolution_plot3d(f, (x,0,4), parallel_axis='x', show_curve=True, opacity=0.5, color='green')+revolution_plot3d(g, (x,0,4), parallel_axis='x', show_curve=True)
︡b3518d49-c96a-4f17-921e-2430a0579e50︡{"hide":"input"}︡{"file":{"filename":"5ead318e-e5db-420f-a85e-4e5638437c0f.sage3d","uuid":"5ead318e-e5db-420f-a85e-4e5638437c0f"}}︡{"done":true}︡
︠e2e8f1e1-1620-4c71-a81c-04b3a4b19c5fis︠
%md
## Example 5 - Two Functions with a Gap

Find the volume of the solid obtained by rotating around the x-axis the region between the curves $y=x^2$ and $y=2x+4$ from $x=0$ to $x=2$.

Here is a picture of the region. Notice the gap between the two functions.
︡28df058d-7dec-483b-851a-dd464e276b41︡{"md":"## Example 5 - Two Functions with a Gap\n\nFind the volume of the solid obtained by rotating around the x-axis the region between the curves $y=x^2$ and $y=2x+4$ from $x=0$ to $x=2$.\n\nHere is a picture of the region. Notice the gap between the two functions.\n"}︡
︠374dc2a8-f602-41c6-9393-1e400b522b11︠
f(x)=x^2
g(x)=2*x+4
plot(f,xmin=0,xmax=2)+plot(g,xmin=0,xmax=2,fill=f)
︡528810c5-91e4-4707-bdcb-aea4ed1a9b85︡{"once":false,"file":{"show":true,"uuid":"2d691012-d12c-48f9-90e7-1640929d9ac7","filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/22631/tmp_EOy93g.svg"}}︡{"html":"<div align='center'></div>"}︡
︠dee84286-ffab-4b13-8f17-123085e16838i︠
%md
When using cylindrical shells to find the volume, the shell radius will be given by $y$, but the shell height is not as simple as the last problem. From $y=0$ to $y=4$, the height is the distance from the  y-axis to the curve $y=x^2$ (or $x=\sqrt{y}$), and from $y=4$ to $y=8$, the height is the distance from the curve $y=2x+4$ (or $x=\frac{1}{2}y-2$) to the vertical line $x=2$.

This means we need two different integrals, to cover the two cases.

$$V=\int_0^4 2\pi y \sqrt{y}\, dy+\int_4^8 2\pi y \left(2-\left(\frac{1}{2}y-2\right)\right)\,dy=\frac{1024\pi}{15}$$
︡ab09dd1b-4bf8-4ea7-b8e1-6a1ba39d0be5︡{"md":"When using cylindrical shells to find the volume, the shell radius will be given by $y$, but the shell height is not as simple as the last problem. From $y=0$ to $y=4$, the height is the distance from the  y-axis to the curve $y=x^2$ (or $x=\\sqrt{y}$), and from $y=4$ to $y=8$, the height is the distance from the curve $y=2x+4$ (or $x=\\frac{1}{2}y-2$) to the vertical line $x=2$.\n\nThis means we need two different integrals, to cover the two cases.\n\n$$V=\\int_0^4 2\\pi y \\sqrt{y}\\, dy+\\int_4^8 2\\pi y \\left(2-\\left(\\frac{1}{2}y-2\\right)\\right)\\,dy=\\frac{1024\\pi}{15}$$\n"}︡
︠391aea01-7240-499c-874b-63cbf0b94df7︠
%var y
integral(2*pi*y*sqrt(y),y,0,4)+integral(2*pi*y*(2-(1/2*y-2)),y,4,8)
︡7f2d0e93-8450-47fe-9a72-9288672b5e58︡{"stdout":"1024/15*pi\n"}︡
︠0f61deef-7622-4233-a81d-35f56b210393is︠
%auto
%hide
%var t
f(x)=x^2
g(x)=2*x+4
revolution_plot3d(f,(x,0,2),show_curve=True,parallel_axis='x')+revolution_plot3d(g,(x,0,2),show_curve=True,color='green',opacity=.5,parallel_axis='x')+revolution_plot3d((2,t),(t,4,8),parallel_axis='x',color='green',opacity=.5,show_curve=True)+revolution_plot3d((0,t),(t,0,4),parallel_axis='x',color='green',opacity=.5,show_curve=True)
︡d68aba84-1298-4a61-8830-f5e3020105e5︡{"hide":"input"}︡{"file":{"filename":"55b685b1-88c7-4696-ae85-9b815696460e.sage3d","uuid":"55b685b1-88c7-4696-ae85-9b815696460e"}}︡{"done":true}︡
︠6357dab7-c08e-463f-87eb-e855b3f9e13b︠









