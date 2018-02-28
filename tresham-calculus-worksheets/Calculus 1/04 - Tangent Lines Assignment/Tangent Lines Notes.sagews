︠41ddd836-9267-4372-b5d2-70becc70ee59i︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡c196fd45-8bd5-4a1c-80b5-d0f536937e85︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠240e9f45-f8e8-4763-bba9-9d7d45603ebaai︠
%md
### Prerequisites:

* Intro to Sage
* Graphing and Solving Equations
* Limits
︡14a61bea-b19e-437d-b8f3-1daf6cde0fc4︡{"done":true,"md":"### Prerequisites:\n\n* Intro to Sage\n* Graphing and Solving Equations\n* Limits"}
︠8e846d08-a5aa-4807-b875-4c80acc70dcdi︠
%md
# Local Linearity and Tangent Lines
This week we will zoom in on graphs of functions to explore the "local linearity" property. Then we will find and graph tangent lines.
︡6fceea59-e763-4cff-831f-7e6923bba0a4︡{"md":"# Local Linearity and Tangent Lines\nThis week we will zoom in on graphs of functions to explore the \"local linearity\" property. Then we will find and graph tangent lines.\n"}︡
︠2fd59a9e-6c97-4a28-b4ed-956459ee598di︠
%md
## Example 1

Consider the function $f(x)=2\ln(x)$. Here is a typical graph:
︡f529f6a3-e056-4532-97eb-6e40cd5d3108︡{"md":"## Example 1\n\nConsider the function $f(x)=2\\ln(x)$. Here is a typical graph:\n"}︡
︠30e47630-ec9c-4b6f-892f-32ef2af2096es︠
f(x)=2*ln(x)
plot(f,xmin=0,xmax=10)
︡70a08c3c-d636-47f1-bcda-01461906769e︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/17109/tmp_NZgaL0.svg","show":true,"text":null,"uuid":"2f350346-8e29-4050-9147-2f43e6719199"},"once":false}︡{"done":true}︡
︠15367c45-bc4b-4f30-baa8-524af4b3b148i︠
%md
What happens when we zoom in on a particular point? What does the graph look like?
For example, let's zoom in on the point $(1,0)$.
︡c5243b57-6e28-464f-a298-4bb4b12b584a︡{"md":"What happens when we zoom in on a particular point? What does the graph look like?\nFor example, let's zoom in on the point $(1,0)$.\n"}︡
︠d9a2ca63-3d28-455f-afc6-aa866b2c93cbs︠
plot(f,xmin=.9,xmax=1.1)
︡dabd6a92-375e-4df5-b2ad-99683c31b413︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/17109/tmp_nTcUgo.svg","show":true,"text":null,"uuid":"01a907f6-c79d-4b9a-baec-d2e28e7ad041"},"once":false}︡{"done":true}︡
︠029e36eb-5366-429b-87d8-d327f674e352i︠
%md
On the first graph above, it is easy to see that the graph is not straight, but when we zoom in the curvature is much harder to see. Let's zoom in once more:
︡37ee6fcc-cb84-45ca-aaa5-badcb440e675︡{"md":"On the first graph above, it is easy to see that the graph is not straight, but when we zoom in the curvature is much harder to see. Let's zoom in once more:\n"}︡
︠917ca199-b919-4b51-a8b6-4ba2869928b0s︠
plot(f,xmin=.99,xmax=1.01)
︡5700367b-03ce-465d-b3b7-f4883774eda7︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/17109/tmp_p6O3ht.svg","show":true,"text":null,"uuid":"0c6b0529-cfcb-481d-bf3e-918285e96dc2"},"once":false}︡{"done":true}︡
︠d5c6c593-6fde-4083-98db-adb13a90c387i︠
%md
When we are this close to the graph of $f$, it appears that the graph is a straight line. We know this is not the case, but very close to the point $(1,0)$ the graph is almost a line. This is called the local linearity property. Not every function has this property, but there are many important functions that do have this property.
︡39856071-2a31-4b7b-ac84-80905a50025c︡{"done":true,"md":"When we are this close to the graph of $f$, it appears that the graph is a straight line. We know this is not the case, but very close to the point $(1,0)$ the graph is almost a line. This is called the local linearity property. Not every function has this property, but there are many important functions that do have this property."}
︠9bfd34a0-393e-4ffe-aebb-253bbebf88eci︠
%md
## Example 2

