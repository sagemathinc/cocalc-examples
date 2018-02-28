︠a3a681dc-1d6e-42ae-b57e-3fd4095f1803i︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡336c77c2-c818-489c-9920-c02234ce5f80︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠6c9d3908-5a7c-4c94-9516-4f4ff34b01f9ai︠
%md
### Prerequisites:

* Intro to Sage
* Graphing and Solving Equations
︡a16e498f-79f8-4d96-aabf-9d6f39848ef2︡{"done":true,"md":"### Prerequisites:\n\n* Intro to Sage\n* Graphing and Solving Equations"}
︠144a6ac8-dddf-4b06-b7cc-529467b0bf24i︠
%md
# Limits

In this lab we will be exploring the concept of limits graphically, numerically, and computationally.

As you know from the lecture, a limit is the value approached by the outputs of a function as the inputs approach some given value.

## Example 1

Consider the function $\displaystyle f(x)=\frac{\sin(x)}{x}$. Notice that $f(0)$ is not defined, but we may be able to find $\displaystyle\lim_{x\to 0}f(x)$, so let's look at a graph.
︡1f3a1602-eb3a-418f-8f29-8ea2d8463e96︡{"md":"# Limits\n\nIn this lab we will be exploring the concept of limits graphically, numerically, and computationally.\n\nAs you know from the lecture, a limit is the value approached by the outputs of a function as the inputs approach some given value.\n\n## Example 1\n\nConsider the function $\\displaystyle f(x)=\\frac{\\sin(x)}{x}$. Notice that $f(0)$ is not defined, but we may be able to find $\\displaystyle\\lim_{x\\to 0}f(x)$, so let's look at a graph.\n"}︡
︠5beb97a6-9b12-45c3-8348-ba8cc742fff2s︠
plot(sin(x)/x)
︡99c76928-b48e-46bd-b14a-11c451c7f160︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/10520/tmp_lDefqM.svg","show":true,"text":null,"uuid":"58c99ef7-3cc5-46f6-b30b-0252ab030cff"},"once":false}︡{"done":true}︡
︠273d42ef-5560-472e-a28b-512ea5eb28aei︠
%md
From the graph, it appears that as $x\to 0$, $f(x)\to1$. Let's zoom in to confirm:
︡9f2ba643-c59d-4745-990c-8674eef0ff92︡{"md":"From the graph, it appears that as $x\\to 0$, $f(x)\\to1$. Let's zoom in to confirm:\n"}︡
︠7729b5b8-c814-43a1-a7c2-c63da3d71489s︠
plot(sin(x)/x,xmin=-.25,xmax=.25)
︡91dbeb4c-fbde-4899-9650-97072b73d550︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/10520/tmp_o64Cwo.svg","show":true,"text":null,"uuid":"d5767ec7-db7f-4e19-b5cb-ccec896e29b6"},"once":false}︡{"done":true}︡
︠d9cdbc19-2d26-4648-bdc2-b3f60afbc7a9i︠
%md
One more time:
︡3ae270db-a6a9-4b5f-9776-f38f113d44b0︡{"md":"One more time:\n"}︡
︠b91a72ec-dd91-49ab-9eaa-4795a16399f0s︠
plot(sin(x)/x,xmin=-.1,xmax=.1)
︡9efac710-4879-46e2-aca1-abd851d22024︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/10520/tmp_Iner2z.svg","show":true,"text":null,"uuid":"2e954aaf-7452-414f-9313-a579a3d3498f"},"once":false}︡{"done":true}︡
︠1f5ad02d-4ec5-481f-9b3e-c8d4eb659e3di︠
%md
Of course, a graph is no proof, but this is evidence that $\displaystyle\lim_{x\to0}f(x)=1$.
︡ff57e4d2-4d3a-4e80-8b26-12d2e0eac460︡{"done":true,"md":"Of course, a graph is no proof, but this is evidence that $\\displaystyle\\lim_{x\\to0}f(x)=1$."}
︠696c9bd5-fbd5-481c-b9be-d8e3bacefccai︠
%md
## Example 2

Find $\displaystyle\lim_{t\to 0}\frac{\sqrt{t^2+9}-3}{t^2}$ by zooming in on a graph.
︡0e5e4c3b-9433-496c-8d75-99bc820f51e9︡{"done":true,"md":"## Example 2\n\nFind $\\displaystyle\\lim_{t\\to 0}\\frac{\\sqrt{t^2+9}-3}{t^2}$ by zooming in on a graph."}
︠50bcb75d-bcee-41b3-af86-c9f76e8038d8s︠
%var t
plot((sqrt(t^2+9)-3)/t^2)
︡af2953f8-07e0-4bf2-8083-d3b2cae495eb︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/10520/tmp_HEBUxC.svg","show":true,"text":null,"uuid":"bab42750-1ae0-4ba3-93d7-04b88c1d03c8"},"once":false}︡{"done":true}︡
︠c9a26cfb-5c9c-4d8e-a12c-693c1d950019i︠
%md
It looks like the limit is just above $1.66\times 10^{-1}=0.166$.

