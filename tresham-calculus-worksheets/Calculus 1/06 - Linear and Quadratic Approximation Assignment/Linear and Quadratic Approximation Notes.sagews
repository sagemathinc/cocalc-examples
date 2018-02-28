︠30d42cb6-bc12-4914-8575-f6c0680efd0bai︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡2fcdcba2-ccdb-4ea3-8a79-b9a62b96cfbf︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠9880f522-1851-491a-beda-dd611488fcadi︠
%md
### Prerequisites:

* Intro to Sage
* Tangent Lines
* Differentiation
︡fb8f61f5-f286-4e6e-828d-f1d98a2ab82f︡{"done":true,"md":"### Prerequisites:\n\n* Intro to Sage\n* Tangent Lines\n* Differentiation"}
︠5f6f3f37-19ff-4a90-8e88-663d89f5f90ci︠
%md
# Linear and Quadratic Approximation

It is often convenient to approximate a complicated function using a simpler function. The "simpler" function is often a polynomial. The simplest polynomial is a straight line (degree 1). Approximating a function with a linear function is called linearization (or linear approximation). Approximating a function with a degree 2 polynomial (a parabola) is called quadratic approximation. We will discuss these two approximation methods today, and we'll save approximation with higher degree polynomials for Calculus 2.

Of course, it's kind of silly to do linear or quadratic approximation with the computer, since the computer can do much more accurate approximations of these functions. The point of this lab is to see just how accurate these simple approximations can be.
︡5db9883a-9514-4693-a283-90b8c29f55a8︡{"done":true,"md":"# Linear and Quadratic Approximation\n\nIt is often convenient to approximate a complicated function using a simpler function. The \"simpler\" function is often a polynomial. The simplest polynomial is a straight line (degree 1). Approximating a function with a linear function is called linearization (or linear approximation). Approximating a function with a degree 2 polynomial (a parabola) is called quadratic approximation. We will discuss these two approximation methods today, and we'll save approximation with higher degree polynomials for Calculus 2.\n\nOf course, it's kind of silly to do linear or quadratic approximation with the computer, since the computer can do much more accurate approximations of these functions. The point of this lab is to see just how accurate these simple approximations can be."}
︠7fbb24d1-7c04-4f78-b5d0-1c93f91306d7i︠
%md
## Linearization
As we have seen several times this semester, differentiable functions are "close to" their tangent lines near the point of tangency. This means that we can approximate any differentiable function with a tangent line (at least over a small interval).

Let's start with a relatively simple example.
︡31f408b8-a386-4aeb-b396-2d98b84d2dd5︡{"done":true,"md":"## Linearization\nAs we have seen several times this semester, differentiable functions are \"close to\" their tangent lines near the point of tangency. This means that we can approximate any differentiable function with a tangent line (at least over a small interval).\n\nLet's start with a relatively simple example."}
︠cf68db44-c4d9-4341-b336-bb02c60dc81di︠
%md
## Example 1

Suppose we want to approximate $\sqrt[3]{28}$ without a computer or calculator. The cube root function is complicated (at least by hand), so we'll approximate the cube root with a simple linear function, a tangent line.

What point of tangency do we choose? There are two requirements:

1. The x-coordinate needs to be close to 28, since our approximation only works close to the point of tangency.