Consider the graph of $g(x)=\cos(x)$ near the point $(0,1)$.

In the animation below, we will zoom in on this graph near this point. Note that both the x- and y-axes will change to maintain the scale.
︡eadae7d8-82ec-435a-8076-c787e7c55b0c︡{"done":true,"md":"## Example 2\n\nConsider the graph of $g(x)=\\cos(x)$ near the point $(0,1)$.\n\nIn the animation below, we will zoom in on this graph near this point. Note that both the x- and y-axes will change to maintain the scale."}
︠5afd8878-80ed-4100-a89c-38d56710d575si︠
%auto
%hide
%var b
sls=[]
for b in range(25):
    sls += [plot(cos(x),xmin=-1/2^b,xmax=1/2^b,ymin=1-1/2^b,ymax=1+1/2^b)]
sla=animate(sls,figsize=5)
show(sla,delay=75)
︡4fa3f09c-be33-48ea-89ba-3fc797ae5c64︡{"hide":"input"}︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/2383/tmp_nrrtqL.webm","show":true,"text":null,"url":"/a8975d68-235e-4f21-8635-2051d699f504/raw/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/2383/tmp_nrrtqL.webm"},"once":false}︡{"done":true}︡
︠923d90b9-6eba-46f3-b782-d1442256dc07i︠
%md
It appears that the graph of $\cos(x)$ has the local linearity property at $(0,1)$.
︡d9caf7ab-e058-4cc7-8b2a-971eb0007fbf︡{"md":"It appears that the graph of $\\cos(x)$ has the local linearity property at $(0,1)$.\n"}︡
︠2801da8e-4218-4db9-9fc8-6ea431a272c4i︠
%md
## Example 3

