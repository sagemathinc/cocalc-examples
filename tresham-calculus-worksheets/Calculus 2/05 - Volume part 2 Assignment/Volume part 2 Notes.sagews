︠5ccfcb33-0ce4-4c60-8a7a-2e8fbff564b7i︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡9c5e8824-76b0-4764-bf50-757f9fdbe367︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠68126d66-f1ec-4ce0-9a62-d2b16ac9d120ai︠
%md
### Prerequisites:

* Intro to Sage
* Graphing and Solving Equations
* Symbolic Integration
* Volume, Part 1
︡4cf262af-bc1f-42a8-b9d8-ac9208e1eead︡{"done":true,"md":"### Prerequisites:\n\n* Intro to Sage\n* Graphing and Solving Equations\n* Symbolic Integration\n* Volume, Part 1"}
︠25ca2128-9d85-47c8-9d6a-c9ed574cd87ci︠
%md
# Volume, part 2: Solids of Revolution

Recall from last week: If a solid is placed along the x-axis from $x=a$ to $x=b$ and the area of the cross section perpendicular to the x-axis at $x$ is $A(x)$, then the volume of the solid is $\displaystyle V=\int_a^b A(x)\, dx$.

If the solid may be obtained by rotating a plane region around an axis in that plane, we get a "solid of revolution."

If a solid of revolution is obtained by rotating around the x-axis the region between the graph of a function $f$ and the x-axis over the interval $[a,b]$, then the cross section perpendicular to the x-axis at $x$ is a disk with area $\pi r^2$, where the radius is $r=f(x)$. Therefore, the volume of this solid is $$V=\int_a^b \pi f(x)^2\, dx$$
︡2653fe3a-4d92-49bb-bc97-0daf40166829︡{"md":"# Volume, part 2: Solids of Revolution\n\nRecall from last week: If a solid is placed along the x-axis from $x=a$ to $x=b$ and the area of the cross section perpendicular to the x-axis at $x$ is $A(x)$, then the volume of the solid is $\\displaystyle V=\\int_a^b A(x)\\, dx$.\n\nIf the solid may be obtained by rotating a plane region around an axis in that plane, we get a \"solid of revolution.\"\n\nIf a solid of revolution is obtained by rotating around the x-axis the region between the graph of a function $f$ and the x-axis over the interval $[a,b]$, then the cross section perpendicular to the x-axis at $x$ is a disk with area $\\pi r^2$, where the radius is $r=f(x)$. Therefore, the volume of this solid is $$V=\\int_a^b \\pi f(x)^2\\, dx$$\n"}︡
︠5cd378db-d307-4815-afe6-2e0cb531ec26i︠
%md
## Example 1

Find the volume of the solid obtained by rotating around the x-axis the region between $f(x)=\sqrt{x}$ and the x-axis from $x=0$ to $x=4$.
︡78468899-837c-43de-9703-c10957642277︡{"done":true,"md":"## Example 1\n\nFind the volume of the solid obtained by rotating around the x-axis the region between $f(x)=\\sqrt{x}$ and the x-axis from $x=0$ to $x=4$."}
︠b53d8ff2-d6fd-4f4b-8b2e-4b0b89769ce6i︠
%md
First, let's look at a graph of the region we're rotating.
︡f8a5f051-7e3c-4ba7-ab5a-d67f96c3089f︡{"done":true,"md":"First, let's look at a graph of the region we're rotating."}
︠02ee9e5a-21b3-4fc3-8d5a-a2585fac21b5︠
f(x)=sqrt(x)
plot(f,xmin=0,xmax=4,fill='axis')
︡d19c3ff0-4710-4daa-bfa3-c93a16c7a5cf︡{"once":false,"file":{"show":true,"uuid":"237c8890-ddbb-446a-8baa-95bf48b88c2e","filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/25865/tmp_sbEDNl.svg"}}︡{"html":"<div align='center'></div>"}︡
︠ea6d7c34-5f8a-4bbe-9aa7-f1dff2a23de5i︠
%md
Sage can plot the surface we get by rotating the curve only. To get the solid, imagine filllling in this surface.
︡773b1857-de6e-4c6e-b789-42b08147c112︡{"md":"Sage can plot the surface we get by rotating the curve only. To get the solid, imagine filling in this surface.\n"}︡
︠b75fd4ac-d734-4309-a117-693d7a8ac8f9sia︠
%auto
%hide
revolution_plot3d(sqrt(x),(x,0,4),parallel_axis='x',show_curve=True)
︡0531b926-79fa-4595-9ed5-ac8ab26d82ba︡{"hide":"input"}︡{"file":{"filename":"622c9daa-6522-4618-aee0-501d29c5e6bd.sage3d","uuid":"622c9daa-6522-4618-aee0-501d29c5e6bd"}}︡{"done":true}︡
︠f6fcadb4-9547-4e24-bd2c-b26cd7294cb0i︠
%md
The volume of this solid is $\displaystyle V=\int_0^4 \pi(\sqrt{x})^2\, dx=8\pi$.
︡64b85bac-0960-412e-b46d-b5e801dee7c0︡{"md":"The volume of this solid is $\\displaystyle V=\\int_0^4 \\pi(\\sqrt{x})^2\\, dx=8\\pi$.\n"}︡
︠d690c9e3-093e-44d9-87d4-b1e36834e69b︠
integral(pi*x,x,0,4)
︡5b3e4159-2983-4270-b827-695a611931f2︡{"stdout":"8*pi\n"}︡
︠8aa89e54-7650-412f-90d2-34264beac668i︠
%md
## Example 2