2. It needs to be simple to compute the function value at this x-coordinate (this is the y-coordinate of the point of tangency, and we don't want to approximate this).

For this example, we will choose the tangent line at $x=27$. This value is fairly close to 28, and it is easy to compute $\sqrt[3]{27}=3$ (27 is a perfect cube).
︡3d98bcff-9f02-4d52-9645-0329fdf72a61︡{"md":"## Example 1\n\nSuppose we want to approximate $\\sqrt[3]{28}$ without a computer or calculator. The cube root function is complicated (at least by hand), so we'll approximate the cube root with a simple linear function, a tangent line.\n\nWhat point of tangency do we choose? There are two requirements:\n\n1. The x-coordinate needs to be close to 28, since our approximation only works close to the point of tangency.\n\n2. It needs to be simple to compute the function value at this x-coordinate (this is the y-coordinate of the point of tangency, and we don't want to approximate this).\n\nFor this example, we will choose the tangent line at $x=27$. This value is fairly close to 28, and it is easy to compute $\\sqrt[3]{27}=3$ (27 is a perfect cube).\n"}︡
︠c2f4c70a-8c74-413d-8525-9593491b9c1di︠
%md
Now let's compute the tangent line and use this line to approximate $\sqrt[3]{28}$.

First, define the function we're trying to approximate:
︡8de3a9db-e3e2-4faf-8b86-f00b33043210︡{"md":"Now let's compute the tangent line and use this line to approximate $\\sqrt[3]{28}$.\n\nFirst, define the function we're trying to approximate:\n"}︡
︠62e55db9-4f91-478a-91da-1799b278e455︠
f(x)=x^(1/3)  #cube root
︡9a22d155-7826-42a3-8156-7b6f31121a88︡
︠c8d9a450-523d-4c3d-9585-8cfd84aaec64i︠
%md
Find the derivative:
︡c289caec-1484-4b0e-9fa3-f4fa255458fe︡{"md":"Find the derivative:\n"}︡
︠3ecbff1d-9ba9-4d92-9787-a938b77cf387︠
df(x)=derivative(f,x);show(df(x))
︡74b09194-1408-4037-80ef-f02e061c2c39︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{3 \\, x^{\\frac{2}{3}}}$</div>"}︡
︠3ce6e7a2-1145-49d9-abc8-c042101d7f39i︠
%md
Now we need to find $f'(27)$ to get the slope of the tangent line. If $f(27)$ is simple to compute, then $f'(27)$ is probably simple to compute as well.

In this case, $\displaystyle f'(x)=\frac{1}{3x^{2/3}}$, so $\displaystyle f'(27)=\frac{1}{3\cdot27^{2/3}}=\frac{1}{3\cdot3^2}=\frac{1}{27}$.
︡e0c3db6f-1c80-4bdb-8612-c717f76355a6︡{"md":"Now we need to find $f'(27)$ to get the slope of the tangent line. If $f(27)$ is simple to compute, then $f'(27)$ is probably simple to compute as well.\n\nIn this case, $\\displaystyle f'(x)=\\frac{1}{3x^{2/3}}$, so $\\displaystyle f'(27)=\\frac{1}{3\\cdot27^{2/3}}=\\frac{1}{3\\cdot3^2}=\\frac{1}{27}$.\n"}︡
︠53422876-8aa5-478f-9e74-2fe6813e5612i︠
%md
Find an equation for the tangent line: $TL(x)=f(x_0)+f'(x_0)(x-x_0)$
︡4df0f67f-216b-4835-a3c3-5cbb20af6c05︡{"done":true,"md":"Find an equation for the tangent line: $TL(x)=f(x_0)+f'(x_0)(x-x_0)$"}
︠b9664f9e-b235-42c7-8837-8ce2b871bc5d︠
TL(x)=3+1/27*(x-27); show(TL(x))
︡5ec894d9-4d45-460a-bca0-c54bc2c296de︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{27} \\, x + 2$</div>"}︡
︠3123b8ec-cea9-425f-a1e5-0b9e8f9cff26i︠
%md
Just to check our work, let's graph $f$ and $TL$ near $x=27$. [Of course, if we were actually doing approximation by hand, we wouldn't do this step.]
︡9afbcbcb-1daa-413f-9c9d-8587bae7682d︡{"md":"Just to check our work, let's graph $f$ and $TL$ near $x=27$. [Of course, if we were actually doing approximation by hand, we wouldn't do this step.]\n"}︡
︠3880e818-4c20-49b0-a669-e5447768ae78s︠
f(x)=x^(1/3);TL(x)=3+1/27*(x-27)
plot(f,xmin=20,xmax=34)+plot(TL,xmin=20,xmax=34,color='red')+point((27,3),size=25,color='black')
︡b4dbde13-85eb-4cc6-b9ba-51c1cd422c2c︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/2914/tmp_PCBIMp.svg","show":true,"text":null,"uuid":"85b12fc5-49aa-4b30-bb73-7a6323990653"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠ffbdef6a-b6f1-4762-a67d-a7f1a38e6f81i︠
%md
As we expected, the tangent line is close to the graph of $f$ near $x=27$.

Now let's use the tangent line to approximate $\sqrt[3]{28}$.

The tangent line has equation $TL(x)=3+\frac{1}{27}(x-27)$. Since $\sqrt[3]{x}\approx TL(x)$ (near $x=27$), we have $\sqrt[3]{28}\approx TL(28)=3+\frac{1}{27}(28-27)=3+\frac{1}{27}=\frac{82}{27}\approx3.0370$.
︡7eb1d34a-83e0-4bba-acb4-e850a006d840︡{"md":"As we expected, the tangent line is close to the graph of $f$ near $x=27$.\n\nNow let's use the tangent line to approximate $\\sqrt[3]{28}$.\n\nThe tangent line has equation $TL(x)=3+\\frac{1}{27}(x-27)$. Since $\\sqrt[3]{x}\\approx TL(x)$ (near $x=27$), we have $\\sqrt[3]{28}\\approx TL(28)=3+\\frac{1}{27}(28-27)=3+\\frac{1}{27}=\\frac{82}{27}\\approx3.0370$.\n"}︡
︠d1801fa2-8f57-4ac7-b0de-11c9f58df96d︠
TL(28); N(_)
︡5ba85490-32d2-4309-b889-d26a40cb9429︡{"stdout":"82/27\n3.03703703703704\n"}︡
︠bcf66694-7df3-4786-8aae-4571ca060faai︠
%md
Compare this to Sage's approximation of $\sqrt[3]{28}$:
︡2a7a6fd4-38b0-4c36-b5e4-2fb36134d182︡{"md":"Compare this to Sage's approximation of $\\sqrt[3]{28}$:\n"}︡
︠5e94a082-f810-4b27-89d1-b9fc74d62689︠
N(28^(1/3))
︡2d3ae189-214f-44fe-a8ae-b42673f4e8f5︡{"stdout":"3.03658897187566\n"}︡
︠f91924d3-b325-4e83-aa47-03d0a42d79c0i︠
%md
Our approximation is off by about $3.03703703703704-3.03658897187566=0.000448065161379851$, for a percent error of around $0.0148\%$.