Now let's consider the graph of $h(x)=|x|$ near the point $(0,0)$.
︡a217f82f-9a11-4b6c-9b52-b89c866cd74f︡{"md":"## Example 3\n\nNow let's consider the graph of $h(x)=|x|$ near the point $(0,0)$.\n"}︡
︠da211895-8f0d-4037-8a86-1998f88a5338s︠
plot(abs(x),xmin=-.01,xmax=.01,ymin=0,ymax=.02)    #I have adjusted the ymin and ymax again to keep the scales the same
︡be1cdd4b-8e56-4c5b-b234-765bde546e58︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/17109/tmp_D51uW3.svg","show":true,"text":null,"uuid":"817f377a-d41f-4d81-9a26-dfdfc4dae7d0"},"once":false}︡{"done":true}︡
︠d6c8d197-ac22-467b-a12b-09b6b391885ai︠
%md
For this function, it does not matter how much you zoom in. You will always get a sharp corner, never a straight line. This is an example of a function that does not have the local linearity property at a point. [Note: this function does have the local linearity property at every other point on the graph - it's already a straight line everywhere else.]
︡c9da2901-f348-4a6f-b990-ced102af19a4︡{"md":"For this function, it does not matter how much you zoom in. You will always get a sharp corner, never a straight line. This is an example of a function that does not have the local linearity property at a point. [Note: this function does have the local linearity property at every other point on the graph - it's already a straight line everywhere else.]\n"}︡
︠8719b1fe-b471-409a-8d6a-cf8c95f50fe4i︠
%md
From what we've seen above, it's safe to conclude that graphs alone are not sufficient for determining local linearity (depending on the viewing window, the picture can look very different). We want an algebraic way of determining local linearity.
︡a3180702-4dd3-4e6c-b85f-015b9910e2ab︡{"md":"From what we've seen above, it's safe to conclude that graphs alone are not sufficient for determining local linearity (depending on the viewing window, the picture can look very different). We want an algebraic way of determining local linearity."}︡
︠d9cf0e12-c490-4f89-a1e4-34b7abdc186bi︠
%md
## Tangent Lines
If a function $f$ has the local linearity property at a particular point $(x_0,f(x_0))$, then the graph of $f$ looks like a line near that point. But which line does it look like?

The line that $f$ is "close to" at $(x_0,f(x_0))$ is called the "tangent line" at that point, and the point $(x_0,f(x_0))$ is called the "point of tangency." In order to find the equation of a line, we need two pieces of information, either two points on the line or one point on the line and the slope of the line. We know one point on the tangent line: $(x_0,f(x_0))$. We don't know a second point on the tangent line, but we can find the slope of the tangent line.

<br>
First, we will approximate the slope of the tangent line by choosing a second point close to $(x_0,f(x_0))$. Say the distance away from $x_0$ is $h$, then the second point is $(x_0+h,f(x_0+h))$. We'll find the slope of the line through these two points (called a "secant line").

Here is a sample graph.
︡86bf54e8-4442-4b09-85c9-7b75df1819bf︡{"done":true,"md":"## Tangent Lines\nIf a function $f$ has the local linearity property at a particular point $(x_0,f(x_0))$, then the graph of $f$ looks like a line near that point. But which line does it look like?\n\nThe line that $f$ is \"close to\" at $(x_0,f(x_0))$ is called the \"tangent line\" at that point, and the point $(x_0,f(x_0))$ is called the \"point of tangency.\" In order to find the equation of a line, we need two pieces of information, either two points on the line or one point on the line and the slope of the line. We know one point on the tangent line: $(x_0,f(x_0))$. We don't know a second point on the tangent line, but we can find the slope of the tangent line.\n\n<br>\nFirst, we will approximate the slope of the tangent line by choosing a second point close to $(x_0,f(x_0))$. Say the distance away from $x_0$ is $h$, then the second point is $(x_0+h,f(x_0+h))$. We'll find the slope of the line through these two points (called a \"secant line\").\n\nHere is a sample graph."}
︠7b13fca6-702f-45a4-b92e-a744e93f6f2fis︠
%auto
%hide
plot((x-1)^2+1,0,2)+point([(1,1),(1.5,1.25)],size=30,color='black')+text('$(x_0,f(x_0))$',(1,.9),color='black',fontsize=12)+text('$(x_0+h,f(x_0+h))$',(1.65,1.15),color='black',fontsize=12)+plot(1+.5*(x-1),0,2,color='green')+text('secant line',(.5,.8),color='black',rotation=15)
︡a00b3bd3-f30f-475a-aae1-8500914df546︡{"hide":"input"}︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/2383/tmp_OpSriL.svg","show":true,"text":null,"uuid":"12e6f8b4-8f3c-4594-ac9e-71c3e02c5cb3"},"once":false}︡{"done":true}︡
︠16d0935e-2e12-4d79-be64-f513cac78c5bi︠
%md
Now we will improve our approximation by making $h$ closer and closer to $0$, moving $(x_0+h,f(x_0+h))$ closer to $(x_0,f(x_0))$.

This process sounds like a limit, so that's how we'll find our answer. The slope of the secant line through $(x_0+h,f(x_0+h))$ and $(x_0,f(x_0))$ is $\displaystyle\frac{f(x_0+h)-f(x_0)}{x_0+h-x_0}=\frac{f(x_0+h)-f(x_0)}{h}$ (rise over run).

We want to know what happens to this slope as $h$ approaches $0$. In limit notation, we want to find $\displaystyle\lim_{h\to 0}\frac{f(x_0+h)-f(x_0)}{h}$.

If the function $f$ has the local linearity property at $(x_0,f(x_0))$, then this limit will exist (and conversely). The value of this limit is the slope of the tangent line.

︡3780fbb2-a534-40f1-9ce6-e62019b67749︡{"done":true,"md":"Now we will improve our approximation by making $h$ closer and closer to $0$, moving $(x_0+h,f(x_0+h))$ closer to $(x_0,f(x_0))$.\n\nThis process sounds like a limit, so that's how we'll find our answer. The slope of the secant line through $(x_0+h,f(x_0+h))$ and $(x_0,f(x_0))$ is $\\displaystyle\\frac{f(x_0+h)-f(x_0)}{x_0+h-x_0}=\\frac{f(x_0+h)-f(x_0)}{h}$ (rise over run).\n\nWe want to know what happens to this slope as $h$ approaches $0$. In limit notation, we want to find $\\displaystyle\\lim_{h\\to 0}\\frac{f(x_0+h)-f(x_0)}{h}$.\n\nIf the function $f$ has the local linearity property at $(x_0,f(x_0))$, then this limit will exist (and conversely). The value of this limit is the slope of the tangent line."}
︠b7b99bcd-b79c-4452-813c-1d76387db62di︠
%md
Now that we have a point on the line and the slope of the line, we can find the equation of the line. Remember point-slope form?

<br>
**Point-Slope Form of a Line:** $y-y_0=m\cdot(x-x_0)$, where $m$ is the slope and $(x_0,y_0)$ is a point on the line.

In this case, $(x_0,y_0)=(x_0,f(x_0))$ and $m=\displaystyle\lim_{h\to 0}\frac{f(x_0+h)-f(x_0)}{h}$.

<br>
Therefore, an equation for the tangent line is $y-f(x_0)=m\cdot(x-x_0)$. Adding $f(x_0)$ to both sides produces:

︡1d9e1807-5687-4933-bd9a-72209c1be9ef︡{"done":true,"md":"Now that we have a point on the line and the slope of the line, we can find the equation of the line. Remember point-slope form?\n\n<br>\n**Point-Slope Form of a Line:** $y-y_0=m\\cdot(x-x_0)$, where $m$ is the slope and $(x_0,y_0)$ is a point on the line.\n\nIn this case, $(x_0,y_0)=(x_0,f(x_0))$ and $m=\\displaystyle\\lim_{h\\to 0}\\frac{f(x_0+h)-f(x_0)}{h}$.\n\n<br>\nTherefore, an equation for the tangent line is $y-f(x_0)=m\\cdot(x-x_0)$. Adding $f(x_0)$ to both sides produces:"}
︠3ba01ffb-bc1e-4a9f-bfce-b78490213b77i︠
%md
<p style="font-size:16px">**Equation for the Tangent Line at $x=x_0$:**</p>

$$y=f(x_0)+m\cdot(x-x_0),$$

where $m=\displaystyle\lim_{h\to 0}\frac{f(x_0+h)-f(x_0)}{h}$.

This is a general formula for finding an equation for the line tangent to the graph of $f$ at the point $(x_0,f(x_0))$.
︡395bd9e2-85c0-4ce9-ace2-027a167051db︡{"done":true,"md":"<p style=\"font-size:16px\">**Equation for the Tangent Line at $x=x_0$:**</p>\n\n$$y=f(x_0)+m\\cdot(x-x_0),$$\n\nwhere $m=\\displaystyle\\lim_{h\\to 0}\\frac{f(x_0+h)-f(x_0)}{h}$. \n\nThis is a general formula for finding an equation for the line tangent to the graph of $f$ at the point $(x_0,f(x_0))$."}
︠3af4e037-c406-4e1f-a4ed-7b4a50916747i︠
%md
## Example 4
To see how secant lines approach the tangent line graphically, let's look at the animation below.

You will see secant lines for the curve $f(x)=2\ln(x)$ through the point $(x_0,f(x_0))=(1,0)$ and $(x_0+h,f(x_0+h))$, where $h$ starts at $1$ and approaches $0$.
︡5fcaaef3-9cae-467b-a2dc-d0eee2551619︡︡{"done":true,"md":"## Example 4\nTo see how secant lines approach the tangent line graphically, let's look at the animation below.\n\nYou will see secant lines for the curve $f(x)=2\\ln(x)$ through the point $(x_0,f(x_0))=(1,0)$ and $(x_0+h,f(x_0+h))$, where $h$ starts at $1$ and approaches $0$."}
︠e7bfe237-b32e-431a-8671-2c478a1cf491sai︠
%auto
%hide
a=1
f(x)=2*log(x)
df(x)=derivative(f(x),x)
sls=[]
for b in [a+1,a+.95..a+.05]:
    sls += [plot(f(x),a-1,a+1,ymin=-2,ymax=2)+plot(f(a)+(f(b)-f(a))/(b-a)*(x-a),a-1,a+1,color='green',ymin=-2,ymax=2)+point((b,f(b)),color='black',size=25)]
sls+=[plot(f(a)+df(a)*(x-a),a-1,a+1,color='red',ymin=-2,ymax=2)+plot(f(x),a-1,a+1,ymin=-2,ymax=2)+point((a,f(a)),color='black',size=25)]
sla=animate(sls,figsize=5)
show(sla,delay=50)
︡b75316ca-1662-45df-8858-cd5ac47a94d3︡{"hide":"input"}︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/2383/tmp_6EhdZv.webm","show":true,"text":null,"url":"/a8975d68-235e-4f21-8635-2051d699f504/raw/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/2383/tmp_6EhdZv.webm"},"once":false}︡{"done":true}︡
︠66c99123-d5fc-477b-9691-414272f91d03i︠
%md
You can see that the secant lines (in green) approach the tangent line (in red) as $h$ approaches $0$.
︡9d2f07cf-e992-450b-9a7d-d6f4a1e79085︡︡{"done":true,"md":"You can see that the secant lines (in green) approach the tangent line (in red) as $h$ approaches $0$."}
︠dec4c522-88cb-4d53-8185-add289463bb9i︠
%md
Now $h$ can also be negative, so we'll also look at secant lines when $h$ starts at $-\frac{3}{4}$ and approaches $0$.

Note: We can't start at $h=-1$, since that gives us $x_0+h=0$, which is not in the domain.
︡e272c211-9ef6-4d6f-afbb-1e90ae834fcf︡︡{"done":true,"md":"Now $h$ can also be negative, so we'll also look at secant lines when $h$ starts at $-\\frac{3}{4}$ and approaches $0$.\n\nNote: We can't start at $h=-1$, since that gives us $x_0+h=0$, which is not in the domain."}
︠7ecaa625-7be7-49e9-ad83-3b3443042598sia︠
%auto
%hide
a=1
f(x)=2*log(x)
df(x)=derivative(f(x),x)
sls=[]
for b in [a-.75,a-.7..a-.05]:
    sls += [plot(f(x),a-1,a+1,ymin=-2,ymax=2)+plot(f(a)+(f(b)-f(a))/(b-a)*(x-a),a-1,a+1,color='green',ymin=-2,ymax=2)+point((b,f(b)),color='black',size=25)]
sls+=[plot(f(a)+df(a)*(x-a),a-1,a+1,color='red',ymin=-2,ymax=2)+plot(f(x),a-1,a+1,ymin=-2,ymax=2)+point((a,f(a)),color='black',size=25)]
sla=animate(sls,figsize=5)
show(sla,delay=50)
︡ba752076-da23-4b59-bac6-8e1f493c43b3︡{"hide":"input"}︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/2383/tmp_RLYiJ2.webm","show":true,"text":null,"url":"/a8975d68-235e-4f21-8635-2051d699f504/raw/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/2383/tmp_RLYiJ2.webm"},"once":false}︡{"done":true}︡
︠2fb99137-1f63-4b93-ae81-3fcd9bc08765i︠
%md
Once again, the secant lines approach the tangent line as $h$ approaches $0$.
︡2bb97b40-40d6-4715-a386-9c8a8ca65bce︡︡{"done":true,"md":"Once again, the secant lines approach the tangent line as $h$ approaches $0$."}
︠3612d0cd-90ac-4c83-b364-c2a574fefde1i︠
%md
## Example 5

Now consider $f(x)=\cos(x)$ and $(x_0,f(x_0))=(0,1)$. We'll start at $h=1$ and let $h$ approach $0$.
︡5076529b-d329-4a3b-bc12-6f77b77b7537︡︡{"done":true,"md":"## Example 5\n\nNow consider $f(x)=\\cos(x)$ and $(x_0,f(x_0))=(0,1)$. We'll start at $h=1$ and let $h$ approach $0$."}
︠bdb3697e-0f58-4460-851f-624a5e01f05fsia︠
%auto
%hide
a=0
f(x)=cos(x)
df(x)=derivative(f(x),x)
sls=[]
for b in [a+1,a+.95..a+.05]:
    sls += [plot(f(x),a-1,a+1,ymin=-1,ymax=1)+plot(f(a)+(f(b)-f(a))/(b-a)*(x-a),a-1,a+1,color='green',ymin=0,ymax=2)+point((b,f(b)),color='black',size=25)]
sls+=[plot(f(a)+df(a)*(x-a),a-1,a+1,color='red',ymin=0,ymax=2)+plot(f(x),a-1,a+1,ymin=0,ymax=2)+point((a,f(a)),color='black',size=25)]
sla=animate(sls,figsize=5)
show(sla,delay=50)
︡96e183d6-8ce7-4e6a-9fdd-7e24269447ff︡{"hide":"input"}︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/2383/tmp_76Zyh2.webm","show":true,"text":null,"url":"/a8975d68-235e-4f21-8635-2051d699f504/raw/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/2383/tmp_76Zyh2.webm"},"once":false}︡{"done":true}︡
︠e2312a02-3432-4472-bf04-ff49e3d6c34fi︠
%md
Now we'll start at $h=-1$ and let $h$ approach $0$.
︡83c7b0b0-0eb3-4195-bf9f-857780da78c9︡︡{"done":true,"md":"Now we'll start at $h=-1$ and let $h$ approach $0$."}
︠4356809f-5b5a-43fe-b4e0-be8429d3e111sia︠
%auto
%hide
a=0
f(x)=cos(x)
df(x)=derivative(f(x),x)
sls=[]
for b in [a-1,a-.95..a-.05]:
    sls += [plot(f(x),a-1,a+1,ymin=0,ymax=2)+plot(f(a)+(f(b)-f(a))/(b-a)*(x-a),a-1,a+1,color='green',ymin=0,ymax=2)+point((b,f(b)),color='black',size=25)]
sls+=[plot(f(a)+df(a)*(x-a),a-1,a+1,color='red',ymin=0,ymax=2)+plot(f(x),a-1,a+1,ymin=0,ymax=2)+point((a,f(a)),color='black',size=25)]
sla=animate(sls,figsize=5)
show(sla,delay=50)
︡7fb75de4-e392-471f-b9cc-846531290bf5︡{"hide":"input"}︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/2383/tmp_P2xet4.webm","show":true,"text":null,"url":"/a8975d68-235e-4f21-8635-2051d699f504/raw/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/2383/tmp_P2xet4.webm"},"once":false}︡{"done":true}︡
︠a386629e-3f7a-4b17-beb7-80520bdf8e62i︠
%md
Whether $h$ approaches $0$ from the left or right, the secant lines approach the tangent line.
︡338ad6e7-3c2b-4736-a2d5-a500e7f2a6e9︡︡{"done":true,"md":"Whether $h$ approaches $0$ from the left or right, the secant lines approach the tangent line."}
︠49c239ac-73a5-4576-9df4-565516c62f11i︠
%md
## Example 6 (your assignment is like this example)
Now let's find the equation of the line tangent to the graph of $f(x)=2\ln(x)$ at the point $(1,0)$.

First, we need the slope. As we saw above, the slope is $\displaystyle\lim_{h\to0}\frac{f(1+h)-f(1)}{h}$.
︡729d3683-d4cf-4129-8779-c44d2649b301︡︡{"done":true,"md":"## Example 6 (your assignment is like this example)\nNow let's find the equation of the line tangent to the graph of $f(x)=2\\ln(x)$ at the point $(1,0)$.\n\nFirst, we need the slope. As we saw above, the slope is $\\displaystyle\\lim_{h\\to0}\\frac{f(1+h)-f(1)}{h}$."}
︠c0b0d354-2b8a-42bf-83e5-d72bb6864754s︠
%var h
f(x)=2*ln(x)
limit((f(1+h)-f(1))/h,h=0)   #Don't forget parentheses around the numerator
︡d3a42ae5-8dc9-4e1b-a98e-a2730da6ca2a︡{"stdout":"2"}︡{"stdout":"\n"}︡{"done":true}︡
︠e97fd0f2-a468-4eb8-8984-dcfec0116dc9i︠
%md
So the slope is 2.

Now use the equation of a tangent line: $y=f(x_0)+m\cdot(x-x_0)$.
︡06abba31-f0df-4785-bd00-27045065f741︡︡{"done":true,"md":"So the slope is 2.\n\nNow use the equation of a tangent line: $y=f(x_0)+m\\cdot(x-x_0)$."}
︠708796ab-9401-43b3-8bbd-3d9a2d41066fs︠
TL(x)=f(1)+2*(x-1)    #I'll use TL for "tangent line"
show(TL(x))
︡2ebffe88-2212-4ea4-b75a-b79ad0c87f39︡{"html":"<div align='center'>$\\displaystyle 2 \\, x - 2$</div>"}︡{"done":true}︡
︠1c668c13-a4e6-476e-b061-3241b33b1c84i︠
%md
Now I'll plot the function and the tangent line.
︡c1fe1421-e4d0-4c79-b45d-8e0401e0e445︡︡{"done":true,"md":"Now I'll plot the function and the tangent line."}
︠aaeed276-82bb-4f72-ba14-64d65d11a3fes︠
plot(f(x),xmin=0,xmax=2)+plot(TL(x),xmin=0,xmax=2,color='red')+point((1,f(1)),color='black',pointsize=20)
︡d1c243a9-438e-4bae-97e3-c82bf2bb1f02︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/17109/tmp_5NfngB.svg","show":true,"text":null,"uuid":"6ae32786-1275-428f-8c02-bfec6e98c764"},"once":false}︡{"done":true}︡
︠0f98bead-1fe0-430e-bf8b-e91df43b3075i︠
%md
## Example 7

Now let's try to find the tangent line to $g(x)=|x|$ at $(0,0)$. We saw above that this function does not have the local linearity property here, so something should go wrong.

Let's try to calculate the slope: $\displaystyle m=\lim_{h\to 0}\frac{|0+h|-|0|}{h}$.

We find that the limit does not exist (Sage returns "und").
︡6391bcf4-6407-402c-a129-7fb7780a9fbe︡︡{"done":true,"md":"## Example 7\n\nNow let's try to find the tangent line to $g(x)=|x|$ at $(0,0)$. We saw above that this function does not have the local linearity property here, so something should go wrong.\n\nLet's try to calculate the slope: $\\displaystyle m=\\lim_{h\\to 0}\\frac{|0+h|-|0|}{h}$.\n\nWe find that the limit does not exist (Sage returns \"und\")."}
︠490c52c5-7ea8-449c-9461-ce73532c51b8s︠
%var h
g(x)=abs(x)
limit((g(0+h)-g(0))/h,h=0)
︡4a98bf28-22d1-416a-bcc7-81fd8dfb66c9︡{"stdout":"und\n"}︡{"done":true}︡
︠8b44d27b-a427-48a6-8455-907e5a924a9ci︠
%md
Notice that the one-sided limits exist but are not equal:

$$\displaystyle \lim_{h\to 0^+}\frac{|0+h|-|0|}{h}=\lim_{h\to 0^+}\frac{|h|}{h}=\lim_{h\to 0^+}\frac{h}{h}=1$$

$$\displaystyle \lim_{h\to 0^-}\frac{|0+h|-|0|}{h}=\lim_{h\to 0^-}\frac{|h|}{h}=\lim_{h\to 0^-}\frac{-h}{h}=-1$$

So the two-sided limit does not exist.
︡54cd6754-8455-4ff0-865d-a839b12fdfa1︡︡{"done":true,"md":"Notice that the one-sided limits exist but are not equal:\n\n$$\\displaystyle \\lim_{h\\to 0^+}\\frac{|0+h|-|0|}{h}=\\lim_{h\\to 0^+}\\frac{|h|}{h}=\\lim_{h\\to 0^+}\\frac{h}{h}=1$$\n\n$$\\displaystyle \\lim_{h\\to 0^-}\\frac{|0+h|-|0|}{h}=\\lim_{h\\to 0^-}\\frac{|h|}{h}=\\lim_{h\\to 0^-}\\frac{-h}{h}=-1$$\n\nSo the two-sided limit does not exist."}
︠0623cb42-4917-437f-aa39-f449b68bcafai︠
%md
If we try to find the slope at any point other than $x=0$, it works fine. Let's use $(-5,5)$.

$\displaystyle m=\lim_{h\to 0}\frac{|-5+h|-|-5|}{h}$
︡a6c556a2-1fbb-49ac-87e8-181447588161︡︡{"done":true,"md":"If we try to find the slope at any point other than $x=0$, it works fine. Let's use $(-5,5)$.\n\n$\\displaystyle m=\\lim_{h\\to 0}\\frac{|-5+h|-|-5|}{h}$"}
︠2b810859-e0b3-4752-9167-826ced39c1bes︠
%var h
limit((g(-5+h)-g(-5))/h,h=0)
︡c0a6bcae-bf9c-4cc4-a812-2dc0167f539e︡︡{"stdout":"-1\n","done":false}︡{"done":true}
︠879f6e54-9373-436e-8762-f0bf320e3fa4i︠
%md
Now we see the slope of the tangent line is $-1$, so the tangent line has equation $y=g(-5)+(-1)(x-(-5))=5-(x+5)$, or $y=-x$.
︡05718176-27df-4823-83e9-696c6fdabb7c︡︡{"done":true,"md":"Now we see the slope of the tangent line is $-1$, so the tangent line has equation $y=g(-5)+(-1)(x-(-5))=5-(x+5)$, or $y=-x$."}
︠7ed295be-eaf2-4ba8-9f64-a674aab83be3s︠
TL(x)=g(-5)+(-1)*(x-(-5))
show(TL(x))
︡31ed67bb-e261-4129-bd5a-e059c09333bb︡{"html":"<div align='center'>$\\displaystyle -x$</div>"}︡{"done":true}︡
︠a3660702-e371-4900-b89d-75d8014caca4i︠
%md
Now I'll plot the function and the tangent line.
︡97cf046c-9723-492a-b147-2fc4775fcde5︡︡{"done":true,"md":"Now I'll plot the function and the tangent line."}
︠30e56d7b-2f11-41ac-bb0d-f4872c2b66d5s︠
plot(g(x),xmin=-10,xmax=10)+plot(TL(x),xmin=-10,xmax=10,color='red',linestyle='--')+point((-5,g(-5)),color='black',pointsize=20)
︡a38c42f0-008b-4ac3-b78b-9cf2d8e88325︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/17109/tmp_1u95Kp.svg","show":true,"text":null,"uuid":"dd21f5c2-00be-41d0-9a83-5ba99316b587"},"once":false}︡{"done":true}︡
︠15d622ca-23d0-42e2-9e9a-9eda9835d7b0︠