Find the volume of the solid obtained by rotating around the horizontal line $y=1$ the region between $f(x)=\sqrt{x}$ and the line $y=1$ over the interval $[1,4]$.
︡02b0f0a1-b765-4ce3-b74f-2dc781e46811︡{"done":true,"md":"## Example 2\n\nFind the volume of the solid obtained by rotating around the horizontal line $y=1$ the region between $f(x)=\\sqrt{x}$ and the line $y=1$ over the interval $[1,4]$."}
︠9699aa8f-bd1d-4231-942c-258f13e54b10i︠
%md
Here is a graph of the region we're rotating.
︡4c2696fe-4ef2-4882-b7b6-69759ef46690︡{"done":true,"md":"Here is a graph of the region we're rotating."}
︠e80915ee-a8ae-4c57-9d59-51cac9de6877︠
f(x)=sqrt(x)
g(x)=1
plot(f,xmin=1,xmax=4,fill=g(x))+plot(g,xmin=0,xmax=5,color='black',ymin=0,linestyle='--')
︡b34fee69-1b1e-420f-9b4f-6ea9483a1534︡{"once":false,"file":{"show":true,"uuid":"1622095f-e431-4a21-bfcb-503c7f64b96d","filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/25865/tmp_iOSf3U.svg"}}︡{"html":"<div align='center'></div>"}︡
︠342d19d4-3816-410b-9cd8-bd7a03ebb28ei︠
%md
Once again, the cross sections perpendicular to the axis of rotation are disks. However, the radius is not given by the value of the function; instead, the radius is the distance from the axis of rotation to the function, i.e., $f(x)-1$.

Thus, the volume is $\displaystyle V=\int_1^4 \pi(\sqrt{x}-1)^2\, dx=\frac{7\pi}{6}$.
︡30d9f61e-687b-4916-a724-5c34033f16b5︡{"md":"Once again, the cross sections perpendicular to the axis of rotation are disks. However, the radius is not given by the value of the function; instead, the radius is the distance from the axis of rotation to the function, i.e., $f(x)-1$.\n\nThus, the volume is $\\displaystyle V=\\int_1^4 \\pi(\\sqrt{x}-1)^2\\, dx=\\frac{7\\pi}{6}$.\n"}︡
︠d87f9e64-2262-4065-b263-b60324a06603︠
integral(pi*(sqrt(x)-1)^2,x,1,4)
︡f9b318f4-172a-42d0-a07a-33036283977d︡{"stdout":"7/6*pi\n"}︡
︠40ec944f-c1df-49e8-a21b-e5493bbfe11bi︠
%md
Here is the 3D picture. Imagine the cone-shaped thing is filled in.
︡04e33f26-2683-4d09-a2ad-386cc147db1b︡︡{"done":true,"md":"Here is the 3D picture. Imagine the cone-shaped thing is filled in."}
︠b162052d-020e-416b-a64f-c184c8ff1c79sia︠
%auto
%hide
revolution_plot3d(sqrt(x)-1,(x,1,4),parallel_axis='x',show_curve=True)
︡19c49edf-4557-4bb6-98e6-abc08d5edb27︡{"hide":"input"}︡{"file":{"filename":"d8f60cb1-5279-4125-9995-37c6508b46a0.sage3d","uuid":"d8f60cb1-5279-4125-9995-37c6508b46a0"}}︡{"done":true}︡
︠c3dd40c7-7666-4292-81cf-d59209161ebdi︠
%md
## Rotating around the y-axis

If we rotate the region between a curve and the y-axis and our axis of rotation is the y-axis, then we need $x$ given as a function of $y$, $x=g(y)$. When we take cross sections perpendicular to the y-axis, we get disks again, and the radius of the disk is given by $g(y)$. Thus, the volume of the solid of revolution is $$V=\int_c^d \pi g(y)^2\, dy$$
︡39ae7ac9-2dde-4887-85fb-178b0de6f3a0︡{"md":"## Rotating around the y-axis\n\nIf we rotate the region between a curve and the y-axis and our axis of rotation is the y-axis, then we need $x$ given as a function of $y$, $x=g(y)$. When we take cross sections perpendicular to the y-axis, we get disks again, and the radius of the disk is given by $g(y)$. Thus, the volume of the solid of revolution is $$V=\\int_c^d \\pi g(y)^2\\, dy$$\n"}︡
︠3b2cefcf-5b7f-4ff4-8c17-c1e2ca7e7013i︠
%md
## Example 3