Let's zoom in:
︡3795fad5-b2fe-490e-bd02-c6b864859461︡{"md":"It looks like the limit is just above $1.66\\times 10^{-1}=0.166$.\n\nLet's zoom in:\n"}︡
︠678f41b6-7f38-4757-b7e5-bcacff586cafs︠
plot((sqrt(t^2+9)-3)/t^2,xmin=-.1,xmax=.1)
︡3596ef67-c9c2-4f70-9566-469f686c06fc︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/10520/tmp_3flcuL.svg","show":true,"text":null,"uuid":"4ca611aa-1f22-4a43-859a-a388dd3ec9dd"},"once":false}︡{"done":true}︡
︠fe849d83-988e-4564-8276-574d438031f3s︠
plot((sqrt(t^2+9)-3)/t^2,xmin=-.01,xmax=.01)
︡7be24378-88d6-4976-8efd-be64f86c16d7︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/10520/tmp_Qo0E_r.svg","show":true,"text":null,"uuid":"01b8f757-cee1-45e5-9a6b-cbacbd75baaf"},"once":false}︡{"done":true}︡
︠3b35657c-9189-4a64-936a-c07e2cd98e21i︠
%md
It looks like 0.1667 is our best estimate for the limit.
︡bd42158b-5d47-46df-b941-a4ac0270907f︡{"md":"It looks like 0.1667 is our best estimate for the limit.\n"}︡
︠7415092a-22e8-4d4d-b4da-1717a1b2fb25i︠
%md
## Example 3

Find $\displaystyle\lim_{x \to 4}\frac{\sqrt{x}-2}{x-4}$

We want to see what happens around $x=4$, so we need to change the window.
︡a2c70b80-1bfa-48d2-bdbf-0323e41e645b︡{"md":"## Example 3\n\nFind $\\displaystyle\\lim_{x \\to 4}\\frac{\\sqrt{x}-2}{x-4}$\n\nWe want to see what happens around $x=4$, so we need to change the window.\n"}︡
︠0db54bf4-1703-49fb-91b8-daff667e689ds︠
f(x)=(sqrt(x)-2)/(x-4)
plot(f,xmin=3,xmax=5)
︡b7428ae6-931e-4d5d-8f48-7a846dc581ee︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/10520/tmp_LV1JJG.svg","show":true,"text":null,"uuid":"520f21fe-5fe3-4f74-a85e-c0594961e09f"},"once":false}︡{"done":true}︡
︠1def3d5c-fa93-4167-98f3-4dc934237f4fi︠
%md
Let's zoom in.
︡dcee652a-5619-45b4-981d-0c203ed4d5f2︡{"md":"Let's zoom in.\n"}︡
︠c3ff9976-2e6f-4db1-8c18-10fa8572b294s︠
plot(f,xmin=3.9,xmax=4.1)
︡ecf06ef9-3392-4df3-931e-26814cfa9449︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/10520/tmp_ft5qdy.svg","show":true,"text":null,"uuid":"5efc7688-7697-45dc-b38e-937b1282c75e"},"once":false}︡{"done":true}︡
︠49372b56-bc74-4f8d-ab33-66b866fe9cfai︠
%md
It looks like the limit is 0.25.
︡84ed4fd7-cb94-45c6-9712-66a762b16bc7︡{"md":"It looks like the limit is 0.25.\n"}︡
︠cb66307b-7d4a-4c2f-bfa8-eaf2297d8a72i︠
%md
## Finding Limits Numerically

Now let's consider limits numerically. We want to see what happens to $f(x)$ when we make $x$ close to something. Since it may make a difference whether we approach from the left or right, we should estimate both.

## Example 4

Estimate $\displaystyle\lim_{x\to0}\frac{\sin(x)}{x}$.

To do this we'll need to estimate $\displaystyle\lim_{x\to0^+}\frac{\sin(x)}{x}$ and $\displaystyle\lim_{x\to0^-}\frac{\sin(x)}{x}$.

First, we'll do the right limit. So I am going to calculate $f(x)$ for values of $x$ close to $0$, but greater than $0$. I'll use $0.1$, $0.01$, $0.001$, etc. for my inputs.
︡e17628f5-d2d2-4ef9-b968-6bf6fabaf393︡{"md":"## Finding Limits Numerically\n\nNow let's consider limits numerically. We want to see what happens to $f(x)$ when we make $x$ close to something. Since it may make a difference whether we approach from the left or right, we should estimate both.\n\n## Example 4\n\nEstimate $\\displaystyle\\lim_{x\\to0}\\frac{\\sin(x)}{x}$.\n\nTo do this we'll need to estimate $\\displaystyle\\lim_{x\\to0^+}\\frac{\\sin(x)}{x}$ and $\\displaystyle\\lim_{x\\to0^-}\\frac{\\sin(x)}{x}$.\n\nFirst, we'll do the right limit. So I am going to calculate $f(x)$ for values of $x$ close to $0$, but greater than $0$. I'll use $0.1$, $0.01$, $0.001$, etc. for my inputs.\n"}︡
︠62a9bbe3-639b-4733-9f3f-02c32be8da16︠
f(x)=sin(x)/x
f(.1)
f(.01)
f(.001)
f(.0001)
f(.00001)
f(.000001)
f(.0000001)
︡c724460a-29c3-488c-834a-f01d91540612︡{"stdout":"0.998334166468282\n"}︡{"stdout":"0.999983333416666\n"}︡{"stdout":"0.999999833333342\n"}︡{"stdout":"0.999999998333333\n"}︡{"stdout":"0.999999999983333\n"}︡{"stdout":"0.999999999999833\n"}︡{"stdout":"0.999999999999998\n"}︡
︠a4e5c7e4-5110-43b0-9d4d-3e0ed7998717i︠
%md
Notice that the outputs get closer and closer to 1, so it looks like $\displaystyle\lim_{x\to0^+}\frac{\sin(x)}{x}=1$