<br>
Note: percent error $=\displaystyle\left|\frac{approximation-actual}{actual}\right|\cdot100$
︡c85c6e63-f98a-48de-bef3-f3d179ec1a5a︡︡{"done":true,"md":"Our approximation is off by about $3.03703703703704-3.03658897187566=0.000448065161379851$, for a percent error of around $0.0148\\%$.\n\n<br>\nNote: percent error $=\\displaystyle\\left|\\frac{approximation-actual}{actual}\\right|\\cdot100$"}
︠af2247b6-9f40-4f22-bfc1-788794937737s︠
N(abs((TL(28)-f(28))/f(28))*100)
︡419f98e0-b0d2-4d10-83bb-9cd4cdcd7384︡{"stdout":"0.0147555420086370"}︡{"stdout":"\n"}︡{"done":true}︡
︠374431d7-5d79-4cf1-a4dc-04007ea8f24bi︠
%md
Suppose we would like to find $\displaystyle\sqrt[3]{29}$ as well?

Since 29 is still fairly close to 27, we can use the same tangent line to get a linear approximation:

$\sqrt[3]{29}\approx TL(29)=3+\frac{1}{27}(29-27)=3+\frac{2}{27}=\frac{83}{27}\approx3.0741$.
︡db2dcc9b-0c8c-4aea-bc35-4f7b3e037580︡{"md":"Suppose we would like to find $\\displaystyle\\sqrt[3]{29}$ as well?\n\nSince 29 is still fairly close to 27, we can use the same tangent line to get a linear approximation:\n\n$\\sqrt[3]{29}\\approx TL(29)=3+\\frac{1}{27}(29-27)=3+\\frac{2}{27}=\\frac{83}{27}\\approx3.0741$.\n"}︡
︠cc50b63b-7280-4424-b90b-fd70527628db︠
TL(29); N(_)
︡3526cbba-e45f-4484-907f-c56d6d598d67︡{"stdout":"83/27\n3.07407407407407\n"}︡
︠b376220b-2db1-46b9-ac49-6024867485b9i︠
%md
Sage gives us $\sqrt[3]{29}\approx 3.0723$.
︡2e412350-9275-4a2b-848d-ccfbc582a645︡{"md":"Sage gives us $\\sqrt[3]{29}\\approx 3.0723$.\n"}︡
︠082f66b2-21e7-49af-a793-f55f7deb9eab︠
N(29^(1/3))
︡6a3c845c-12b6-4aae-8b0b-b5d5d0188194︡{"stdout":"3.07231682568585\n"}︡
︠91cb46d7-029a-410b-ab13-16f96ba3940ei︠
%md
This gives a percent error of about $0.0572\%$
︡6df03f18-2d1a-485a-959e-e86ccadbf401︡{"md":"This gives a percent error of about $0.0572\\%$\n"}︡
︠7c324543-e377-47b5-ab9f-056b975eee8ds︠
N(abs((TL(29)-f(29))/f(29))*100)
︡8cf2167e-3d28-4e0e-a7a0-d02a3ae5e592︡︡{"stdout":"0.0571961971348601\n","done":false}︡{"done":true}
︠3f94935e-ac62-48d2-90b9-43ef7ed35d5bi︠
%md
This linear approximation is only good when $x$ is close to 27.

Here is a graph of the percent error versus $x$. You can see that the error increases as you move away from 27.
︡8f0be3fe-787a-4fc8-bf65-7d1d73d0c6aa︡{"md":"This linear approximation is only good when $x$ is close to 27.\n\nHere is a graph of the percent error versus $x$. You can see that the error increases as you move away from 27.\n"}︡
︠70c308e8-4905-417f-a46a-260f6920c4dds︠
f(x)=x^(1/3);TL(x)=3+1/27*(x-27)
plot(abs((TL(x)-f(x))/f(x))*100,xmin=20,xmax=34,axes_labels=['$x$','Percent Error'],fontsize=8)
︡a2133be7-8f3e-4812-98ff-11c4f455fc4b︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/22699/tmp_zZjj7E.svg","show":true,"text":null,"uuid":"56103536-563e-49c0-a591-16f34799e92f"},"once":false}︡{"done":true}︡
︠8a57556f-697d-4bd4-9e85-8460fb16836fi︠
%md
Even 7 units away from 27 (in either direction), the error is less than 1%. Not bad for an approximation that you could easily do on a napkin over lunch!
︡3c468aa7-d38a-4665-aeb1-0dc1d04862c9︡{"md":"Even 7 units away from 27 (in either direction), the error is less than 1%. Not bad for an approximation that you could easily do on a napkin over lunch!\n"}︡
︠facf8cf2-29c8-4e9b-867f-32fa16221fcai︠
%md
## Example 2  (copy and paste for linear approximation)