Find the volume of the solid obtained by rotating around the y-axis the region between $f(x)=\sqrt{x}$ and the y-axis from $y=0$ to $y=2$.
︡8facfbfb-2fbd-4241-b827-6b34b36a2a43︡{"done":true,"md":"## Example 3\n\nFind the volume of the solid obtained by rotating around the y-axis the region between $f(x)=\\sqrt{x}$ and the y-axis from $y=0$ to $y=2$."}
︠8bb7e0d3-c02d-4ab7-974b-0a0b57027ed7i︠
%md
Here is a graph of the region.
︡7ac2d1ae-1ea1-41e1-a269-5d0ab00d0e69︡{"done":true,"md":"Here is a graph of the region."}
︠be65a368-a163-48fa-8b1d-6bd14ba56aef︠
plot(sqrt(x),xmin=0,xmax=4,fill=2)
︡9c1a992b-f663-488e-94dc-eda1a652f266︡{"once":false,"file":{"show":true,"uuid":"c06f0ee9-5e06-4533-aba1-3151fe1d0b91","filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/1420/tmp_8Riqgx.svg"}}︡{"html":"<div align='center'></div>"}︡
︠e513a2e6-1b71-4a51-a1af-ba2cc5f3cb21i︠
%md
We are given $y$ as a function of $x$, but we need $x$ as a function of $y$. So we solve the equation $y=\sqrt{x}$ for $x$: $x=y^2$.

Then the volume of our solid is $\displaystyle V=\int_0^2 \pi(y^2)^2\, dy=\frac{32\pi}{5}$.
︡84a75831-3f32-4939-bb0f-18cf3c5cd0e9︡{"md":"We are given $y$ as a function of $x$, but we need $x$ as a function of $y$. So we solve the equation $y=\\sqrt{x}$ for $x$: $x=y^2$.\n\nThen the volume of our solid is $\\displaystyle V=\\int_0^2 \\pi(y^2)^2\\, dy=\\frac{32\\pi}{5}$.\n"}︡
︠c47f7d55-a062-41b6-8392-d759763f2d34︠
%var y
integral(pi*y^4,y,0,2)
︡136fd906-3866-4434-b5e8-b2a32f6dd182︡{"stdout":"32/5*pi"}︡{"stdout":"\n"}︡
︠0616ff68-a4db-4b1a-a275-c7693fb79d13i︠
%md
Here is a picture of the surface.
︡cdd9c2e3-b00d-4634-a9bb-4b8ad4104dbc︡{"md":"Here is a picture of the surface.\n"}︡
︠13c5361e-3cc8-4f5f-8436-c170bdc2447asia︠
%auto
%hide
revolution_plot3d(sqrt(x),(x,0,4),parallel_axis='z',show_curve=True)
︡0014147e-3c68-4958-bb6e-0de5faf52e20︡{"hide":"input"}︡{"file":{"filename":"8e7a8462-91b7-4250-8d08-c8feb6c1eae7.sage3d","uuid":"8e7a8462-91b7-4250-8d08-c8feb6c1eae7"}}︡{"done":true}︡
︠3bd0e488-25d7-40d3-81e9-8cde8861463ei︠
%md
## The Washer Method

In the previous example, cross sections perpendicular to the axis of rotation were disks, because the region we were rotating touched the axis of rotation.

If there is a gap between our region and our axis of rotation, then the resulting cross sections are not disks, instead they are annuli (singular, annulus). An annulus is the region between two circles in the same plane, like a washer.

If the outer circle has radius $R$ and the inner circle has radius $r$, then the area of the annulus is $A=\pi R^2-\pi r^2$.
︡3f5ca143-8257-449d-93f9-e9b7f55d37db︡{"md":"## The Washer Method\n\nIn the previous example, cross sections perpendicular to the axis of rotation were disks, because the region we were rotating touched the axis of rotation.\n\nIf there is a gap between our region and our axis of rotation, then the resulting cross sections are not disks, instead they are annuli (singular, annulus). An annulus is the region between two circles in the same plane, like a washer.\n\nIf the outer circle has radius $R$ and the inner circle has radius $r$, then the area of the annulus is $A=\\pi R^2-\\pi r^2$.\n"}︡
︠06a181b8-919a-46cc-8c60-eacbbc19d564︠
︡102b9e0d-b6c1-4d6c-8586-5c6f889e14aa︡{"md":"Here is a picture of an annulus with outer radius 2 and inner radius 1. Its area is $A=\\pi\\cdot 2^2-\\pi\\cdot 1^2=3\\pi$.\n"}︡
︠53668707-4347-429d-bc4d-6b5921dafbb1sia︠
%auto
%hide
f(x)=sqrt(4-x^2); mf(x)=-f(x)
g(x)=sqrt(1-x^2); mg(x)=-g(x)
p=plot(f(x),xmin=-2,xmax=-.99,fill='axis')+plot(f(x),xmin=-1,xmax=1,fill=g(x))+plot(f(x),xmin=.99,xmax=2,fill='axis')+plot(g(x),xmin=-1,xmax=1)+plot(mf(x),xmin=-2,xmax=-.99,fill='axis')+plot(mf(x),xmin=-1,xmax=1,fill=mg(x))+plot(mf(x),xmin=.99,xmax=2,fill='axis')+plot(mg(x),xmin=-1,xmax=1)
p.show(aspect_ratio=1)
︡61562ff0-2b34-4588-9d2a-58c54cf52fc2︡{"hide":"input"}︡{"file":{"filename":"/home/user/.sage/temp/project-9189c752-e334-4311-afa9-605b6159620a/216477/tmp_6oqwwQ.svg","show":true,"text":null,"uuid":"5233c6e9-044e-4ea6-9169-19d3817410f1"},"once":false}︡{"done":true}︡
︠bfa2fa98-89c0-4d4e-8ef0-a20fb4178599i︠
%md
If we form a solid of revolution by rotating around the x-axis the region between two functions $f$ and $g$ from $x=a$ to $x=b$, then the cross sections perpendicular to the x-axis are annuli, where the outer radius is given by whichever function is greater and the inner radius is given by the other function.