Now let's do the left limit. I need values of $x$ close to $0$ but less than $0$, so I'll use $-0.1$, $-0.01$, $-0.001$, etc.
︡5c2fefd2-c8a9-4aab-93cf-048167acc4dd︡{"md":"Notice that the outputs get closer and closer to 1, so it looks like $\\displaystyle\\lim_{x\\to0^+}\\frac{\\sin(x)}{x}=1$\n\nNow let's do the left limit. I need values of $x$ close to $0$ but less than $0$, so I'll use $-0.1$, $-0.01$, $-0.001$, etc.\n"}︡
︠8ac7db86-abe1-42e4-8aca-af918719c27e︠
f(-.1)
f(-.01)
f(-.001)
f(-.0001)
f(-.00001)
f(-.000001)
f(-.0000001)
︡8dde3941-5bd2-426a-a4df-387ca636e44d︡{"stdout":"0.998334166468282\n"}︡{"stdout":"0.999983333416666\n"}︡{"stdout":"0.999999833333342\n"}︡{"stdout":"0.999999998333333\n"}︡{"stdout":"0.999999999983333\n"}︡{"stdout":"0.999999999999833\n"}︡{"stdout":"0.999999999999998\n"}︡
︠3782e684-926d-4ef8-8089-0fd695d12928i︠
%md
Once again the outputs get closer and closer to 1, so it looks like $\displaystyle\lim_{x\to0^-}\frac{\sin(x)}{x}=1$.

<br>

So I conclude the two-side limit is also $1$: $\quad\displaystyle\lim_{x\to0}\frac{\sin(x)}{x}=1$.

[Note: This is not a proof that the limit is 1, it is simply numerical evidence.]
︡34a552cb-99c1-443b-818b-65dfb8af0cf3︡{"md":"Once again the outputs get closer and closer to 1, so it looks like $\\displaystyle\\lim_{x\\to0^-}\\frac{\\sin(x)}{x}=1$.\n\n<br>\n\nSo I conclude the two-side limit is also $1$: $\\quad\\displaystyle\\lim_{x\\to0}\\frac{\\sin(x)}{x}=1$.\n\n[Note: This is not a proof that the limit is 1, it is simply numerical evidence.]\n"}︡
︠f3b47b3b-300d-4ac7-995c-96a9c0cfee7ei︠
%md
## Example 5

Estimate $\displaystyle\lim_{x\to4}\frac{x^2-16}{x-4}$.

First let's estimate the limit from the right. I need inputs close to $4$ but bigger than $4$. I'll use $4.1$, $4.01$, $4.001$, etc.
︡a690cfaa-5e02-4827-a261-d73f0a1c11db︡{"md":"## Example 5\n\nEstimate $\\displaystyle\\lim_{x\\to4}\\frac{x^2-16}{x-4}$.\n\nFirst let's estimate the limit from the right. I need inputs close to $4$ but bigger than $4$. I'll use $4.1$, $4.01$, $4.001$, etc.\n"}︡
︠71f852b7-4a96-465f-8ac2-83088cb5f43c︠
f(x)=(x^2-16)/(x-4)
f(4.1)
f(4.01)
f(4.001)
f(4.0001)
f(4.00001)
f(4.000001)
f(4.0000001)
︡c39711ba-146e-47df-9c4b-c13e29567d71︡{"stdout":"8.10000000000002\n"}︡{"stdout":"8.00999999999998\n"}︡{"stdout":"8.00100000000103\n"}︡{"stdout":"8.00010000000828\n"}︡{"stdout":"8.00000999982319\n"}︡{"stdout":"8.00000099831254\n"}︡{"stdout":"8.00000010658141\n"}︡
︠f6aa670e-ddcc-47f1-a244-7830c4c69828i︠
%md
The outputs get closer and closer to $8$, so it looks like the right limit is $8$.

<br>
Now let's look at the limit from the left. Now I need numbers less than $4$, so I'll use $3.9$, $3.99$, $3.999$, etc.
︡76d9805b-88b1-47f3-99cc-48e6cabb0b51︡{"done":true,"md":"The outputs get closer and closer to $8$, so it looks like the right limit is $8$.\n\n<br>\nNow let's look at the limit from the left. Now I need numbers less than $4$, so I'll use $3.9$, $3.99$, $3.999$, etc."}
︠3b2eb8ee-211a-48a0-b85f-2c9aaf3525d1︠
f(3.9)
f(3.99)
f(3.999)
f(3.9999)
f(3.99999)
f(3.999999)
f(3.9999999)
︡56501876-e511-4f95-8363-685a49a15af3︡{"stdout":"7.90000000000000\n"}︡{"stdout":"7.99000000000002\n"}︡{"stdout":"7.99900000000075\n"}︡{"stdout":"7.99989999999173\n"}︡{"stdout":"7.99998999999917\n"}︡{"stdout":"7.99999899991110\n"}︡{"stdout":"7.99999989341859\n"}︡
︠a93b516b-81df-4489-b652-703fd4685a27i︠
%md
Once again, the outputs get closer and closer to $8$, so it looks like the left limit is also $8$. So I conclude $\displaystyle\lim_{x\to4}\frac{x^2-16}{x-4}=8$.
︡e89282a2-a5af-49a1-8072-978b3abc8c19︡{"md":"Once again, the outputs get closer and closer to $8$, so it looks like the left limit is also $8$. So I conclude $\\displaystyle\\lim_{x\\to4}\\frac{x^2-16}{x-4}=8$.\n"}︡
︠b722323a-1924-427c-8764-20e45e359505i︠
%md
## Example 6