Now let's use linear approximation to estimate $\sin\left(\frac{\pi}{5}\right)$. This is not one of the exact values we learned in precalc, but $\frac{\pi}{5}$ is not too far from $\frac{\pi}{6}$, and we recall from precalc that $\sin\left(\frac{\pi}{6}\right)=\frac{1}{2}$. So we'll use $\left(\frac{\pi}{6},\frac{1}{2}\right)$ as our point of tangency.

For this example, we'll let Sage do all the work, but it could be done by hand without too much trouble.
︡0cde2341-aa70-4114-8b18-1a0e4d2a7e06︡{"done":true,"md":"## Example 2  (copy and paste for linear approximation)\n\nNow let's use linear approximation to estimate $\\sin\\left(\\frac{\\pi}{5}\\right)$. This is not one of the exact values we learned in precalc, but $\\frac{\\pi}{5}$ is not too far from $\\frac{\\pi}{6}$, and we recall from precalc that $\\sin\\left(\\frac{\\pi}{6}\\right)=\\frac{1}{2}$. So we'll use $\\left(\\frac{\\pi}{6},\\frac{1}{2}\\right)$ as our point of tangency.\n\nFor this example, we'll let Sage do all the work, but it could be done by hand without too much trouble."}
︠7bdd37bb-b1e1-4c8a-ae55-9c7493764523s︠
f(x)=sin(x)     #define the function we want to approximate
x_tangent=pi/6  #define the x-coordinate of the point of tangency
x_approx=pi/5   #define the x-value where we are trying to approximate the function

df(x)=derivative(f,x)
TL(x)=f(x_tangent)+df(x_tangent)*(x-x_tangent)
print 'Our approximation is:',N(TL(x_approx))
print ''
print 'Sage gives:',N(f(x_approx))
print ''
print 'The percent error is:',N(abs((TL(x_approx)-f(x_approx))/f(x_approx))*100),'%'
︡224f6fe3-746a-44b2-b7eb-5570035225e1︡{"stdout":"Our approximation is: 0.590689968211711\n"}︡{"stdout":"\n"}︡{"stdout":"Sage gives: 0.587785252292473\n"}︡{"stdout":"\n"}︡{"stdout":"The percent error is: 0.494179788946536 %\n"}︡{"done":true}︡
︠9372c36d-abd6-4896-8e98-617efcf11a15i︠
%md
Our approximation is off by about $0.5\%$.

To check our work, here's a graph of $f$ and $TL$ near $x=\frac{\pi}{6}$.
︡5290c9c4-0193-4864-9ee0-9fa3b813a6aa︡{"md":"Our approximation is off by about $0.5\\%$.\n\nTo check our work, here's a graph of $f$ and $TL$ near $x=\\frac{\\pi}{6}$.\n"}︡
︠5ab74843-4292-4a56-bb69-c72a1c51dffas︠
f(x)=sin(x);a=pi/6;df(x)=derivative(f,x);TL(x)=f(a)+df(a)*(x-a)
plot(f,xmin=0,xmax=pi/3)+plot(TL,xmin=0,xmax=pi/3,color='red')+point((pi/6,f(pi/6)),color='black',size=25)
︡e373a98a-83a3-42ec-83ac-bb86cc676293︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/22699/tmp_eDqsOT.svg","show":true,"text":null,"uuid":"aa6788dc-a8ab-4ca0-b177-f37ae164686f"},"once":false}︡{"done":true}︡
︠40e63fdd-edcf-4e1e-8efe-aa5f78146e7ai︠
%md
Here's a graph of the percent error. You can see that it's much worse than our cube root example above.
︡4808c72c-8f8b-469e-b69d-402399af3496︡︡{"done":true,"md":"Here's a graph of the percent error. You can see that it's much worse than our cube root example above."}
︠0276f9d4-3c1d-437e-9f5f-bd58acd9002fs︠
f(x)=sin(x);a=pi/6;df(x)=derivative(f,x);TL(x)=f(a)+df(a)*(x-a)
plot(abs((TL(x)-f(x))/f(x))*100,xmin=0.1,xmax=1,axes_labels=['$x$','Percent Error'],fontsize=8)
︡cf47adbd-07e6-4cb4-ae04-893232ef5867︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/22699/tmp_VrH9c9.svg","show":true,"text":null,"uuid":"75e9b833-58b2-4fdc-9957-fa36e770cadd"},"once":false}︡{"done":true}︡
︠f0222ce3-5a8d-49cf-acce-b32815e84bf2i︠
%md
Just out of curiosity, would would happen if we chose the tangent line at $x=\frac{\pi}{4}$? This is close to $\frac{\pi}{5}$ and we know the exact value of $\sin\left(\frac{\pi}{4}\right)$ as well.