Let's assume $f(x)\ge g(x)$ for $a\le x\le b$. Then the area of an annular cross section is $A(x)=\pi f(x)^2-\pi g(x)^2$, and the volume of the solid is $$V=\int_a^b\pi f(x)^2-\pi g(x)^2\, dx$$
︡b7f7e91e-1566-42b1-9218-12c0069083b1︡{"md":"If we form a solid of revolution by rotating around the x-axis the region between two functions $f$ and $g$ from $x=a$ to $x=b$, then the cross sections perpendicular to the x-axis are annuli, where the outer radius is given by whichever function is greater and the inner radius is given by the other function.\n\nLet's assume $f(x)\\ge g(x)$ for $a\\le x\\le b$. Then the area of an annular cross section is $A(x)=\\pi f(x)^2-\\pi g(x)^2$, and the volume of the solid is $$V=\\int_a^b\\pi f(x)^2-\\pi g(x)^2\\, dx$$\n"}︡
︠6d372871-deba-4cf3-814e-d1f74e78fac8i︠
%md
## Example 4

Find the volume of the solid obtained by rotating around the x-axis the region between $f(x)=\sqrt{x}$ and $g(x)=x^2$ over the interval $[0,1]$.
︡024c34cd-dfa3-4f32-bd49-42c61702297d︡{"done":true,"md":"## Example 4\n\nFind the volume of the solid obtained by rotating around the x-axis the region between $f(x)=\\sqrt{x}$ and $g(x)=x^2$ over the interval $[0,1]$."}
︠96cb44a0-b262-48d2-b7a9-db2bc44be9fbi︠
%md
First, notice that $f$ is the function on top on this interval (that is, $f(x)\ge g(x)$ for all $x$ in $[0,1]$).
︡e596b155-2d29-4277-8583-03314f550a47︡{"done":true,"md":"First, notice that $f$ is the function on top on this interval (that is, $f(x)\\ge g(x)$ for all $x$ in $[0,1]$)."}
︠2f63b69c-ed12-4f55-b4e5-8e9fea6b0034︠
f(x)=sqrt(x)
g(x)=x^2
plot(f,xmin=0,xmax=1,fill=g(x))+plot(g,xmin=0,xmax=1,color='red')
︡82e20d8f-ed6e-4f46-9c24-3706151ad68a︡{"once":false,"file":{"show":true,"uuid":"88b7cb63-24e5-4f84-b1d9-acf881383396","filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/1420/tmp_2BfXzR.svg"}}︡{"html":"<div align='center'></div>"}︡
︠633ce3fb-b860-4825-b70f-f8ce885e07e5i︠
%md
Now the value of the integral is $\displaystyle V=\int_0^1 \pi(\sqrt{x})^2-\pi(x^2)^2\, dx=\frac{3\pi}{10}$.
︡7e07ca8d-5726-4302-b0e9-e234281ea746︡{"md":"Now the value of the integral is $\\displaystyle V=\\int_0^1 \\pi(\\sqrt{x})^2-\\pi(x^2)^2\\, dx=\\frac{3\\pi}{10}$.\n"}︡
︠5a53efac-1d12-4fe0-bf6b-c7175da6ddc1︠
integral(pi*x-pi*x^4,x,0,1)
︡ef542a33-967e-45a8-a6a2-764f3adba743︡{"stdout":"3/10*pi\n"}︡
︠9279c1c7-a661-43a4-80f6-fad8fff5d257i︠
%md
Here is a picture (the solid is between the green and blue surfaces).
︡57591a7a-385f-4271-898d-60413a83bc26︡{"md":"Here is a picture (the solid is between the green and blue surfaces).\n"}︡
︠24446e9e-2bee-431b-bb8f-70c2fcb7c241sia︠
%auto
%hide
f(x)=sqrt(x)
g(x)=x^2
revolution_plot3d(f(x),(x,0,1),parallel_axis='x',show_curve=True,color='green',opacity=0.5)+revolution_plot3d(g(x),(x,0,1),parallel_axis='x',show_curve=True)
︡f60ef565-14a2-4daf-808b-0c5985e7abca︡{"hide":"input"}︡{"file":{"filename":"6ca82e8d-7bb4-41ee-90ea-d9e01cf672df.sage3d","uuid":"6ca82e8d-7bb4-41ee-90ea-d9e01cf672df"}}︡{"done":true}︡
︠971478f3-bee4-4807-9737-925609b1d62fi︠
%md
## Example 5

