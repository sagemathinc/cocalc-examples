︠30552964-6952-48a8-b53a-ef36378aca55i︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡fee182f7-b102-4af3-beb0-7bd8fcfb3dfc︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠a1cb0ca7-3f51-459c-a0ec-bded4a1b8250i︠
%md
### Prerequisites:

* Intro to Sage
* Symbolic Integration
︡331870bf-518f-4c62-9ff6-f3858a3cc84c︡{"done":true,"md":"### Prerequisites:\n\n* Intro to Sage\n* Symbolic Integration"}
︠64911b96-14f7-48ea-ac76-b0aaf27feaeci︠
%md
# Work

The **work** $W$ that a *constant* force $F$ does when moving an object over distance $d$ is $W=Fd$.

The unit of work is the unit of force times the unit of distance. In SI units, force is measured in newtons ($N$) and distance is measured in meters ($m$), so work is measured in newton-meters, also called **joules** ($J$). In the British system, work is measured in foot-pounds.
︡08313e7e-1d73-4a8e-8b25-f6775cbd31b3︡{"done":true,"md":"# Work\n\nThe **work** $W$ that a *constant* force $F$ does when moving an object over distance $d$ is $W=Fd$.\n\nThe unit of work is the unit of force times the unit of distance. In SI units, force is measured in newtons ($N$) and distance is measured in meters ($m$), so work is measured in newton-meters, also called **joules** ($J$). In the British system, work is measured in foot-pounds."}
︠f9ffc212-768b-4a18-a59b-0f0b32be8d28i︠
%md
If the force is not constant, then calculating work is more complicated. Suppose the force is given by a function $F(x)$, where $x$ is the position of the object. We want to find the work done moving an object from $x=a$ to $x=b$. So we divide the interval $[a,b]$ into $n$ equal subintervals of width $\Delta x$, and we choose a point $x_i$ from the $i^{th}$ subinterval. If the subintervals are small, then the force on each subinterval is approximately the constant $F(x_i)$, so the work required to move across the $i^{th}$ subinterval is approximately $F(x_i)\Delta x$, and the total work is approximately $\displaystyle\sum_{i=1}^n F(x_i)\Delta x$. The actual work is the limit of this sum as $n\to\infty$. Since this is a Riemann sum, the answer is:


$$ W=\int_a^bF(x)\, dx$$
︡0b6523c8-a048-4901-bdf4-ebb73e8f6cd3︡{"done":true,"md":"If the force is not constant, then calculating work is more complicated. Suppose the force is given by a function $F(x)$, where $x$ is the position of the object. We want to find the work done moving an object from $x=a$ to $x=b$. So we divide the interval $[a,b]$ into $n$ equal subintervals of width $\\Delta x$, and we choose a point $x_i$ from the $i^{th}$ subinterval. If the subintervals are small, then the force on each subinterval is approximately the constant $F(x_i)$, so the work required to move across the $i^{th}$ subinterval is approximately $F(x_i)\\Delta x$, and the total work is approximately $\\displaystyle\\sum_{i=1}^n F(x_i)\\Delta x$. The actual work is the limit of this sum as $n\\to\\infty$. Since this is a Riemann sum, the answer is:\n\n\n$$ W=\\int_a^bF(x)\\, dx$$"}
︠a147d9ce-8660-4e93-8657-190ee66aad8fi︠
%md
## Springs
One place where work arises is when stretching or compressing springs. To answer questions about springs, we need to know the relationship between force and distance.

**Hooke's Law**: The force required to hold a stretched or compressed spring a distance of $x$ units from its natural length is $F(x)=kx$, where $k>0$ is a constant (called the spring constant; this depends on the nature of the spring).
︡58030248-ac8b-471a-b7de-e6ec46249d70︡{"done":true,"md":"## Springs\nOne place where work arises is when stretching or compressing springs. To answer questions about springs, we need to know the relationship between force and distance.\n\n**Hooke's Law**: The force required to hold a stretched or compressed spring a distance of $x$ units from its natural length is $F(x)=kx$, where $k>0$ is a constant (called the spring constant; this depends on the nature of the spring)."}
︠d8fa2684-c16f-4b9d-9c52-2f6716fcbd46i︠
%md
## Example 1
A spring with natural length $5\ m$ and spring constant $k=30\ N/m$ is stretched $10\ m$ from its natural length. Find the work required.
︡14783b2c-d82f-4bd5-8f34-2c3840d5070c︡{"done":true,"md":"## Example 1\nA spring with natural length $5\\ m$ and spring constant $k=30\\ N/m$ is stretched $10\\ m$ from its natural length. Find the work required."}
︠a91dd9de-152e-4d21-a6b0-aac5f7ca5e91i︠
%md
**Solution** $$W=\int_0^{10}F(x)\, dx=\int_0^{10}30x\, dx=1500\ J$$