I'll just cut and paste the input from above. The only thing I need to change is x_tangent.
︡e79c863f-90ba-4089-b3c6-8957a8388bce︡{"done":true,"md":"Just out of curiosity, would would happen if we chose the tangent line at $x=\\frac{\\pi}{4}$? This is close to $\\frac{\\pi}{5}$ and we know the exact value of $\\sin\\left(\\frac{\\pi}{4}\\right)$ as well.\n\nI'll just cut and paste the input from above. The only thing I need to change is x_tangent."}
︠92250250-2eea-435a-9260-a6c69a3e3045s︠
f(x)=sin(x)     #define the function we want to approximate
x_tangent=pi/4  #define the x-coordinate of the point of tangency
x_approx=pi/5   #define the x-value where we are trying to approximate the function

df(x)=derivative(f,x)
TL(x)=f(x_tangent)+df(x_tangent)*(x-x_tangent)
print 'Our approximation is:',N(TL(x_approx))
print ''
print 'Sage gives:',N(f(x_approx))
print ''
print 'The percent error is:',N(abs((TL(x_approx)-f(x_approx))/f(x_approx))*100),'%'
︡c7006652-3237-4a8c-ab9f-0d27c538e847︡{"stdout":"Our approximation is: 0.596034707732588\n"}︡{"stdout":"\n"}︡{"stdout":"Sage gives: 0.587785252292473\n"}︡{"stdout":"\n"}︡{"stdout":"The percent error is: 1.40348118771963 %\n"}︡{"done":true}︡
︠9a957ab7-6d1f-464c-8400-cb653b04547ci︠
%md
Now I'm off by about $1.4\%$. This is not surprising, since $\frac{\pi}{4}\approx0.785$ is further away from $\frac{\pi}{5}\approx0.628$ than $\frac{\pi}{6}\approx0.524$.
︡3264dced-3d0b-41a9-ac21-1ac7a958e034︡{"md":"Now I'm off by about $1.4\\%$. This is not surprising, since $\\frac{\\pi}{4}\\approx0.785$ is further away from $\\frac{\\pi}{5}\\approx0.628$ than $\\frac{\\pi}{6}\\approx0.524$.\n"}︡
︠bab5804d-8c26-40ad-ae16-b3c3e8b6e126i︠
%md
## Quadratic Approximation

Suppose we have a function $f(x)$ and its tangent line $TL(x)$ at the point $(x_0,f(x_0))$.

Recall, an equation of the tangent line is $TL(x)=f(x_0)+f'(x_0)(x-x_0)$. The derivative of $TL$ is the constant $f'(x_0)$ (the derivative of a linear function is a constant, equal to its slope). In other words, at the point $(x_0,f(x_0))$, the functions $f$ and $TL$ have the same derivative (or slope). [The point of the tangent line in the first place was to find the slope of $f$ at the point of tangency.] A linear function is completely determined by two pieces of information, in this case (1) the point of tangency, and (2) the slope.

To do quadratic approximation, we want to find a "tangent parabola" for our function $f$ at the point $(x_0,f(x_0))$. A quadratic function is determined by *three* pieces of information. Once again we will use the point of tangency and the slope, but we need one more. The key idea is to use the second derivative. Just like $f$ and $TL$ have the same *first* derivative at $x=x_0$, we will choose our tangent parabola so that it has the same first *and* second derivatives as $f$ at $x=x_0$.
︡1806c39d-e6d7-4acf-af93-66a1cf33187b︡{"done":true,"md":"## Quadratic Approximation\n\nSuppose we have a function $f(x)$ and its tangent line $TL(x)$ at the point $(x_0,f(x_0))$.\n\nRecall, an equation of the tangent line is $TL(x)=f(x_0)+f'(x_0)(x-x_0)$. The derivative of $TL$ is the constant $f'(x_0)$ (the derivative of a linear function is a constant, equal to its slope). In other words, at the point $(x_0,f(x_0))$, the functions $f$ and $TL$ have the same derivative (or slope). [The point of the tangent line in the first place was to find the slope of $f$ at the point of tangency.] A linear function is completely determined by two pieces of information, in this case (1) the point of tangency, and (2) the slope.\n\nTo do quadratic approximation, we want to find a \"tangent parabola\" for our function $f$ at the point $(x_0,f(x_0))$. A quadratic function is determined by *three* pieces of information. Once again we will use the point of tangency and the slope, but we need one more. The key idea is to use the second derivative. Just like $f$ and $TL$ have the same *first* derivative at $x=x_0$, we will choose our tangent parabola so that it has the same first *and* second derivatives as $f$ at $x=x_0$."}
︠162b060f-1d68-4afa-b7e5-da15af748079i︠
%md
Let's call our quadratic function $P(x)=A\cdot(x-x_0)^2+B\cdot(x-x_0)+C$, for some constants $A$, $B$, and $C$. Our goal is to find $A$, $B$, and $C$ so that $P$ is "close to" $f$ near the point $(x_0,f(x_0))$.