Let's rotate the same region around the horizontal line $y=2$ and find the new volume.
︡8042f026-5177-4084-9966-e5e58eab7645︡{"done":true,"md":"## Example 5\n\nLet's rotate the same region around the horizontal line $y=2$ and find the new volume."}
︠e6358534-a936-404a-93d5-8908b3ed507f︠
plot(f,xmin=0,xmax=1,fill=g(x))+plot(g,xmin=0,xmax=1,color='red')+plot(2,xmin=-.2,xmax=1.2,color='black',linestyle='--')
︡b26b8dc1-088d-42e4-93c6-f293d9389acc︡{"once":false,"file":{"show":true,"uuid":"a452758f-e216-4767-b2c1-f82a7b50b696","filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/25865/tmp_u_Oq4k.svg"}}︡{"html":"<div align='center'></div>"}︡
︠93748317-b233-4246-a11f-5f350cb81617i︠
%md
Cross section perpendicular to the line $y=2$ are annuli again.

The outer radius is the distance from the center ($y=2$) to the function that's furthest away from the center (in this case, $y=x^2$). This distance is $2-x^2$.

The inner radius is the distance from the center to the closest function (in this case, $y=\sqrt{x}$). This distance is $2-\sqrt{x}$.

Therefore, the volume is $\displaystyle V=\int_0^1 \pi(2-x^2)^2-\pi(2-\sqrt{x})^2\, dx=\frac{31\pi}{30}$.
︡821dc93e-92cd-48b9-96d7-1fcae7367768︡{"md":"Cross section perpendicular to the line $y=2$ are annuli again.\n\nThe outer radius is the distance from the center ($y=2$) to the function that's furthest away from the center (in this case, $y=x^2$). This distance is $2-x^2$.\n\nThe inner radius is the distance from the center to the closest function (in this case, $y=\\sqrt{x}$). This distance is $2-\\sqrt{x}$.\n\nTherefore, the volume is $\\displaystyle V=\\int_0^1 \\pi(2-x^2)^2-\\pi(2-\\sqrt{x})^2\\, dx=\\frac{31\\pi}{30}$.\n"}︡
︠c5496dd3-67c5-4311-b2c3-26dc32a96a9d︠
integral(pi*(2-x^2)^2-pi*(2-sqrt(x))^2,x,0,1)
︡cffceaa8-ab0a-440d-9d93-7559d8d26a41︡{"stdout":"31/30*pi\n"}︡
︠0946068e-b444-4d84-82a1-4a5b599b66b0sia︠
%auto
%hide
f(x)=sqrt(x)
g(x)=x^2
revolution_plot3d(f(x),(x,0,1),parallel_axis='x',axis=(2,0),show_curve=True,color='green',opacity=0.5)+revolution_plot3d(g(x),(x,0,1),parallel_axis='x',axis=(2,0),show_curve=True)
︡bd5f87bc-aca8-4322-a97c-0e68fe74cf4e︡{"hide":"input"}︡{"file":{"filename":"8e2cfb50-a43f-4788-ae06-b63010e162ce.sage3d","uuid":"8e2cfb50-a43f-4788-ae06-b63010e162ce"}}︡{"done":true}︡
︠3efc5d36-907e-433a-9e32-b6b6def4464bi︠
%md
## Example 6

Find the volume of the solid obtained by rotating around the vertical line $x=4$ the region between $y=2x+1$ and $y=x^2+1$ from $x=0$ to $x=2$.
︡15e4ef71-ad98-42dd-8a90-193f18029a7d︡{"done":true,"md":"## Example 6\n\nFind the volume of the solid obtained by rotating around the vertical line $x=4$ the region between $y=2x+1$ and $y=x^2+1$ from $x=0$ to $x=2$."}
︠992788c3-c865-43e7-bbaa-0d59166767aei︠
%md
Here's the region:
︡71ce81ed-f6a4-4e9f-be00-1f1dcc9285b6︡{"done":true,"md":"Here's the region:"}
︠61f15643-fde2-4f0e-b886-3d7bbd3401cc︠
f(x)=2*x+1
g(x)=x^2+1
plot(f,xmin=0,xmax=2,fill=g(x))+plot(g,xmin=0,xmax=2,color='red')+line([(4,0),(4,5.1)],color='black',linestyle='--')
︡dac97785-0264-4a66-be0c-80a3374c4a3c︡{"once":false,"file":{"show":true,"uuid":"56feeca8-09cb-43ec-8fe3-994f16973145","filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/1420/tmp_l2yWzn.svg"}}︡{"html":"<div align='center'></div>"}︡
︠c144f9fe-d728-444f-b676-7a50b1ca2ce1i︠
%md
Now we need to take cross sections perpendicular to the line $x=4$. When we do so, we get annuli. That is, we cut the solid at a given value of $y$ to get a annulus. So we need to integrate in the y-direction, which means we need everything in terms of y.