Estimate $\displaystyle\lim_{x\to-1}\frac{x^9+1}{x+1}$.

Once again, we'll look at the limit from the left and right.

First, approximate $\displaystyle\lim_{x\to-1^+}\frac{x^9+1}{x+1}$.

I want values slightly bigger than $-1$ that approach $-1$. I'll use $-0.9$, $-0.99$, $-0.999$, etc. [Note that these values are bigger than $-1$.]
︡0a8ce50f-4a9c-4776-ae38-c8ae68ad966b︡{"md":"## Example 6\n\nEstimate $\\displaystyle\\lim_{x\\to-1}\\frac{x^9+1}{x+1}$.\n\nOnce again, we'll look at the limit from the left and right.\n\nFirst, approximate $\\displaystyle\\lim_{x\\to-1^+}\\frac{x^9+1}{x+1}$.\n\nI want values slightly bigger than $-1$ that approach $-1$. I'll use $-0.9$, $-0.99$, $-0.999$, etc. [Note that these values are bigger than $-1$.]\n"}︡
︠04a0bd34-8213-4d83-9606-af6f8b631de2︠
f(x)=(x^9+1)/(x+1)
f(-.9)
f(-.99)
f(-.999)
f(-.9999)
f(-.99999)
f(-.999999)
f(-.9999999)
︡026ace06-cef0-480a-811b-fcbc11054224︡{"stdout":"6.12579511000000\n"}︡{"stdout":"8.64827525163591\n"}︡{"stdout":"8.96408387412594\n"}︡{"stdout":"8.99640083987451\n"}︡{"stdout":"8.99964000839680\n"}︡{"stdout":"8.99996400013025\n"}︡{"stdout":"8.99999639954673\n"}︡
︠a78d6c60-7ee4-4845-9e94-a5fe01a38bf5i︠
%md
The outputs get closer and closer to $9$, so it looks like the right limit is $9$.
︡30f44584-195c-4f8c-a990-c6a9fc64d141︡{"md":"The outputs get closer and closer to $9$, so it looks like the right limit is $9$.\n"}︡
︠db101659-663f-46cb-ac98-9d87df7f51aci︠
%md
Now approximate $\displaystyle\lim_{x\to-1^-}\frac{x^9+1}{x+1}$. I need inputs close to $-1$ and less than $-1$. I'll use $-1.1$, $-1.01$, $-1.001$, etc. [Note that these values are less than $-1$.]
︡067bc4a1-0f6c-4152-bbe4-caa360fbd573︡{"md":"Now approximate $\\displaystyle\\lim_{x\\to-1^-}\\frac{x^9+1}{x+1}$. I need inputs close to $-1$ and less than $-1$. I'll use $-1.1$, $-1.01$, $-1.001$, etc. [Note that these values are less than $-1$.]\n"}︡
︠f9af8a77-b457-4e0e-a3fe-1e06991d92ad︠
f(x)=(x^9+1)/(x+1)
f(-1.1)
f(-1.01)
f(-1.001)
f(-1.0001)
f(-1.00001)
f(-1.000001)
f(-1.0000001)
︡bfa66674-220a-4969-beb1-9eeb0f3a206f︡{"stdout":"13.5794769100000\n"}︡{"stdout":"9.36852726843608\n"}︡{"stdout":"9.03608412612599\n"}︡{"stdout":"9.00360084012607\n"}︡{"stdout":"9.00036000840086\n"}︡{"stdout":"9.00003600009180\n"}︡{"stdout":"9.00000359934304\n"}︡
︠3dcff271-0da4-49f2-b4cb-9a0d09dcb7dai︠
%md
Once again, the outputs get closer and closer to $9$, so it looks like the left limit is also $9$.

<br>
Therefore, I conclude that $\displaystyle\lim_{x\to-1}\frac{x^9+1}{x+1}=9$ (you could confirm this using algebra).
︡7a10648b-9eb9-4ebe-9768-98fb9c3ed232︡{"done":true,"md":"Once again, the outputs get closer and closer to $9$, so it looks like the left limit is also $9$.\n\n<br>\nTherefore, I conclude that $\\displaystyle\\lim_{x\\to-1}\\frac{x^9+1}{x+1}=9$ (you could confirm this using algebra)."}
︠891bdf81-75db-4ef4-b860-9f28bc5560e1i︠
%md
## Computing Limits Using Sage

You can use the limit command to compute limits in Sage: $\displaystyle\lim_{x\to a}f(x)=$ limit(f(x),x=a)