[Using $(x-x_0)$ instead of just $x$ will make our calculations easier. Note the presence of $(x-x_0)$ in the tangent line formula as well.]

Note the following facts:

1. $P(x_0)=A\cdot(x_0-x_0)^2+B\cdot(x_0-x_0)+C=C$

2. $P'(x)=2A\cdot(x-x_0)+B$, so $P'(x_0)=2A\cdot(x_0-x_0)+B=B$

3. $P''(x)=2A$, so $P''(x_0)=2A$.

So, if $P$ and $f$ are to have the same (1) function value, (2) first derivative, and (3) second derivative at $x=x_0$, we need $C=f(x_0)$, $B=f'(x_0)$, and $A=\frac{f''(x_0)}{2}$.

Therefore, an equation for the "tangent parabola" is $$P(x)=\frac{f''(x_0)}{2}\cdot(x-x_0)^2+f'(x_0)\cdot(x-x_0)+f(x_0)$$

[Notice the equation for the tangent line within this formula. The tangent parabola extends the tangent line with a degree-2 term.]
︡15dce355-ea2d-4110-8009-2ec3a426c9ce︡{"done":true,"md":"Let's call our quadratic function $P(x)=A\\cdot(x-x_0)^2+B\\cdot(x-x_0)+C$, for some constants $A$, $B$, and $C$. Our goal is to find $A$, $B$, and $C$ so that $P$ is \"close to\" $f$ near the point $(x_0,f(x_0))$.\n\n[Using $(x-x_0)$ instead of just $x$ will make our calculations easier. Note the presence of $(x-x_0)$ in the tangent line formula as well.]\n\nNote the following facts:\n\n1. $P(x_0)=A\\cdot(x_0-x_0)^2+B\\cdot(x_0-x_0)+C=C$\n\n2. $P'(x)=2A\\cdot(x-x_0)+B$, so $P'(x_0)=2A\\cdot(x_0-x_0)+B=B$\n\n3. $P''(x)=2A$, so $P''(x_0)=2A$.\n\nSo, if $P$ and $f$ are to have the same (1) function value, (2) first derivative, and (3) second derivative at $x=x_0$, we need $C=f(x_0)$, $B=f'(x_0)$, and $A=\\frac{f''(x_0)}{2}$.\n\nTherefore, an equation for the \"tangent parabola\" is $$P(x)=\\frac{f''(x_0)}{2}\\cdot(x-x_0)^2+f'(x_0)\\cdot(x-x_0)+f(x_0)$$\n\n[Notice the equation for the tangent line within this formula. The tangent parabola extends the tangent line with a degree-2 term.]"}
︠f6534ca8-8659-4767-a95f-58ca23c2594di︠
%md
## Example 3
Use quadratic approximation to estimate $\sqrt[3]{28}$.

**Solution:** The function $f$ we are trying to approximate is the cube root function, so $f(x)=\sqrt[3]{x}$. Just like in Example 1 above, we will use $(27,3)$ as our point of tangency (because $\sqrt[3]{27}$ is easy to compute).

We want to find the "tangent parabola" $P(x)=A\cdot(x-x_0)^2+B\cdot(x-x_0)+C$.

We need $C=f(27)=3$, $B=f'(27)=\frac{1}{27}$, and $A=\frac{f''(27)}{2}=-\frac{1}{2187}$.

Thus, $P(x)=-\frac{1}{2187}\cdot(x-27)^2+\frac{1}{27}\cdot(x-27)+3$.

Now we can approximate $\sqrt[3]{28}=f(28)\approx P(28)=-\frac{1}{2187}\cdot(28-27)^2+\frac{1}{27}\cdot(28-27)+3=-\frac{1}{2187}+\frac{1}{27}+3=\frac{6641}{2187}$