If $y=2x+1$, then $x=\frac{y-1}{2}$. If $y=x^2+1$, then $x=\sqrt{y-1}$. When $x=0$, then $y=1$, and when $x=2$, then $y=5$.

The outer radius of a cross section is the horizontal distance from $x=4$ to the function furthest away, which is $x=\frac{y-1}{2}$. This distance is $4-\frac{y-1}{2}$.

The inner radius is the horizontal distance from $x=4$ to the closest function, which is $x=\sqrt{y-1}$. This distance is $4-\sqrt{y-1}$.

Therefore, the volume is $\displaystyle V=\int_1^5 \pi\left(4-\frac{y-1}{2}\right)^2-\pi\left(4-\sqrt{y-1}\right)^2\, dy=8\pi$.
︡730d8f9e-e471-4b88-b200-a9d9a55bcf01︡{"md":"Now we need to take cross sections perpendicular to the line $x=4$. When we do so, we get annuli. That is, we cut the solid at a given value of $y$ to get a annulus. So we need to integrate in the y-direction, which means we need everything in terms of y.\n\nIf $y=2x+1$, then $x=\\frac{y-1}{2}$. If $y=x^2+1$, then $x=\\sqrt{y-1}$. When $x=0$, then $y=1$, and when $x=2$, then $y=5$.\n\nThe outer radius of a cross section is the horizontal distance from $x=4$ to the function furthest away, which is $x=\\frac{y-1}{2}$. This distance is $4-\\frac{y-1}{2}$.\n\nThe inner radius is the horizontal distance from $x=4$ to the closest function, which is $x=\\sqrt{y-1}$. This distance is $4-\\sqrt{y-1}$.\n\nTherefore, the volume is $\\displaystyle V=\\int_1^5 \\pi\\left(4-\\frac{y-1}{2}\\right)^2-\\pi\\left(4-\\sqrt{y-1}\\right)^2\\, dy=8\\pi$.\n"}︡
︠62bb6c0a-be49-4e89-8161-74cb9df12cb5︠
%var y
integral (pi*(4-(y-1)/2)^2-pi*(4-sqrt(y-1))^2,y,1,5)
︡94670390-3d07-404c-9492-ec6bf368960a︡{"stdout":"8*pi"}︡{"stdout":"\n"}︡
︠ebed02f9-5942-4f11-a23f-9f7a456d4f35i︠
%md
Here is a picture.
︡805f75c4-4ef6-44a0-bef2-63ad8e1ea7d3︡{"md":"Here is a picture.\n"}︡
︠fea9405b-0156-4bd8-9799-271e905a7c93sia︠
%auto
%hide
f(x)=2*x+1
g(x)=x^2+1
revolution_plot3d(f(x),(x,0,2),parallel_axis='z',axis=(4,0),show_curve=True,color='green',opacity=0.5)+revolution_plot3d(g(x),(x,0,2),parallel_axis='z',axis=(4,0),show_curve=True)
︡34b0a13f-38ab-4ac1-b633-64fadba6d76c︡{"hide":"input"}︡{"file":{"filename":"804c10e5-c191-4fc3-9271-48448aba49ed.sage3d","uuid":"804c10e5-c191-4fc3-9271-48448aba49ed"}}︡{"done":true}︡
︠6172a5b0-0f59-4e4d-9ca6-821ac638d5cdi︠
%md
## Example 7

Find the volume of the solid obtained by rotating around the x-axis the region between $y=\sin(x)+1$ and $y=\cos(x)+1$ from $x=-\frac{3\pi}{4}$ and $x=\frac{5\pi}{4}$.
︡0ab45266-079e-4ba1-af1f-db12243ef003︡{"done":true,"md":"## Example 7\n\nFind the volume of the solid obtained by rotating around the x-axis the region between $y=\\sin(x)+1$ and $y=\\cos(x)+1$ from $x=-\\frac{3\\pi}{4}$ and $x=\\frac{5\\pi}{4}$."}
︠d427d78a-fb89-4831-a12d-afc4ec5acdbfi︠
%md
Here is the region:
︡0e2fcdca-c0f1-408b-befc-5986e11ab76c︡{"done":true,"md":"Here is the region:"}
︠66541673-174c-49d8-a6da-13b4d24eb9e0︠
f(x)=sin(x)+1
g(x)=cos(x)+1
plot(f,xmin=-3*pi/4,xmax=5*pi/4,fill=g(x),ticks=pi/4,tick_formatter=pi)+plot(g,xmin=-3*pi/4,xmax=5*pi/4,color='red')
︡ce9b7b50-87e4-4c16-adb1-347a5763c142︡{"once":false,"file":{"show":true,"uuid":"dfc5a923-8847-4717-adc5-be0f78c97af0","filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/1420/tmp_swkVHG.svg"}}︡{"html":"<div align='center'></div>"}︡
︠65c5c0bb-49d8-44a1-8d66-02953c13ec12i︠
%md
Cross sections perpendicular to the x-axis are annuli.