︡68d243b4-34e5-47fd-abef-6a6cd2ef2f79︡{"done":true,"md":"**Solution** $$W=\\int_0^{10}F(x)\\, dx=\\int_0^{10}30x\\, dx=1500\\ J$$"}
︠9d426302-c3c0-4187-ad78-fed2159fa63a︠
integral(30*x,x,0,10)
︡b894f4b7-b42c-4ff7-a92e-73a021551277︡{"stdout":"1500\n"}︡
︠f7d9907b-4a58-4d73-bfea-23edeadb9650i︠
%md
## Example 2

A spring has a natural length of $20\ cm$. A $40\ N$ force is required to stretch and hold the spring at a length of $30\ cm$. How much work (in joules) is done in stretching the spring from $35\ cm$ to $38\ cm$?
︡715b8687-51c0-4187-bb02-627b2fa7c672︡{"done":true,"md":"## Example 2\n\nA spring has a natural length of $20\\ cm$. A $40\\ N$ force is required to stretch and hold the spring at a length of $30\\ cm$. How much work (in joules) is done in stretching the spring from $35\\ cm$ to $38\\ cm$?"}
︠170cb7f0-617d-4856-b648-6127bb6123aai︠
%md
**Solution** In order to calculate the work, we must integrate the force function. That means we need to find $k$ for this particular spring. We will use joules as the unit of work, so we must make sure we use newtons for force and meters for distance.

We are told that $40\ N$ of force is required to hold the spring $10\ cm = 0.1\ m$ from the natural length ($30-20$). That means $40=k\cdot0.1$, or $k=400$.

We want to move the spring from $35\ cm$ to $38\ cm$, which is $0.15\ m$ to $0.18\ m$ beyond the natural length. Thus, the work is:

$$W=\int_{0.15}^{0.18}400x\, dx=1.98\ J$$
︡2d58de2e-65bd-4554-b3f8-79da0fb0d36a︡{"done":true,"md":"**Solution** In order to calculate the work, we must integrate the force function. That means we need to find $k$ for this particular spring. We will use joules as the unit of work, so we must make sure we use newtons for force and meters for distance.\n\nWe are told that $40\\ N$ of force is required to hold the spring $10\\ cm = 0.1\\ m$ from the natural length ($30-20$). That means $40=k\\cdot0.1$, or $k=400$.\n\nWe want to move the spring from $35\\ cm$ to $38\\ cm$, which is $0.15\\ m$ to $0.18\\ m$ beyond the natural length. Thus, the work is:\n\n$$W=\\int_{0.15}^{0.18}400x\\, dx=1.98\\ J$$"}
︠3e283226-f160-416b-916b-5b160f7e1473︠
integral(400*x,x,.15,.18)
︡127d49ab-c121-4c71-bb67-2805ae798733︡{"stdout":"1.9799999999999998\n"}︡
︠d02861bf-142e-46e8-8d04-aea99b7f2d90i︠
%md
## Example 3

We have a cable that weighs 2 lbs/ft attached to a bucket filled with coal that weighs 800 lbs. How much work (in foot-pounds) does it take to raise the bucket from the bottom of a 500 ft mine shaft?
︡eb717d63-75e1-4c42-9972-ced03e0da90e︡{"done":true,"md":"## Example 3\n\nWe have a cable that weighs 2 lbs/ft attached to a bucket filled with coal that weighs 800 lbs. How much work (in foot-pounds) does it take to raise the bucket from the bottom of a 500 ft mine shaft?"}
︠570fdab0-d09d-4faa-bd91-6c21519e2ae3i︠
%md
**Solution** The force involved is the weight of the cable plus the weight of the bucket. The weight of cable depends on how much cable is left.

Let $x$ be the length of cable remaining. Then the force is $F(x)=2x+800$.