## Example 7

First, let's try $\displaystyle\lim_{x\to0}\frac{\sin(x)}{x}$.
︡3160a79a-72a0-4d40-8902-b917599a7829︡{"md":"## Computing Limits Using Sage\n\nYou can use the limit command to compute limits in Sage: $\\displaystyle\\lim_{x\\to a}f(x)=$ limit(f(x),x=a)\n\n## Example 7\n\nFirst, let's try $\\displaystyle\\lim_{x\\to0}\\frac{\\sin(x)}{x}$.\n"}︡
︠98d7c9d6-7d4c-43c8-8a68-5ea9a9ffc58b︠
limit(sin(x)/x,x=0)
︡3eea97e9-0ad5-45b6-9996-4145c9dc7a3a︡{"stdout":"1\n"}︡
︠4c4f03c4-7133-47c0-af57-5d3bef828bb3i︠
%md
You can also use a function name in the limit command.
︡1c68bce8-0080-48a0-94bf-1247881aeb6c︡{"md":"You can also use a function name in the limit command.\n"}︡
︠fa14bf11-4cc1-4371-8e5a-00d86948c448︠
f(x)=sin(x)/x
limit(f(x),x=0)
︡ae39d3d5-91ad-48ed-930f-42f9ff63b3e0︡{"stdout":"1\n"}︡
︠4be377b1-4a5c-471f-a33c-e4322af5841ei︠
%md
## Example 8

Now let's try $\displaystyle\lim_{x\to -1}\frac{x^9+1}{x+1}$.
︡7921f404-f145-4ff5-99f1-89ec4920503f︡{"md":"## Example 8\n\nNow let's try $\\displaystyle\\lim_{x\\to -1}\\frac{x^9+1}{x+1}$.\n"}︡
︠348dcd1a-0e98-4346-a34a-2609611b10be︠
limit((x^9+1)/(x+1),x=-1)
︡e2e2112d-8b7e-42f6-923f-f39a0de85dd0︡{"stdout":"9\n"}︡
︠838f89c4-0ca0-483a-86fe-40c337335db0i︠
%md
We can also compute limits at $\pm\infty$ (end behavior).

## Example 9

Find $\displaystyle\lim_{x\to\infty}\left(\sqrt{x^2+x}-\sqrt{x^2+1}\right)$.
︡f0354647-e1ce-46a1-a61c-bf21e46b7011︡{"md":"We can also compute limits at $\\pm\\infty$ (end behavior).\n\n## Example 9\n\nFind $\\displaystyle\\lim_{x\\to\\infty}\\left(\\sqrt{x^2+x}-\\sqrt{x^2+1}\\right)$.\n"}︡
︠8a66c951-eb8c-47b7-bfc6-4232b7b2b683︠
limit(sqrt(x^2+x)-sqrt(x^2+1),x=+Infinity)
︡bf231855-458e-4357-96ee-d932adece37e︡{"stdout":"1/2\n"}︡
︠62fa9199-5d34-4964-8ab7-a9be4d9cd7f1i︠
%md
Here's a graph that confirms $\displaystyle\lim_{x\to\infty}\left(\sqrt{x^2+x}-\sqrt{x^2+1}\right)=\frac{1}{2}$.
︡32c92c72-49fc-4016-ad79-30f710d6e4cf︡{"md":"Here's a graph that confirms $\\displaystyle\\lim_{x\\to\\infty}\\left(\\sqrt{x^2+x}-\\sqrt{x^2+1}\\right)=\\frac{1}{2}$.\n"}︡
︠5ac67e5e-f81b-4b79-99d2-28955b15ed8cs︠
plot(sqrt(x^2+x)-sqrt(x^2+1),xmin=0,xmax=100)+plot(.5,xmin=0,xmax=100,color='red',linestyle='dotted',ymin=-.2,ymax=.6)
︡da78f445-a977-4e04-933c-49443e2d1fe2︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/10520/tmp_jW1k3t.svg","show":true,"text":null,"uuid":"fa2bac07-5046-411b-930b-eebb76c15fd2"},"once":false}︡{"done":true}︡
︠a270d537-4cdb-49d5-8923-93ee9447f715i︠
%md
## Example 10

Find $\displaystyle\lim_{x\to-\infty}\frac{\sin(x)}{x}$.
︡4a5282f3-b5e9-4c5a-9583-d6bf5dc6fad6︡{"md":"## Example 10\n\nFind $\\displaystyle\\lim_{x\\to-\\infty}\\frac{\\sin(x)}{x}$.\n"}︡
︠0a7633fa-cae0-4c76-ad86-a609fee9d08f︠
limit(sin(x)/x,x=-Infinity)
︡8856cdee-f471-42a0-a92c-e150d941a2ed︡{"stdout":"0\n"}︡
︠88bc0d9f-8cec-480f-946c-c492138f1a0as︠
plot(sin(x)/x,xmin=-50,xmax=0)
︡cdc45de2-14e4-4d4e-9537-53274348e33d︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/10520/tmp_gL3OCE.svg","show":true,"text":null,"uuid":"0158cf6c-45dd-4558-96ce-f9285225638a"},"once":false}︡{"done":true}︡
︠12de80da-2811-4e52-a41d-777917b65eefi︠
%md
We have to be careful when we do two-sided limits, because Sage may lead us astray.