$\approx 3.03657978966621$
︡b85784f0-ae26-44d5-811b-68542da29454︡{"done":true,"md":"## Example 3\nUse quadratic approximation to estimate $\\sqrt[3]{28}$.\n\n**Solution:** The function $f$ we are trying to approximate is the cube root function, so $f(x)=\\sqrt[3]{x}$. Just like in Example 1 above, we will use $(27,3)$ as our point of tangency (because $\\sqrt[3]{27}$ is easy to compute).\n\nWe want to find the \"tangent parabola\" $P(x)=A\\cdot(x-x_0)^2+B\\cdot(x-x_0)+C$.\n\nWe need $C=f(27)=3$, $B=f'(27)=\\frac{1}{27}$, and $A=\\frac{f''(27)}{2}=-\\frac{1}{2187}$.\n\nThus, $P(x)=-\\frac{1}{2187}\\cdot(x-27)^2+\\frac{1}{27}\\cdot(x-27)+3$.\n\nNow we can approximate $\\sqrt[3]{28}=f(28)\\approx P(28)=-\\frac{1}{2187}\\cdot(28-27)^2+\\frac{1}{27}\\cdot(28-27)+3=-\\frac{1}{2187}+\\frac{1}{27}+3=\\frac{6641}{2187}$\n\n$\\approx 3.03657978966621$"}
︠7d69ceba-5233-4fd5-a0e2-68e7b12a62aei︠
%md
Compare this to the tangent line approximation from Example 1:

$3.03703703703704$

and the approximation from Sage:

$3.03658897187566$

This quadratic approximation gives us a percent error of about $0.0003\%$ (compared with $0.0148\%$ from linear approximation).
︡752d08af-3bad-4e42-8395-38a0577af57f︡{"done":true,"md":"Compare this to the tangent line approximation from Example 1:\n\n$3.03703703703704$\n\nand the approximation from Sage:\n\n$3.03658897187566$\n\nThis quadratic approximation gives us a percent error of about $0.0003\\%$ (compared with $0.0148\\%$ from linear approximation)."}
︠a41d8e89-eb99-427d-ba70-c0ad28ff3a92s︠
#Finding the coefficients:
f(x)=x^(1/3)
df(x)=derivative(f,x)
d2f(x)=derivative(f,x,2)
f(27)     #C
df(27)    #B
d2f(27)/2 #A
︡f9643d1c-10f0-42e2-a44d-972d5e124694︡{"stdout":"3\n"}︡{"stdout":"1/27\n"}︡{"stdout":"-1/2187\n"}︡{"done":true}︡
︠fe82d7fd-47c3-4c34-add6-310cac2e915es︠
#Quadratic approximation
P(x)=-1/2187*(x-27)^2+1/27*(x-27)+3
P(28)
n(_)
︡703ef7a3-02af-4005-b756-b783611e217e︡{"stdout":"6641/2187\n"}︡{"stdout":"3.03657978966621\n"}︡{"done":true}︡
︠c59c7468-37b5-45e2-9146-1c0153d59471s︠
#Percent error
N(abs((P(28)-f(28))/f(28))*100)
︡81113053-4880-45e1-9649-03d1d17cc78e︡{"stdout":"0.000302385655022364\n"}︡{"done":true}︡
︠74ade3ff-73cc-4d01-a610-0114d441f419i︠
%md
Let's look at a graph. The cube root function is in blue, the tangent parabola is in red, and the tangent line is in green.
︡985e1e49-fc6d-4888-9fc1-ed913dfe2b58︡︡{"done":true,"md":"Let's look at a graph. The cube root function is in blue, the tangent parabola is in red, and the tangent line is in green."}
︠9f228898-f8b6-4660-8eda-c86be79ebf27s︠
plot(x^(1/3),xmin=12,xmax=42)+plot(-1/2187*(x-27)^2+1/27*(x-27)+3,xmin=12,xmax=42,color='red')+point((27,3),color='black',size=25)+plot(3+1/27*(x-27),xmin=12,xmax=42,color='green',linestyle='dashed')
︡7fbda8fe-16a9-41bd-b2d5-7f426cd72192︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/22699/tmp_HWjPn6.svg","show":true,"text":null,"uuid":"129cbc2e-ff35-4774-9492-08e91d364666"},"once":false}︡{"done":true}︡
︠0248398c-d14e-4e72-be3d-c243709569b3i︠
%md
Notice how much farther we can get from 27 before the approximation breaks down (compared with the tangent line).

<br>

Below is the graph of the percent error for quadratic approximation. Remember that the tangent line had percent errors less than $1\%$ for the same range of x-values - now we have percent errors less than $0.15\%$.
︡e755e786-b47f-49df-8f4a-38b99b8a1365︡{"done":true,"md":"Notice how much farther we can get from 27 before the approximation breaks down (compared with the tangent line).\n\n<br>\n\nBelow is the graph of the percent error for quadratic approximation. Remember that the tangent line had percent errors less than $1\\%$ for the same range of x-values - now we have percent errors less than $0.15\\%$."}
︠322c791d-04d8-4df9-9a3b-3bf9f3a39c9es︠
f(x)=x^(1/3);P(x)=-1/2187*(x-27)^2+1/27*(x-27)+3
plot(abs((P(x)-f(x))/f(x))*100,xmin=20,xmax=34,axes_labels=['$x$','Percent Error'],fontsize=8)
︡46289bd2-a723-46f9-8313-66e1b0c313e3︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/2914/tmp_G1l6Av.svg","show":true,"text":null,"uuid":"26b92775-ba98-425e-b7f7-7676fddf12f7"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠a58ea733-9a76-4d20-ab6a-30de4c8fd214i︠
%md
## Example 4 (copy and paste for quadratic approximation)