Therefore, the work is $$W=\int_0^{500}2x+800\, dx=650,000\text{ ft-lb}.$$
︡aa9ab642-704c-4df4-8740-a3d294f285b6︡{"done":true,"md":"**Solution** The force involved is the weight of the cable plus the weight of the bucket. The weight of cable depends on how much cable is left.\n\nLet $x$ be the length of cable remaining. Then the force is $F(x)=2x+800$.\n\nTherefore, the work is $$W=\\int_0^{500}2x+800\\, dx=650,000\\text{ ft-lb}.$$"}
︠20f447ad-2e5b-48cf-94a8-3b20353945df︠
integral(2*x+800,x,0,500)
︡07187ca2-3f8e-4a89-8bff-8aef00a7376e︡{"stdout":"650000\n"}︡
︠eca8ff92-a70d-42f5-b75f-126cc741dbdai︠
%md
## Example 4

A tank has the shape of an inverted circular cone with height 15 ft and base radius 4 ft. It is filled with water to a depth of 12 ft. Find the work needed to pump all the water to the top of the tank (the pump is floating on the water). Note: Water weighs $62.4\text{ lbs/ft}^3$.
︡db378e56-ffb6-46ce-a6dd-ed5d19c16aea︡{"done":true,"md":"## Example 4\n\nA tank has the shape of an inverted circular cone with height 15 ft and base radius 4 ft. It is filled with water to a depth of 12 ft. Find the work needed to pump all the water to the top of the tank (the pump is floating on the water). Note: Water weighs $62.4\\text{ lbs/ft}^3$."}
︠b1620018-29ac-4ba5-98c3-0aad7c877276is︠
%auto
%hide
%var y
implicit_plot(x^2/4+y^2/.5==1,(x,-2,2),(y,-1,1),frame=false,color='black')+line([(-2,0),(0,-5),(2,0)],color='black')+line([(0,0),(2,0)],color='black')+text('4',(1,.15),color='black')+line([(-2.2,0),(-2.2,-5)],color='black')+line([(-2.25,0),(-2.15,0)],color='black')+line([(-2.25,-5),(-2.15,-5)],color='black')+text('15',(-2.4,-2.5),color='black')
︡0db05355-e8b8-406c-a17e-8c98859ed34d︡{"hide":"input"}︡{"file":{"filename":"/home/user/.sage/temp/project-9189c752-e334-4311-afa9-605b6159620a/216773/tmp_Gzdz3H.svg","show":true,"text":null,"uuid":"267533c3-62fa-4822-824d-a50d9f72d411"},"once":false}︡{"done":true}︡
︠3d2bcd12-ff9f-4e4c-ae75-b60854c0971ci︠
%md
**Solution** We can't find a simple force function $F(x)$, so this problem is more complicated than the previous examples.

Let $x$ be the vertical distance from the bottom of the tank ($x=0$). The top of the tank is at $x=15$, and the water occupies the interval from $0$ to $12$.

Divide $[0,12]$ into $n$ equal subintervals of width $\Delta x$, and let $x_i$ be a point in the $i^{th}$ subinterval.

For each subinterval we'll approximate the water with a cylinder of radius $r_i$ and height $\Delta x$.

By similar triangles, $\displaystyle\frac{r_i}{x_i}=\frac{4}{15}$, so $r_i=\frac{4}{15}x_i$.

Here is a picture of a cross section of the tank:
︡3e7cf6f5-fb50-4252-9ab2-947e2227c60a︡{"done":true,"md":"**Solution** We can't find a simple force function $F(x)$, so this problem is more complicated than the previous examples.\n\nLet $x$ be the vertical distance from the bottom of the tank ($x=0$). The top of the tank is at $x=15$, and the water occupies the interval from $0$ to $12$.\n\nDivide $[0,12]$ into $n$ equal subintervals of width $\\Delta x$, and let $x_i$ be a point in the $i^{th}$ subinterval.\n\nFor each subinterval we'll approximate the water with a cylinder of radius $r_i$ and height $\\Delta x$.\n\nBy similar triangles, $\\displaystyle\\frac{r_i}{x_i}=\\frac{4}{15}$, so $r_i=\\frac{4}{15}x_i$.\n\nHere is a picture of a cross section of the tank:"}
︠90fe0e1f-9c6c-4439-a59f-19c758772e6bi︠
%auto
%hide
line([(0,0),(-4,15),(4,15),(0,0),(0,15)],color='black',axes=false,aspect_ratio=1)+line([(0,10),(40/15,10)],color='black')+text('4',(2,15.4),color='black')+text('$r_i$',(1.5,10.4),color='black')+text('$x_i$',(.5,5),color='black')+text('15',(-.5,10),color='black')
︡5ca5d86a-0823-4e4f-9b40-bd2952fd25e7︡{"hide":"input"}︡{"file":{"filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/17374/tmp_Dw4ytD.svg","show":true,"text":null,"uuid":"8d6a678e-5cf2-4f7c-8ed0-d1ffc9dfe65c"},"once":false}︡{"done":true}︡
︠68bdd966-f01b-45bb-869b-80cdf68e356ei︠
%md
Force is provided by the weight of the water, which is $62.4\text{ lbs/ft}^3$ times the volume (in cubic feet).