## Example 11

Consider $\displaystyle\lim_{x\to0}\frac{1}{x}$. We know from the graph that the left and right limits are different (one is positive infinity and the other is negative infinity). But look at what Sage tells us:
︡1ae1815d-c704-468d-905b-4559ee22b5db︡{"md":"We have to be careful when we do two-sided limits, because Sage may lead us astray.\n\n## Example 11\n\nConsider $\\displaystyle\\lim_{x\\to0}\\frac{1}{x}$. We know from the graph that the left and right limits are different (one is positive infinity and the other is negative infinity). But look at what Sage tells us:\n"}︡
︠5044753a-208c-4487-877b-b62f762e715f︠
limit(1/x,x=0)
︡ce0f9d1f-222e-4aca-a03d-230f8f966a2f︡{"stdout":"Infinity\n"}︡
︠f0ad1f7d-6dcc-4d86-bdd4-f6a1e97a39dcs︠
plot(1/x,xmin=-5,xmax=5,ymin=-25, ymax=25)
︡1d11e53b-df3c-429f-b53f-aafe01847168︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/10520/tmp_K5lEU6.svg","show":true,"text":null,"uuid":"b2fbd7fb-47ef-4b09-bee3-369f26552259"},"once":false}︡{"done":true}︡
︠9081afcd-db14-4c6e-a52d-2126e98d51f6i︠
%md
In this context, 'Infinity' refers to complex infinity, in which case postive and negative are not distinguished.

It's a good idea to check your answers with a quick graph. Then you won't have to worry about this.
︡5adcc202-0254-4589-bd0a-edecda5ef223︡︡{"done":true,"md":"In this context, 'Infinity' refers to complex infinity, in which case postive and negative are not distinguished.\n\nIt's a good idea to check your answers with a quick graph. Then you won't have to worry about this."}
︠068dfab9-eeae-41e5-8b19-07f983b390eei︠
%md
## One-Sided Limits

To do one-sided limits in Sage, simply add dir='+' or dir='-' to the limit command.
︡40abcdef-9c82-4978-97ab-bbe0d3605168︡︡{"done":true,"md":"## One-Sided Limits\n\nTo do one-sided limits in Sage, simply add dir='+' or dir='-' to the limit command."}
︠28cbe96d-d326-4830-b787-ebdc2aad98fa︠
limit(1/x,x=0,dir='+')
︡28e89c45-b2e9-4697-ba09-9d824ae9534c︡{"stdout":"+Infinity\n"}︡
︠0103407e-e70c-41c7-b87f-6738c548d042︠
limit(1/x,x=0,dir='-')
︡04e7f91c-9ab7-48b6-89e2-a295bce5570c︡{"stdout":"-Infinity\n"}︡
︠8fc07034-f5ef-4697-8454-3a832cdf00fei︠
%md
## Example 12

Here is an example of a piecewise function: $$f(x)=\begin{cases} x^2, & \text{if } -5\le x\le 2\\ -2x+5, & \text{if } 2<x<3 \\ \frac{1}{10}x^3, & \text{if } 3\le x\le 5\end{cases}$$

Sage is able to graph a piecewise function, although it inserts some extra horizontal line segments that shouldn't really be there.
︡1fa4d95a-a96b-441e-852a-361750902b17︡{"done":true,"md":"## Example 12\n\nHere is an example of a piecewise function: $$f(x)=\\begin{cases} x^2, & \\text{if } -5\\le x\\le 2\\\\ -2x+5, & \\text{if } 2<x<3 \\\\ \\frac{1}{10}x^3, & \\text{if } 3\\le x\\le 5\\end{cases}$$\n\nSage is able to graph a piecewise function, although it inserts some extra horizontal line segments that shouldn't really be there."}
︠a91279ff-cd97-42eb-be11-2dc0674f1bd7s︠
f=piecewise([[(-5,2),x^2],[(2,3),-2*x+5],[(3,5),x^3/10]])
plot(f,xmin=-5,xmax=5)
︡c41f7cb6-bc56-4633-a174-9ed276f13758︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/2102/tmp_6ERk95.svg","show":true,"text":null,"uuid":"0e9a8946-8d12-4278-a0aa-0a440d7a3d12"},"once":false}︡{"done":true}︡
︠8f4144f3-392b-448b-bf47-31851ed43c89i︠
%md
We can see from the graph that $\displaystyle\lim_{x\to2}f(x)$ does not exist. We may want to find $\displaystyle\lim_{x\to2^+}f(x)$ and $\displaystyle\lim_{x\to2^-}f(x)$, but Sage's limit command is not yet able to handle piecewise functions. Instead, we'll have to figure out which formula to give the limit. In this case, $\displaystyle\lim_{x\to2^+}f(x)=\lim_{x\to2^+}(-2x+5)=1$ and $\displaystyle\lim_{x\to2^-}f(x)=\lim_{x\to2^-}x^2=4$.
︡1631fa70-6002-4c3e-8112-fe1b16ed323d︡{"md":"We can see from the graph that $\\displaystyle\\lim_{x\\to2}f(x)$ does not exist. We may want to find $\\displaystyle\\lim_{x\\to2^+}f(x)$ and $\\displaystyle\\lim_{x\\to2^-}f(x)$, but Sage's limit command is not yet able to handle piecewise functions. Instead, we'll have to figure out which formula to give the limit. In this case, $\\displaystyle\\lim_{x\\to2^+}f(x)=\\lim_{x\\to2^+}(-2x+5)=1$ and $\\displaystyle\\lim_{x\\to2^-}f(x)=\\lim_{x\\to2^-}x^2=4$.\n"}︡
︠578d0761-0308-49d6-a32d-2b5f13d6c822︠
limit(-2*x+5,x=2,dir='+')
limit(x^2,x=2,dir='-')
︡8823aea5-be95-40e1-ba3f-3bc3f9db9490︡{"stdout":"1\n"}︡{"stdout":"4\n"}︡
︠0e8162b3-6cc3-47e2-8e96-ae138fca5924i︠
%md
## Limits Involving More Than One Variable