The outer radius is given by the function on top. In this example, the function on top actually changes. This happens when the two functions cross at $\frac{\pi}{4}$ [How do we know this is where they cross?]. Of course, the function on the bottom changes as well.

We need to break our problem into two parts:

1. From $x=-\frac{3\pi}{4}$ to $x=\frac{\pi}{4}$, $y=\cos(x)+1$ is on top and $y=\sin(x)+1$ is on the bottom.

2. From $x=\frac{\pi}{4}$ to $x=\frac{5\pi}{4}$, these are switched.

So the volume is $\displaystyle V=\int_{-3\pi/4}^{\pi/4}\pi(\cos(x)+1)^2-\pi(\sin(x)+1)^2\, dx+\int_{\pi/4}^{5\pi/4}\pi(\sin(x)+1)^2-\pi(\cos(x)+1)^2\, dx=8\pi\sqrt{2}$.
︡dbfd5843-54c0-4fef-9041-6f030cdfe26d︡{"md":"Cross sections perpendicular to the x-axis are annuli.\n\nThe outer radius is given by the function on top. In this example, the function on top actually changes. This happens when the two functions cross at $\\frac{\\pi}{4}$ [How do we know this is where they cross?]. Of course, the function on the bottom changes as well.\n\nWe need to break our problem into two parts:\n\n1. From $x=-\\frac{3\\pi}{4}$ to $x=\\frac{\\pi}{4}$, $y=\\cos(x)+1$ is on top and $y=\\sin(x)+1$ is on the bottom.\n\n2. From $x=\\frac{\\pi}{4}$ to $x=\\frac{5\\pi}{4}$, these are switched.\n\nSo the volume is $\\displaystyle V=\\int_{-3\\pi/4}^{\\pi/4}\\pi(\\cos(x)+1)^2-\\pi(\\sin(x)+1)^2\\, dx+\\int_{\\pi/4}^{5\\pi/4}\\pi(\\sin(x)+1)^2-\\pi(\\cos(x)+1)^2\\, dx=8\\pi\\sqrt{2}$.\n"}︡
︠58da8827-306f-4f34-8cc5-2960e68b50eb︠
integral(pi*(cos(x)+1)^2-pi*(sin(x)+1)^2,x,-3*pi/4,pi/4)+integral(pi*(sin(x)+1)^2-pi*(cos(x)+1)^2,x,pi/4,5*pi/4)
︡e6d7030a-1540-4127-9480-b9e40999633b︡{"stdout":"8*sqrt(2)*pi"}︡{"stdout":"\n"}︡
︠43e4f946-cd4a-49ea-95d7-31405782b959sia︠
%auto
%hide
f(x)=sin(x)+1
g(x)=cos(x)+1
revolution_plot3d(f(x),(x,-3*pi/4,pi/4),parallel_axis='x',show_curve=True)+revolution_plot3d(g(x),(x,-3*pi/4,pi/4),parallel_axis='x',show_curve=True,opacity=.5,color='green')+revolution_plot3d(g(x),(x,pi/4,5*pi/4),parallel_axis='x',show_curve=True)+revolution_plot3d(f(x),(x,pi/4,5*pi/4),parallel_axis='x',show_curve=True,opacity=.5,color='green')
︡fe32700a-db18-4c66-9ddd-2d94482eb475︡{"hide":"input"}︡{"file":{"filename":"098f232f-e37e-4eb3-80b4-a51c0fbb7cac.sage3d","uuid":"098f232f-e37e-4eb3-80b4-a51c0fbb7cac"}}︡{"done":true}︡
︠52339bed-e8a7-4452-acc7-c2cdf958335bi︠
%md
## Example 8 - Two Functions with a Gap