Use quadratic approximation to estimate $\sin\left(\frac{\pi}{5}\right)$. Use $\left(\frac{\pi}{6},\frac{1}{2}\right)$ as the point of tangency, as in Example 2 above.
︡74fbfd09-cf8d-468f-bb43-fe1479957687︡{"md":"## Example 4 (copy and paste for quadratic approximation)\n\nUse quadratic approximation to estimate $\\sin\\left(\\frac{\\pi}{5}\\right)$. Use $\\left(\\frac{\\pi}{6},\\frac{1}{2}\\right)$ as the point of tangency, as in Example 2 above.\n"}︡
︠5dcc60df-6d36-4559-915d-5b8bcd1eb3dds︠
f(x)=sin(x)     #define the function we want to approximate
x_tangent=pi/6  #define the x-coordinate of the point of tangency
x_approx=pi/5   #define the x-value where we are trying to approximate the function

df(x)=derivative(f,x)
d2f(x)=derivative(f,x,2)
P(x)=d2f(x_tangent)/2*(x-x_tangent)^2+df(x_tangent)*(x-x_tangent)+f(x_tangent)
print 'Our approximation is:',N(P(x_approx))
print ''
print 'Sage gives:',N(f(x_approx))
print ''
print 'The percent error is:',N(abs((P(x_approx)-f(x_approx))/f(x_approx))*100),'%'
︡ce84acd3-ce53-4765-bf5b-47c697832b38︡{"stdout":"Our approximation is: 0.587948411433631\n"}︡{"stdout":"\n"}︡{"stdout":"Sage gives: 0.587785252292473\n"}︡{"stdout":"\n"}︡{"stdout":"The percent error is: 0.0277582910630994 %\n"}︡{"done":true}︡
︠782d6af3-6635-4790-9a83-f65b08fa2eeci︠
%md
Compare this percent error with the $0.494179788946525\%$ we got from linear approximation.
︡c2e535f2-1902-430e-9c66-05bd4563f6ed︡{"md":"Compare this percent error with the $0.494179788946525\\%$ we got from linear approximation.\n"}︡
︠1acadbc4-5f83-4e99-8bcb-df9448054e6bi︠
%md
Here's a graph.
︡2b3b7b1a-3cfb-482b-a0ea-ee4b1894dd8d︡{"md":"Here's a graph.\n"}︡
︠4cacb3c4-41d1-4745-baa6-0781f33d8064s︠
f(x)=sin(x);a=pi/6;df(x)=derivative(f,x);TL(x)=f(a)+df(a)*(x-a)
plot(f,xmin=-pi,xmax=pi)+plot(P,xmin=-pi,xmax=pi,ymin=-1.5,color='red')+point((pi/6,1/2),color='black',size=25)+plot(TL,xmin=-pi,xmax=pi,color='green',linestyle='dashed',ymax=1.25,ymin=-1.25)
︡c6530685-0c61-4d0f-b414-e2d42f37e8f9︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/22699/tmp_zosLMe.svg","show":true,"text":null,"uuid":"11530e5d-dd02-4f67-bdd3-4692f24b82bb"},"once":false}︡{"done":true}︡
︠285e5d86-a0a2-4730-b132-d3932347d315i︠
%md
Here's the percent error graph. Recall, we had errors over 30% with the tangent line.
︡617e7c1e-4d64-409b-8896-5de914a10ef1︡{"done":true,"md":"Here's the percent error graph. Recall, we had errors over 30% with the tangent line."}
︠21c426d5-71de-4067-81d3-da61a5448f86s︠
plot(abs((P(x)-f(x))/f(x))*100,xmin=0.1,xmax=1,axes_labels=['$x$','Percent Error'],fontsize=8)
︡e94c05f4-eafa-439b-8a63-6202df3bb2ad︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/2914/tmp_ske4lk.svg","show":true,"text":null,"uuid":"3ddd98af-2ddb-45e7-82f8-626610978220"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠b802af88-137e-43c6-9d2a-844c8e04414di︠
%md
The next step would be cubic approximation. To get a cubic, we need one more piece of information. We'll make the *third* derivative of our "tangent cubic" equal to the third derivative of $f$ at $x=x_0$. You can continue this process as many times as you like to get a polynomial of any degree. We'll come back to this in Calculus 2.
︡ea42ad68-57f4-44cf-b2a8-acc2968820de︡{"done":true,"md":"The next step would be cubic approximation. To get a cubic, we need one more piece of information. We'll make the *third* derivative of our \"tangent cubic\" equal to the third derivative of $f$ at $x=x_0$. You can continue this process as many times as you like to get a polynomial of any degree. We'll come back to this in Calculus 2."}
︠a5b09c6e-d839-463a-9a02-31e70639885e︠