Sage can also evaluate limits involving more than one variable. Don't forget to declare all variables other than $x$.

## Example 13

Suppose $f(x)=x^2$. Evaluate $\displaystyle\lim_{h\to 0}\frac{f(x+h)-f(x)}{h}$.
︡36e2bd66-6c1f-46e4-8d6e-cf07144d88d7︡{"md":"## Limits Involving More Than One Variable\n\nSage can also evaluate limits involving more than one variable. Don't forget to declare all variables other than $x$.\n\n## Example 13\n\nSuppose $f(x)=x^2$. Evaluate $\\displaystyle\\lim_{h\\to 0}\\frac{f(x+h)-f(x)}{h}$.\n"}︡
︠f675675f-6309-404b-a315-d6681be38532︠
%var h
f(x)=x^2
limit((f(x+h)-f(x))/h,h=0)
︡b2a7e08f-3b10-4aa6-8d80-2ef8fb8e2e06︡{"stdout":"2*x"}︡{"stdout":"\n"}︡
︠129d8824-5756-4084-9d5b-67a950ffdbf2i︠
%md
## Putting It All Together

Here is an example that uses the graphical, numerical, and computational approaches to evaluate a limit.

## Example 14

Find $\displaystyle\lim_{x\to0}\sin\left(\frac{1}{x}\right)$.
︡6db7f792-642a-49c4-b2f0-5483a71d9d2c︡{"md":"## Putting It All Together\n\nHere is an example that uses the graphical, numerical, and computational approaches to evaluate a limit.\n\n## Example 14\n\nFind $\\displaystyle\\lim_{x\\to0}\\sin\\left(\\frac{1}{x}\\right)$.\n"}︡
︠7bd781fc-e792-4a08-ab34-d7e54f0e1f3es︠
plot(sin(1/x))
︡ed225033-261e-4e88-9086-294940eef269︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/10520/tmp_DfNhBJ.svg","show":true,"text":null,"uuid":"885a1101-69ef-46a7-9754-07980c2aaf9f"},"once":false}︡{"done":true}︡
︠191b0372-9c5a-44d4-8643-017d4378a283i︠
%md
Let's zoom in.
︡2216c798-e7ae-4e5f-a793-d585fb346836︡{"md":"Let's zoom in.\n"}︡
︠6fe88489-d0bf-4d67-8834-fb4815989e7as︠
plot(sin(1/x),xmin=-.1,xmax=.1)
︡4bf3d03d-f2de-44ea-9b1d-d880e22a5c26︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/10520/tmp_P6PUZ7.svg","show":true,"text":null,"uuid":"0bfa76a3-4728-47e0-8b34-90a5c516a76c"},"once":false}︡{"done":true}︡
︠e1b7467b-9c32-46b9-b8f4-fe08cfaeda11i︠
%md
From the graph, we can see that there is a lot of oscillation near $0$. Let's see what happens numerically.

We'll start with input values that approach $0$ from the right.
︡dc88d854-2b7a-4c75-b22e-fd70d619a26e︡{"md":"From the graph, we can see that there is a lot of oscillation near $0$. Let's see what happens numerically.\n\nWe'll start with input values that approach $0$ from the right.\n"}︡
︠22f55965-d0c3-4e6e-a59c-3cdaa7ac8e32︠
f(x)=sin(1/x)
f(0.1)
f(0.01)
f(0.001)
f(0.0001)
f(0.00001)
f(0.000001)
f(0.0000001)
︡eb021cb1-1084-4267-874b-7b023662e9eb︡{"stdout":"-0.544021110889370\n"}︡{"stdout":"-0.506365641109759\n"}︡{"stdout":"0.826879540532003\n"}︡{"stdout":"-0.305614388888252\n"}︡{"stdout":"0.0357487979865591\n"}︡{"stdout":"-0.349993502171293\n"}︡{"stdout":"0.420547793190783\n"}︡
︠b215cc3f-edfa-4322-8091-47c6253da1dci︠
%md
These values do not appear to approach anything. Notice how they jump between positive and negative, and the magnitudes get bigger and smaller.