Find the volume of the solid obtained by rotating around the vertical line $x=3$ the region between the curves $y=x^2$ and $y=2x+4$ from $x=0$ to $x=2$.
︡5b6373f6-2eb8-4627-bedb-0de233ffec8d︡{"done":true,"md":"## Example 8 - Two Functions with a Gap\n\nFind the volume of the solid obtained by rotating around the vertical line $x=3$ the region between the curves $y=x^2$ and $y=2x+4$ from $x=0$ to $x=2$."}
︠c355b4f7-8b40-4ef6-95e1-09caacf0149ei︠
%md
Here is a picture of the region. Notice the gap between the two functions.
︡28df058d-7dec-483b-851a-dd464e276b41︡{"done":true,"md":"Here is a picture of the region. Notice the gap between the two functions."}
︠374dc2a8-f602-41c6-9393-1e400b522b11s︠
f(x)=x^2
g(x)=2*x+4
plot(f,xmin=0,xmax=2,color='red')+plot(g,xmin=0,xmax=2,fill=f)+line([(3,0),(3,8)],linestyle='dashed',color='black')
︡0b071a35-a8d5-4aeb-8945-31fdc149e8d6︡{"file":{"filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/25659/tmp_GLB0IH.svg","show":true,"text":null,"uuid":"253945f9-cefb-4db3-8c71-95747ee7d801"},"once":false}︡{"done":true}︡
︠c23b36df-5b09-4b07-af7e-68a87a6d8dd4i︠
%md
Since we are rotating around a vertical line, we need to integrate in the y-direction, and since there is a gap between the two functions, the outer and inner radius are not given by the same functions the entire time.

From $y=0$ to $y=4$, the outer radius is a constant $3$, while the inner radius is $3-\sqrt{y}$.

From $y=4$ to $y=8$, the outer radius is $3-(\frac{1}{2}y-2)$, and the inner radius is a constant $3-2=1$.

Thus, we need to do two integrals and add them together.

$$ V=\int_0^4 \pi\cdot 3^2-\pi \left(3-\sqrt{y}\right)^2\, dy+\int_4^8 \pi \left(3-\left(\frac{1}{2}y-2\right)\right)^2-\pi\cdot 1^2\, dy=\frac{112\pi}{3}$$
︡4031be53-b7d1-404f-a2bd-7027d94416a3︡{"done":true,"md":"Since we are rotating around a vertical line, we need to integrate in the y-direction, and since there is a gap between the two functions, the outer and inner radius are not given by the same functions the entire time.\n\nFrom $y=0$ to $y=4$, the outer radius is a constant $3$, while the inner radius is $3-\\sqrt{y}$.\n\nFrom $y=4$ to $y=8$, the outer radius is $3-(\\frac{1}{2}y-2)$, and the inner radius is a constant $3-2=1$.\n\nThus, we need to do two integrals and add them together.\n\n$$ V=\\int_0^4 \\pi\\cdot 3^2-\\pi \\left(3-\\sqrt{y}\\right)^2\\, dy+\\int_4^8 \\pi \\left(3-\\left(\\frac{1}{2}y-2\\right)\\right)^2-\\pi\\cdot 1^2\\, dy=\\frac{112\\pi}{3}$$"}
︠216899a7-96de-4ca5-a1c2-1721b531758ds︠
%var y
integral(pi*3^2-pi*(3-sqrt(y))^2,y,0,4)+integral(pi*(3-(1/2*y-2))^2-pi*1^2,y,4,8)
︡03e657b6-b786-4b43-ae94-45b3205eb0f0︡{"stdout":"112/3*pi"}︡{"stdout":"\n"}︡{"done":true}︡
︠fada6724-e0b4-4591-ab0e-642315dd6e08i︠
%md
## Summary

To find volumes for solids of revolution:

* Draw a picture of the region to be rotated and indicate the axis of rotation.

* If you're rotating around the x-axis or another horizontal line, then you will integrate with respect to x. You need functions in terms of x and x-values for the limits of integration.

* If you're rotating around the y-axis or another vertical line, then you will integrate with respect to y. You need functions in terms of y and y-values for the limits of integration.

* Decide if your cross sections are disks or annuli. Is there a gap between the region to be rotated and the axis of rotation? Then you have annuli.

* Determine the radius for a disk or the outer and inner radii for an annulus.

* Integrate!
︡916f7755-d4a3-49f5-9080-8de9c3b3f1fa︡{"md":"## Summary\n\nTo find volumes for solids of revolution:\n\n* Draw a picture of the region to be rotated and indicate the axis of rotation.\n\n* If you're rotating around the x-axis or another horizontal line, then you will integrate with respect to x. You need functions in terms of x and x-values for the limits of integration.\n\n* If you're rotating around the y-axis or another vertical line, then you will integrate with respect to y. You need functions in terms of y and y-values for the limits of integration.\n\n* Decide if your cross sections are disks or annuli. Is there a gap between the region to be rotated and the axis of rotation? Then you have annuli.\n\n* Determine the radius for a disk or the outer and inner radii for an annulus.\n\n* Integrate!\n"}︡
︠a9685f0e-fcac-4e0a-b72d-6e8d7e39af63i︠
%md
Final Hint: If you get a negative volume for a washer question, you probably reversed the inner and outer radii.
︡1ed873db-930b-4810-bcba-5124038a7221︡{"done":true,"md":"Final Hint: If you get a negative volume for a washer question, you probably reversed the inner and outer radii."}
︠21f5ae88-a36f-4b53-93fd-4390f1b703db︠