The volume of water in the $i^{th}$ subinterval is $$V_i\approx\text{volume of cylinder}=\pi r^2h=\pi r_i^2\Delta x=\pi \left(\frac{4}{15}x_i\right)^2\Delta x.$$

So the force (= weight of water) for the $i^{th}$ subinterval is $$F_i=62.4V_i\approx62.4\pi \left(\frac{4}{15}x_i\right)^2\Delta x=\frac{1664\pi}{375} x_i^2\Delta x.$$

The distance required to get the water from the $i^{th}$ subinterval to the top of the tank is $d_i\approx 15-x_i$, so the work required to pump the $i^{th}$ subinterval is $$W_i= F_id_i\approx\frac{1664\pi}{375} x_i^2\Delta x(15-x_i).$$

The total work reqired is $\displaystyle W\approx\sum_{i=1}^{n}W_i\approx\sum_{i=1}^{n}\frac{1664\pi}{375} x_i^2(15-x_i)\Delta x$.

To get the actual value of the work, we take the limit as $n\to\infty$. Notice that the sum above is a Riemann sum, so $$W=\lim_{n\to\infty}\sum_{i=1}^{n}\frac{1664\pi}{375} x_i^2(15-x_i)\Delta x=\int_0^{12}\frac{1664\pi}{375} x^2(15-x)\, dx\approx48,178\text{ ft-lb}.$$
︡14796c82-56c0-4190-a13e-089182dc9ba4︡{"done":true,"md":"Force is provided by the weight of the water, which is $62.4\\text{ lbs/ft}^3$ times the volume (in cubic feet).\n\nThe volume of water in the $i^{th}$ subinterval is $$V_i\\approx\\text{volume of cylinder}=\\pi r^2h=\\pi r_i^2\\Delta x=\\pi \\left(\\frac{4}{15}x_i\\right)^2\\Delta x.$$\n\nSo the force (= weight of water) for the $i^{th}$ subinterval is $$F_i=62.4V_i\\approx62.4\\pi \\left(\\frac{4}{15}x_i\\right)^2\\Delta x=\\frac{1664\\pi}{375} x_i^2\\Delta x.$$\n\nThe distance required to get the water from the $i^{th}$ subinterval to the top of the tank is $d_i\\approx 15-x_i$, so the work required to pump the $i^{th}$ subinterval is $$W_i= F_id_i\\approx\\frac{1664\\pi}{375} x_i^2\\Delta x(15-x_i).$$\n\nThe total work reqired is $\\displaystyle W\\approx\\sum_{i=1}^{n}W_i\\approx\\sum_{i=1}^{n}\\frac{1664\\pi}{375} x_i^2(15-x_i)\\Delta x$.\n\nTo get the actual value of the work, we take the limit as $n\\to\\infty$. Notice that the sum above is a Riemann sum, so $$W=\\lim_{n\\to\\infty}\\sum_{i=1}^{n}\\frac{1664\\pi}{375} x_i^2(15-x_i)\\Delta x=\\int_0^{12}\\frac{1664\\pi}{375} x^2(15-x)\\, dx\\approx48,178\\text{ ft-lb}.$$"}
︠53ccf7f7-3dc4-4bdb-87a7-a072cade9103s︠
integral(1664*pi/375*x^2*(15-x),x,0,12)
N(_)
︡32de54fd-46fa-41c8-b9c1-a7e5a1677afe︡{"stdout":"1916928/125*pi\n"}︡{"stdout":"48177.6553780846\n"}︡{"done":true}︡
︠b8ab9e52-9149-4975-b11b-c3adb8a5f331︠