Now let's consider input values approaching $0$ from the left.
︡0095ea0d-aaa3-4fbc-a373-e4eb48b7cd37︡{"md":"These values do not appear to approach anything. Notice how they jump between positive and negative, and the magnitudes get bigger and smaller.\n\nNow let's consider input values approaching $0$ from the left.\n"}︡
︠ff8ee64c-5b45-4263-8d9b-485a03609ed2︠
f(-0.1)
f(-0.01)
f(-0.001)
f(-0.0001)
f(-0.00001)
f(-0.000001)
f(-0.0000001)
︡f8fc9fea-757f-4dd3-9a27-6e806b8c1397︡{"stdout":"0.544021110889370\n"}︡{"stdout":"0.506365641109759\n"}︡{"stdout":"-0.826879540532003\n"}︡{"stdout":"0.305614388888252\n"}︡{"stdout":"-0.0357487979865591\n"}︡{"stdout":"0.349993502171293\n"}︡{"stdout":"-0.420547793190783\n"}︡
︠0ad03394-b44a-4c29-b25d-af80b556ee25i︠
%md
Once again, it does not appear that the outputs are approaching anything.

Let's see what Sage tells us.
︡1b6f7ee2-c2b2-4d33-b055-b27a40aa0c39︡{"md":"Once again, it does not appear that the outputs are approaching anything.\n\nLet's see what Sage tells us.\n"}︡
︠cd146f79-4837-4a1a-b1f1-0f2a2e172495︠
limit(sin(1/x),x=0,dir='+')
limit(sin(1/x),x=0,dir='-')
limit(sin(1/x),x=0)
︡dd23c0bb-0dcc-4e3d-a91f-7295357a5d4b︡{"stdout":"ind\n"}︡{"stdout":"ind\n"}︡{"stdout":"ind\n"}︡
︠4d4a0538-c117-414d-9919-d145db2b43bai︠
%md
Whether we try a one- or two-sided limit, Sage gives the same answer: "ind." This stands for "indefinite but bounded," but for us this means "does not exist."

This confirms what we saw on the graph and from the numbers. This should make sense algebraically as well. As $x$ approaches $0$, $\frac{1}{x}$ approaches $\pm \infty$. As the magnitude of the input gets larger, the sine function continues to oscillate between $1$ and $-1$.
︡8272dfb8-43d5-4408-93b3-e376c7f75fd3︡︡{"done":true,"md":"Whether we try a one- or two-sided limit, Sage gives the same answer: \"ind.\" This stands for \"indefinite but bounded,\" but for us this means \"does not exist.\"\n\nThis confirms what we saw on the graph and from the numbers. This should make sense algebraically as well. As $x$ approaches $0$, $\\frac{1}{x}$ approaches $\\pm \\infty$. As the magnitude of the input gets larger, the sine function continues to oscillate between $1$ and $-1$."}
︠5d679d2f-dab8-4ae4-bfae-98014795b521i︠
%md
## Limits that do not exist

There are several different outputs in Sage that are possible when a limit does not exist.

1. und = "undefined" (this happens when the left and right limits exist but do not agree)

2. ind = "indefinite but bounded" (this happens when you have oscillation, like in the example above)

3. Infinity = "complex infinity" (the left limit is $\infty$ and the right limit is $-\infty$, or vice versa)

4. +Infinity = $\infty$ (the function increases without bound)

5. -Infinity = $-\infty$ (the function decreases without bound)

Here are examples of each:
︡e75a4978-22c5-4dac-9303-bd481b2d890b︡︡{"done":true,"md":"## Limits that do not exist\n\nThere are several different outputs in Sage that are possible when a limit does not exist.\n\n1. und = \"undefined\" (this happens when the left and right limits exist but do not agree)\n\n2. ind = \"indefinite but bounded\" (this happens when you have oscillation, like in the example above)\n\n3. Infinity = \"complex infinity\" (the left limit is $\\infty$ and the right limit is $-\\infty$, or vice versa)\n\n4. +Infinity = $\\infty$ (the function increases without bound)\n\n5. -Infinity = $-\\infty$ (the function decreases without bound)\n\nHere are examples of each:"}
︠52a76fd9-4ed3-4c65-8a37-ecc4f4566163︠
limit(x/abs(x),x=0)
︡82ae704f-af3c-42c4-9e9e-f0dd27955a0b︡︡{"stdout":"und","done":false}︡{"stdout":"\n","done":false}︡{"done":true}
︠0b6de0dc-0ee0-465f-bf75-c38e008ee176︠
limit(sin(1/x),x=0)
︡489796cd-d9b7-4646-bab8-84ae23fcfea4︡︡{"stdout":"ind\n","done":false}︡{"done":true}
︠f1591a0c-9d6c-4a93-89b2-f0e66b4937b2︠
limit(1/x,x=0)
︡e8df26b2-9dd8-4988-ac5d-8b92d0ff9a47︡︡{"stdout":"Infinity\n","done":false}︡{"done":true}
︠4c828e5b-08cf-4137-bfa9-bfd435a73e6f︠
limit(1/x^2,x=0)
︡122ca392-b4a6-429e-90e0-9035db6e22be︡︡{"stdout":"+Infinity\n","done":false}︡{"done":true}
︠48f9158b-c643-4755-b8f0-470d30466d7b︠
limit(-1/x^2,x=0)
︡9f7391e4-0eed-40da-85a8-81cc12151ffa︡︡{"stdout":"-Infinity\n","done":false}︡{"done":true}
︠fdcbbd91-f23a-4713-9d6a-db75d41e2aa2︠









