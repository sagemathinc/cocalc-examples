︠a7f4b2ac-6c01-4fbb-9d93-9bc7e782f740i︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡0eb09b69-9842-4f4f-a2ec-32193838de04︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠db0ad8ec-f95b-4e46-af5e-85a29a1511df︠
%md
### Prerequisites:

* Intro to Sage
* Symbolic Integration
︡1b86b837-1804-40e8-a1f0-ff4bc5ceebc6︡
︠edad9b03-98e8-4ccb-b50a-e4d9df52d837i︠
%md
# Arc Length and Surface Area

We're going to cover two applications of integrals in these notes: (1) the length of a curve and (2) the area of a surface of revolution.
︡150a67a4-8ae4-41e5-b832-0611baa884bd︡{"done":true,"md":"# Arc Length and Surface Area\n\nWe're going to cover two applications of integrals in these notes: (1) the length of a curve and (2) the area of a surface of revolution."}
︠8dbf7c6f-69a6-496d-b219-c58c6fb55685i︠
%md
# Arc Length

Our goal is to find the length of the graph of a function $y=f(x)$ from $x=a$ to $x=b$. This is called "arc length."

We will assume that our function is "smooth" on $[a,b]$, which means that the derivative $f'$ is continuous at every $x$ in $[a,b]$.

The simplest curve is a straight line. We can find the length of a line segment using geometry. For anything more complex, we will use line segments to approximate the curve.

Here is the procedure:

1. Divide the interval $[a,b]$ into $n$ subintervals of equal width with endpoints $a=x_0 < x_1 < x_2 < \ldots < x_n=b$.

2. Find the length of the line segments connecting the points $(x_i,f(x_i))$ and $(x_{i+1},f(x_{i+1}))$ for $i=0,\ 1,\ \ldots,\ n-1$.

3. Add up all these lengths to get an approximation for the arc length.

4. Take the limit as $n$ approaches infinity to get the actual arc length.
︡a0fbb8fa-cc6f-4c0f-910b-953b1a7f39b6︡{"done":true,"md":"# Arc Length\n\nOur goal is to find the length of the graph of a function $y=f(x)$ from $x=a$ to $x=b$. This is called \"arc length.\"\n\nWe will assume that our function is \"smooth\" on $[a,b]$, which means that the derivative $f'$ is continuous at every $x$ in $[a,b]$.\n\nThe simplest curve is a straight line. We can find the length of a line segment using geometry. For anything more complex, we will use line segments to approximate the curve.\n\nHere is the procedure:\n\n1. Divide the interval $[a,b]$ into $n$ subintervals of equal width with endpoints $a=x_0 < x_1 < x_2 < \\ldots < x_n=b$.\n\n2. Find the length of the line segments connecting the points $(x_i,f(x_i))$ and $(x_{i+1},f(x_{i+1}))$ for $i=0,\\ 1,\\ \\ldots,\\ n-1$.\n\n3. Add up all these lengths to get an approximation for the arc length.\n\n4. Take the limit as $n$ approaches infinity to get the actual arc length."}
︠8c7f5f43-08a3-4f33-84e9-48bfeb5b3428i︠
%md
Here is a sample picture with $n=4$.
︡f90f5d9b-c4b1-4832-9478-643e9c437681︡{"done":true,"md":"Here is a sample picture with $n=4$."}
︠71420086-00d3-433b-9a3e-5c2a1a415bc0is︠
%auto
%hide
f(x)=x*sin(x^2)+2.5
plot(f(x),0,2.75,ticks=[[0],[0]])+text('$a=x_0$',(.5,-.2),color='black')+text('$x_1$',(1,-.2),color='black')+text('$x_2$',(1.5,-.2),color='black')+text('$x_3$',(2,-.2),color='black')+text('$b=x_4$',(2.5,-.2),color='black')+line([(.5,-.05),(.5,.05)],color='black')+line([(1,-.05),(1,.05)],color='black')+line([(1.5,-.05),(1.5,.05)],color='black')+line([(2,-.05),(2,.05)],color='black')+line([(2.5,-.05),(2.5,.05)],color='black')+line([(.5,f(.5)),(1,f(1))],color='black')+line([(1,f(1)),(1.5,f(1.5))],color='black')+line([(1.5,f(1.5)),(2,f(2))],color='black')+line([(2,f(2)),(2.5,f(2.5))],color='black')
︡8b072d3e-8345-4439-9faa-a080110cf281︡{"hide":"input"}︡{"file":{"filename":"/home/user/.sage/temp/project-9189c752-e334-4311-afa9-605b6159620a/216737/tmp_GbOcVN.svg","show":true,"text":null,"uuid":"7277d58e-4f13-4409-943d-fc0f17ab053b"},"once":false}︡{"done":true}︡
︠13f7f729-e0e2-470f-b8ed-ee94f4183810i︠
%md
Does this process sound familiar. Is anyone surprised that the final answer turns out to be an integral?

We find the length of the line segments (step 2) using the distance formula. Let $L_i$ be the distance from $(x_i,f(x_i))$ to $(x_{i+1},f(x_{i+1}))$. Then $$L_i=\sqrt{(x_{i+1}-x_i)^2+(f(x_{i+1})-f(x_i))^2}=\sqrt{\Delta x^2+(f(x_{i+1})-f(x_i))^2},$$

where $\Delta x=x_{i+1}-x_i=\frac{b-a}{n}$ is a constant.

This is where it gets a little tricky. By the Mean Value Theorem, there exists $c_i$ with $x_i < c_i < x_{i+1}$ such that $f'(c_i)=\frac{f(x_{i+1})-f(x_i)}{\Delta x}$. Multiplying both sides by $\Delta x$ gives: $$f(x_{i+1})-f(x_i)=f'(c_i)\cdot\Delta x.$$

So then we have $$L_i=\sqrt{\Delta x ^2+(f'(c_i)\cdot\Delta x)^2}=\sqrt{\Delta x^2\cdot(1+f'(c_i)^2)}=\sqrt{1+f'(c_i)^2}\cdot \Delta x.$$

The arc length is thus $$\lim_{n\to\infty}\sum_{i=0}^{n-1}L_i=\lim_{n\to\infty}\sum_{i=0}^{n-1}\sqrt{1+f'(c_i)^2}\cdot \Delta x=\int_a^b\sqrt{1+f'(x)^2}\, dx.$$

[Note: We have assumed $f'$ is continuous to guarantee that this integral exists.]
︡03f109a6-966f-41b9-8f8c-b051025c3f1d︡{"done":true,"md":"Does this process sound familiar. Is anyone surprised that the final answer turns out to be an integral?\n\nWe find the length of the line segments (step 2) using the distance formula. Let $L_i$ be the distance from $(x_i,f(x_i))$ to $(x_{i+1},f(x_{i+1}))$. Then $$L_i=\\sqrt{(x_{i+1}-x_i)^2+(f(x_{i+1})-f(x_i))^2}=\\sqrt{\\Delta x^2+(f(x_{i+1})-f(x_i))^2},$$\n\nwhere $\\Delta x=x_{i+1}-x_i=\\frac{b-a}{n}$ is a constant.\n\nThis is where it gets a little tricky. By the Mean Value Theorem, there exists $c_i$ with $x_i < c_i < x_{i+1}$ such that $f'(c_i)=\\frac{f(x_{i+1})-f(x_i)}{\\Delta x}$. Multiplying both sides by $\\Delta x$ gives: $$f(x_{i+1})-f(x_i)=f'(c_i)\\cdot\\Delta x.$$\n\nSo then we have $$L_i=\\sqrt{\\Delta x ^2+(f'(c_i)\\cdot\\Delta x)^2}=\\sqrt{\\Delta x^2\\cdot(1+f'(c_i)^2)}=\\sqrt{1+f'(c_i)^2}\\cdot \\Delta x.$$\n\nThe arc length is thus $$\\lim_{n\\to\\infty}\\sum_{i=0}^{n-1}L_i=\\lim_{n\\to\\infty}\\sum_{i=0}^{n-1}\\sqrt{1+f'(c_i)^2}\\cdot \\Delta x=\\int_a^b\\sqrt{1+f'(x)^2}\\, dx.$$\n\n[Note: We have assumed $f'$ is continuous to guarantee that this integral exists.]"}
︠5583497b-71e8-4a44-ae16-46bd71a7b092i︠
%md
## Arc Length Formula

If $f'$ is continous on the interval $[a,b]$, then the arc length of the curve $y=f(x)$ from $x=a$ to $x=b$ is $$L=\int_a^b\sqrt{1+f'(x)^2}\, dx.$$
︡6b98dad3-f756-4d92-903a-696c441cd28d︡{"done":true,"md":"## Arc Length Formula\n\nIf $f'$ is continous on the interval $[a,b]$, then the arc length of the curve $y=f(x)$ from $x=a$ to $x=b$ is $$L=\\int_a^b\\sqrt{1+f'(x)^2}\\, dx.$$"}
︠08cdd090-236d-44c0-af34-c42ccf65417bi︠
%md
## Example 1

Find the length of $f(x)=\ln(\sec(x))$ from $x=0$ to $x=\frac{\pi}{4}$.
︡30f18dbd-dc37-407a-9be7-af859186e7e7︡{"done":true,"md":"## Example 1\n\nFind the length of $f(x)=\\ln(\\sec(x))$ from $x=0$ to $x=\\frac{\\pi}{4}$."}
︠7a9620bf-5bbe-44f9-a3b6-ec548a985553i︠
%md
**Solution:** $f'(x)=\frac{1}{\sec(x)}\cdot \sec(x)\tan(x)=\tan(x)$, so $\sqrt{1+f'(x)^2}=\sqrt{1+\tan^2(x)}=\sqrt{\sec^2(x)}=|\sec(x)|=\sec(x)$ for $0\le x\le \frac{\pi}{4}$.

Therefore, $$L=\int_0^{\pi/4}\sec(x)\, dx=\ln(|\sec(x)+\tan(x)|)\bigg|_0^{\pi/4}=\ln(\sqrt{2}+1).$$
︡7c465f6f-b63a-4947-8b38-3f4561f12d19︡{"done":true,"md":"**Solution:** $f'(x)=\\frac{1}{\\sec(x)}\\cdot \\sec(x)\\tan(x)=\\tan(x)$, so $\\sqrt{1+f'(x)^2}=\\sqrt{1+\\tan^2(x)}=\\sqrt{\\sec^2(x)}=|\\sec(x)|=\\sec(x)$ for $0\\le x\\le \\frac{\\pi}{4}$.\n\nTherefore, $$L=\\int_0^{\\pi/4}\\sec(x)\\, dx=\\ln(|\\sec(x)+\\tan(x)|)\\bigg|_0^{\\pi/4}=\\ln(\\sqrt{2}+1).$$"}
︠230e978e-c33b-483a-811c-c157724599f8︠
f(x)=ln(sec(x))
integral(sqrt(1+derivative(f,x)^2),x,0,pi/4)
︡5a238a6f-76a7-4c4e-8f4e-dec4e4c92c86︡{"stdout":"arcsinh(1)\n"}︡
︠bb0fc01f-f878-467a-9c0f-ecbaad28fce2i︠
%md
You may not recognize this function (it is *not* arcsin), but this is in fact the same as the answer I gave above:
︡6fc1d960-517c-424a-a892-9529d207db11︡{"md":"You may not recognize this function (it is *not* arcsin), but this is in fact the same as the answer I gave above:\n"}︡
︠db0fd2b7-54e5-4f45-8b66-b414b58fbd25︠
N(arcsinh(1));N(ln(sqrt(2)+1))
︡f8d32d56-3715-4179-951e-23a85d47cf20︡{"stdout":"0.881373587019543\n0.881373587019543\n"}︡
︠22208af7-b970-4326-abac-91447d2578d2i︠
%md
Here's what you get if you do the simplification first:
︡727ad7d2-657c-4bfb-b22d-e9ad44a99510︡{"md":"Here's what you get if you do the simplification first:\n"}︡
︠47cb48f7-c0a8-443b-8db0-3ff379aa31f8︠
integral(sec(x),x,0,pi/4)
N(_)
︡c0dc5b42-053d-442b-a8b3-b6355c5518f8︡{"stdout":"1/2*log(1/2*sqrt(2) + 1) - 1/2*log(-1/2*sqrt(2) + 1)"}︡{"stdout":"\n"}︡{"stdout":"0.881373587019543\n"}︡
︠caabc1b6-7c6f-4558-b128-db5ffa05de38i︠
%md
## Example 2

Find the length of $f(x)=\frac{1}{8}x^2-\ln(x)$ from $x=1$ to $x=2$.
︡06a87e66-8cba-468d-93ce-75ce47467e55︡{"done":true,"md":"## Example 2\n\nFind the length of $f(x)=\\frac{1}{8}x^2-\\ln(x)$ from $x=1$ to $x=2$."}
︠054bbb19-26cd-45b9-ba83-0f1ca6314449i︠
%md
**Solution:** Since $\displaystyle f'(x)=\frac{x}{4}-\frac{1}{x}$, we have $\displaystyle L=\int_1^2\sqrt{1+\left(\frac{x}{4}-\frac{1}{x}\right)^2}\, dx.$

This can be done by hand, but the algebra is kind of involved. Let's just use Sage:
︡6e61979e-6bd6-4ade-9968-425614867cda︡{"done":true,"md":"**Solution:** Since $\\displaystyle f'(x)=\\frac{x}{4}-\\frac{1}{x}$, we have $\\displaystyle L=\\int_1^2\\sqrt{1+\\left(\\frac{x}{4}-\\frac{1}{x}\\right)^2}\\, dx.$\n\nThis can be done by hand, but the algebra is kind of involved. Let's just use Sage:"}
︠0d276367-42bc-4984-9916-3833df2579f7︠
f(x)=x^2/8-ln(x)
integral(sqrt(1+derivative(f,x)^2),x,1,2)
N(_)
︡eb138893-646e-4d25-abd5-81c4ae1fb92e︡{"stdout":"log(2) + 3/8\n"}︡{"stdout":"1.06814718055995\n"}︡
︠da6138fb-ec1b-45ad-ac9e-00d3e622784ai︠
%md
Remember that log is the natural logarithm in Sage.
︡39e854c1-7a16-49ce-8db9-c431c9acb368︡{"md":"Remember that log is the natural logarithm in Sage.\n"}︡
︠7213b635-5091-4374-bd9e-5eb25b2bb2b3i︠
%md
## Example 3

Find the length of $f(x)=3x^2-5x+4$ from $x=0$ to $x=2$.
︡43072aee-6ce5-438a-b035-d4ab1288aa9a︡{"done":true,"md":"## Example 3\n\nFind the length of $f(x)=3x^2-5x+4$ from $x=0$ to $x=2$."}
︠a7339a19-4ca8-42ad-bbe8-1c5d256ddeb8i︠
%md
**Solution:** Since $f'(x)=6x-5$, we have $\displaystyle L=\int_0^2\sqrt{1+(6x-5)^2}\, dx$.
︡dfe5304b-c4e8-4acb-9c2f-053af5fa06b4︡{"done":true,"md":"**Solution:** Since $f'(x)=6x-5$, we have $\\displaystyle L=\\int_0^2\\sqrt{1+(6x-5)^2}\\, dx$."}
︠de5e0c61-d3f3-4d4e-8163-1184e0aec54f︠
f(x)=3*x^2-5*x+4
integral(sqrt(1+derivative(f,x)^2),x,0,2)
N(_)
︡a1319cc9-6152-4673-aa36-53c0cd791ce3︡{"stdout":"5/12*sqrt(26) + 35/12*sqrt(2) + 1/12*arcsinh(7) + 1/12*arcsinh(5)\n"}︡{"stdout":"6.66242761277947\n"}︡
︠8ff6b6cd-2bee-445a-bd8c-7c97f5ddcc77i︠
%md
So $L\approx 6.6624$.
︡7aa92184-e350-4c9e-8352-d28c38c3cc7d︡{"md":"So $L\\approx 6.6624$.\n"}︡
︠5230e718-1c67-4168-91c3-9f5009166922i︠
%md
## Example 4

Find the length of $f(x)=\cos(x)$ from $x=0$ to $x=\pi$.
︡a0c5d87d-b05f-405f-b97f-3233a94c6fcd︡{"done":true,"md":"## Example 4\n\nFind the length of $f(x)=\\cos(x)$ from $x=0$ to $x=\\pi$."}
︠145ce262-4be7-4d82-8432-1c74716a27ffi︠
%md
**Solution:** Since $f'(x)=-\sin(x)$, we have $\displaystyle L=\int_0^{\pi} \sqrt{1+\sin^2(x)}\, dx$.

If we try this integral in Sage, we run into trouble.
︡bacceb50-1a32-4222-b536-e1f800e2b572︡{"done":true,"md":"**Solution:** Since $f'(x)=-\\sin(x)$, we have $\\displaystyle L=\\int_0^{\\pi} \\sqrt{1+\\sin^2(x)}\\, dx$.\n\nIf we try this integral in Sage, we run into trouble."}
︠79ee25ec-aa85-4644-8c49-6a1531327524︠
integral(sqrt(1+sin(x)^2),x,0,pi)
︡8155bba7-8a07-41ad-96ed-4351cdf0cb9b︡{"stderr":"Error in lines 1-1\n"}︡{"stderr":"Traceback (most recent call last):\n  File \"/projects/9189c752-e334-4311-afa9-605b6159620a/.sagemathcloud/sage_server.py\", line 879, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"/projects/sage/sage-6.7/local/lib/python2.7/site-packages/sage/misc/functional.py\", line 663, in integral\n    return x.integral(*args, **kwds)\n  File \"sage/symbolic/expression.pyx\", line 10712, in sage.symbolic.expression.Expression.integral (build/cythonized/sage/symbolic/expression.cpp:52941)\n    return integral(self, *args, **kwds)\n  File \"/projects/sage/sage-6.7/local/lib/python2.7/site-packages/sage/symbolic/integration/integral.py\", line 761, in integrate\n    return definite_integral(expression, v, a, b, hold=hold)\n  File \"sage/symbolic/function.pyx\", line 994, in sage.symbolic.function.BuiltinFunction.__call__ (build/cythonized/sage/symbolic/function.cpp:10865)\n    res = super(BuiltinFunction, self).__call__(\n  File \"sage/symbolic/function.pyx\", line 502, in sage.symbolic.function.Function.__call__ (build/cythonized/sage/symbolic/function.cpp:6801)\n    res = g_function_evalv(self._serial, vec, hold)\n  File \"sage/symbolic/function.pyx\", line 1065, in sage.symbolic.function.BuiltinFunction._evalf_or_eval_ (build/cythonized/sage/symbolic/function.cpp:11522)\n    return self._eval0_(*args)\n  File \"/projects/sage/sage-6.7/local/lib/python2.7/site-packages/sage/symbolic/integration/integral.py\", line 176, in _eval_\n    return integrator(*args)\n  File \"/projects/sage/sage-6.7/local/lib/python2.7/site-packages/sage/symbolic/integration/external.py\", line 23, in maxima_integrator\n    result = maxima.sr_integral(expression, v, a, b)\n  File \"/projects/sage/sage-6.7/local/lib/python2.7/site-packages/sage/interfaces/maxima_lib.py\", line 776, in sr_integral\n    return max_to_sr(maxima_eval(([max_integrate],[sr_to_max(SR(a)) for a in args])))\n  File \"sage/libs/ecl.pyx\", line 792, in sage.libs.ecl.EclObject.__call__ (build/cythonized/sage/libs/ecl.c:6998)\n    return ecl_wrap(ecl_safe_apply(self.obj,(<EclObject>lispargs).obj))\n"}︡{"stderr":"  File \"sage/libs/ecl.pyx\", line 365, in sage.libs.ecl.ecl_safe_apply (build/cythonized/sage/libs/ecl.c:4861)\n    raise RuntimeError, \"ECL says: \"+ecl_base_string_pointer_safe(s)\nRuntimeError: ECL says: Error executing code in Maxima: \n"}︡
︠5c536d20-f8c1-4945-84c9-092832a608afi︠
%md
Since Sage can't do this integral symbolically, we'll find a numerical approximation instead. In Sage we can use the numerical_integral command.

$\displaystyle \int_a^b f(x)\, dx\approx$numerical_integral(f,a,b)

Note: Since this is numerical, only one variable is involved, so you do not specify the variable.
︡8861faaf-a370-4610-9f69-15656cd710d4︡{"done":true,"md":"Since Sage can't do this integral symbolically, we'll find a numerical approximation instead. In Sage we can use the numerical_integral command.\n\n$\\displaystyle \\int_a^b f(x)\\, dx\\approx$numerical_integral(f,a,b)\n\nNote: Since this is numerical, only one variable is involved, so you do not specify the variable."}
︠f1bf644d-6a79-4b56-979f-c6479df4c8d3︠
numerical_integral(sqrt(1+sin(x)^2),0,pi)
︡6670b46e-1f36-41f2-9fc3-e938b5910449︡{"stdout":"(3.820197789027712, 4.241271544000682e-14)\n"}︡
︠ea7b3617-a9de-4a13-8ecd-5380d5594c44is︠
%md
numerical_integral returns an ordered pair: the first number is the answer, and the second number is an estimate of the error in the approximation (notice the e-14: this number is $4.24\times10^{-14}\approx 0)$.

Thus, our arc length is approximately $3.8202$.
︡776422d5-5fb6-470e-b515-6552771cff79︡{"md":"numerical_integral returns an ordered pair: the first number is the answer, and the second number is an estimate of the error in the approximation (notice the e-14: this number is $4.24\\times10^{-14}\\approx 0)$.\n\nThus, our arc length is approximately $3.8202$.\n"}︡
︠5671335c-a2fd-4bcf-9545-b5aec6de36f2i︠
%md
# Areas of Surfaces of Revolution

We have already talked about the volume of a solid of revolution, which you get by rotating a region around an axis. In particular, we saw what happens when you take the region between the graph of a function and the x-axis. If you rotate just the boundary curve, and not the region under the curve, then you do not get a solid; instead, you get a surface of revolution. Our goal is to find the surface area of such objects.
︡ca5f2aff-4cc9-474f-b79a-1d0e916d350b︡{"done":true,"md":"# Areas of Surfaces of Revolution\n\nWe have already talked about the volume of a solid of revolution, which you get by rotating a region around an axis. In particular, we saw what happens when you take the region between the graph of a function and the x-axis. If you rotate just the boundary curve, and not the region under the curve, then you do not get a solid; instead, you get a surface of revolution. Our goal is to find the surface area of such objects."}
︠06c411d5-3450-4d7e-b727-a55e2b15b4b2i︠
%md
Since we have already seen the development of formulas involving integrals for volume and for arclength, I am going to skip over most of the derivation of the surface area formula.

We have a curve $y=f(x)\ge 0$ from $x=a$ to $x=b$. We are going to rotate this curve around the x-axis to form a surface.

We divide the interval $[a,b]$ into $n$ subintervals of equal width with endpoints $a=x_0 < x_1 < x_2 < \ldots < x_n=b$.

For each subinterval $[x_i,x_{i+1}]$, we approximate the curve with a line segment from the point $(x_i,f(x_i))$ to the point $(x_{i+1},f(x_{i+1}))$.

When we rotate this line segment around the x-axis, we get an approximation for the portion of the surface on this subinterval. Rotating a line segment around an axis produces a frustum of a cone (i.e., a cone with the top cut off). The surface area of a frustum of a cone is known from geometry to be $2\pi y L$, where $L$ is the length of the line segment and $y$ is the average height of the line segment above the x-axis.

To get the surface area, you add up the approximations from each subinterval, and take the limit as $n$ goes to $\infty$. You have to do some algebraic manipulation, and you have to use the Mean Value Theorem (similar to what we did for arc length). I will omit the messy steps.

︡a4dbe8ca-0e85-44ea-a2d0-3db6d5f644e6︡{"done":true,"md":"Since we have already seen the development of formulas involving integrals for volume and for arclength, I am going to skip over most of the derivation of the surface area formula.\n\nWe have a curve $y=f(x)\\ge 0$ from $x=a$ to $x=b$. We are going to rotate this curve around the x-axis to form a surface.\n\nWe divide the interval $[a,b]$ into $n$ subintervals of equal width with endpoints $a=x_0 < x_1 < x_2 < \\ldots < x_n=b$.\n\nFor each subinterval $[x_i,x_{i+1}]$, we approximate the curve with a line segment from the point $(x_i,f(x_i))$ to the point $(x_{i+1},f(x_{i+1}))$.\n\nWhen we rotate this line segment around the x-axis, we get an approximation for the portion of the surface on this subinterval. Rotating a line segment around an axis produces a frustum of a cone (i.e., a cone with the top cut off). The surface area of a frustum of a cone is known from geometry to be $2\\pi y L$, where $L$ is the length of the line segment and $y$ is the average height of the line segment above the x-axis.\n\nTo get the surface area, you add up the approximations from each subinterval, and take the limit as $n$ goes to $\\infty$. You have to do some algebraic manipulation, and you have to use the Mean Value Theorem (similar to what we did for arc length). I will omit the messy steps."}
︠5e2778c3-dca0-489e-bbe6-49da8810757ei︠
%md

## Surface Area Formula

If the function $f(x)\ge0$ and $f'(x)$ is continuous on the interval $[a,b]$, the area of the surface generated by rotating the graph of $f$ around the x-axis is $$S=\int_a^b 2\pi f(x)\sqrt{1+f'(x)^2}\, dx.$$
︡d0c79fdf-758c-4877-a6de-3804bd50d595︡{"done":true,"md":"\n## Surface Area Formula\n\nIf the function $f(x)\\ge0$ and $f'(x)$ is continuous on the interval $[a,b]$, the area of the surface generated by rotating the graph of $f$ around the x-axis is $$S=\\int_a^b 2\\pi f(x)\\sqrt{1+f'(x)^2}\\, dx.$$"}
︠d248aba3-5b85-45a4-ac28-5222f16341b9i︠
%md
## Example 5

Find the surface area of a sphere of radius $r$.
︡d08e9d15-3d5c-4e37-a9a2-e58207a6af78︡{"done":true,"md":"## Example 5\n\nFind the surface area of a sphere of radius $r$."}
︠33355768-8e3a-43c6-b98a-3745132eed38i︠
%md
**Solution:** We rotate the graph of $\displaystyle f(x)=\sqrt{r^2-x^2}$ from $x=-r$ to $x=r$ to generate a sphere.

Since $\displaystyle f'(x)=\frac{-x}{\sqrt{r^2-x^2}}$, we have $$S=\int_{-r}^r 2\pi \sqrt{r^2-x^2}\sqrt{1+\left(\frac{-x}{\sqrt{r^2-x^2}}\right)^2}\, dx=\int_{-r}^r 2\pi \sqrt{r^2-x^2}\sqrt{\frac{r^2}{r^2-x^2}}\, dx=\int_{-r}^r 2\pi r\, dx=4\pi r^2.$$
︡ac85e61f-626c-464a-ba0b-9d17b564080c︡{"done":true,"md":"**Solution:** We rotate the graph of $\\displaystyle f(x)=\\sqrt{r^2-x^2}$ from $x=-r$ to $x=r$ to generate a sphere.\n\nSince $\\displaystyle f'(x)=\\frac{-x}{\\sqrt{r^2-x^2}}$, we have $$S=\\int_{-r}^r 2\\pi \\sqrt{r^2-x^2}\\sqrt{1+\\left(\\frac{-x}{\\sqrt{r^2-x^2}}\\right)^2}\\, dx=\\int_{-r}^r 2\\pi \\sqrt{r^2-x^2}\\sqrt{\\frac{r^2}{r^2-x^2}}\\, dx=\\int_{-r}^r 2\\pi r\\, dx=4\\pi r^2.$$"}
︠ec65f796-919a-4f75-a3b1-6fa0383183af︠
%auto
%hide
f(x)=sqrt(1-x^2)
revolution_plot3d(f,(x,-1,1),parallel_axis='x',show_curve=True)
︡e7c29ef8-613b-44e6-a18d-e2580eb396d3︡{"hide":"input"}︡{"file":{"filename":"394887f4-458a-4623-8acf-78d13c0284ec.sage3d","uuid":"394887f4-458a-4623-8acf-78d13c0284ec"}}︡{"done":true}︡
︠33309da9-41cb-49d5-af0e-5a418d095cd0︠
%var r
f(x)=sqrt(r^2-x^2)
integral(2*pi*f(x)*sqrt(1+derivative(f,x)^2),x,-r,r)
︡ba8d2ce7-5846-4697-84db-a1bc1622358c︡{"stdout":"4*pi*r^2"}︡{"stdout":"\n"}︡
︠34342b1a-894a-410a-b2e0-c11b27dc8ee7i︠
%md
## Rotation around the y-axis

If you rotate around the y-axis, then you may use $x$ as a function of $y$:

If $g(y)\ge0$ and $g'$ is continuous on the interval $[c,d]$ (interval of y-values), the area of the surface generated by rotating the graph of $x=g(y)$ about the y-axis is $$S=\int_c^d 2\pi g(y)\sqrt{1+g'(y)^2}\, dy.$$

Alternatively, if you have $y=f(x)$ from $x=a$ to $x=b$, then you can use $$S=\int_a^b 2\pi x\sqrt{1+f'(x)^2}\, dx.$$
︡25277943-d862-4eba-b88a-c2e4bce65d6a︡{"md":"## Rotation around the y-axis\n\nIf you rotate around the y-axis, then you may use $x$ as a function of $y$:\n\nIf $g(y)\\ge0$ and $g'$ is continuous on the interval $[c,d]$ (interval of y-values), the area of the surface generated by rotating the graph of $x=g(y)$ about the y-axis is $$S=\\int_c^d 2\\pi g(y)\\sqrt{1+g'(y)^2}\\, dy.$$\n\nAlternatively, if you have $y=f(x)$ from $x=a$ to $x=b$, then you can use $$S=\\int_a^b 2\\pi x\\sqrt{1+f'(x)^2}\\, dx.$$\n"}︡
︠f0b97578-0bbc-4076-89c9-17305978a9b4i︠
%md
## Example 6

Find the area of the surface generated by rotating around the y-axis the graph of $f(x)=x^2$ from $x=0$ to $x=2$.
︡150d6299-cea3-45b9-a070-5554d84b489c︡{"done":true,"md":"## Example 6\n\nFind the area of the surface generated by rotating around the y-axis the graph of $f(x)=x^2$ from $x=0$ to $x=2$."}
︠2a9134ef-0aae-4955-ab29-c4141e62cc8bi︠
%md
**Solution:** Since we are rotating around the y-axis, we can find $g$ so that $x=g(y)$. We solve $y=x^2$ for $x$ to get $x=\sqrt{y}$ (note $x>0$). The x-interval $[0,2]$ corresponds to the y-interval $[0,4]$.

Now $g'(y)=\frac{1}{2\sqrt{y}}$, so $$S=\int_0^4 2\pi \sqrt{y}\sqrt{1+\left(\frac{1}{2\sqrt{y}}\right)^2}\, dy=\frac{\pi}{6}\left(17\sqrt{17}-1\right).$$
︡26319f3a-57c5-45ca-88f3-bda8e2f5357a︡{"done":true,"md":"**Solution:** Since we are rotating around the y-axis, we can find $g$ so that $x=g(y)$. We solve $y=x^2$ for $x$ to get $x=\\sqrt{y}$ (note $x>0$). The x-interval $[0,2]$ corresponds to the y-interval $[0,4]$.\n\nNow $g'(y)=\\frac{1}{2\\sqrt{y}}$, so $$S=\\int_0^4 2\\pi \\sqrt{y}\\sqrt{1+\\left(\\frac{1}{2\\sqrt{y}}\\right)^2}\\, dy=\\frac{\\pi}{6}\\left(17\\sqrt{17}-1\\right).$$"}
︠02729b45-8deb-4745-8a4c-8ffe7f90942fi︠
%md
But since we were given $f(x)$, it would be easier to do everything in terms of $x$:

$$S=\int_0^2 2\pi x\sqrt{1+(2x)^2}\, dx=\frac{\pi}{6}\left(17\sqrt{17}-1\right).$$

Here are the calculations of the two integrals:
︡c1a054e6-487e-4298-9198-c2277c55063b︡{"done":true,"md":"But since we were given $f(x)$, it would be easier to do everything in terms of $x$:\n\n$$S=\\int_0^2 2\\pi x\\sqrt{1+(2x)^2}\\, dx=\\frac{\\pi}{6}\\left(17\\sqrt{17}-1\\right).$$\n\nHere are the calculations of the two integrals:"}
︠4f83006c-400a-4a83-a530-37a5e84ee3ee︠
%var y
integral(2*pi*sqrt(y)*sqrt(1+(1/2/sqrt(y))^2),y,0,4) #using g(y)
N(_)
︡7f62452d-dd0e-4c73-ab01-853e4c3981b1︡{"stdout":"1/6*pi*(17*sqrt(17) - 1)"}︡{"stdout":"\n"}︡{"stdout":"36.1769031974114\n"}︡
︠50ee747f-f88f-4ea6-8563-ea1fe7e4bc6f︠
integral(2*pi*x*sqrt(1+4*x^2),x,0,2) #using f(x)
N(_)
︡d3988a5b-cf6a-4868-9871-b2e1df6fa299︡{"stdout":"1/6*pi*(17*sqrt(17) - 1)\n"}︡{"stdout":"36.1769031974114\n"}︡
︠8a7a7e27-12a6-45c1-bf67-5ee31a849e98︠
%auto
%hide
f(x)=x^2
revolution_plot3d(f,(x,0,2),parallel_axis='z',show_curve=True) #revolution_plot3d assumes the function f is in the xz-plane, so we rotate around the z axis.
︡74d53d43-2b3f-4dbe-bc09-fc59b2323d4d︡{"hide":"input"}︡{"file":{"filename":"762bfa2c-7f36-4150-8906-4f3907a746e4.sage3d","uuid":"762bfa2c-7f36-4150-8906-4f3907a746e4"}}︡{"done":true}︡
︠520aad2a-f7f9-41ac-9dc0-a1ba9fc0c232i︠
%md
## Example 7 (Gabriel's Horn)

Consider the surface obtained by rotating around the x-axis the graph of $\displaystyle f(x)=\frac{1}{x}$ for $x\ge 1$.

The area of this surface is $$S=\int_1^{\infty}2\pi\frac{1}{x}\sqrt{1+\left(-\frac{1}{x^2}\right)^2}\, dx \ge \int_1^{\infty}\frac{2\pi}{x}\, dx=\infty$$

$$\left[\sqrt{1+\left(-\frac{1}{x^2}\right)^2}\ge 1\right]$$

so our surface area integral diverges (infinite surface area).
︡1ceb7f78-3b58-4cbe-90a2-e7bd42085061︡{"done":true,"md":"## Example 7 (Gabriel's Horn)\n\nConsider the surface obtained by rotating around the x-axis the graph of $\\displaystyle f(x)=\\frac{1}{x}$ for $x\\ge 1$.\n\nThe area of this surface is $$S=\\int_1^{\\infty}2\\pi\\frac{1}{x}\\sqrt{1+\\left(-\\frac{1}{x^2}\\right)^2}\\, dx \\ge \\int_1^{\\infty}\\frac{2\\pi}{x}\\, dx=\\infty$$\n\n$$\\left[\\sqrt{1+\\left(-\\frac{1}{x^2}\\right)^2}\\ge 1\\right]$$\n\nso our surface area integral diverges (infinite surface area)."}
︠b4549da3-0a61-4cee-bc7a-84c5651182cfi︠
%md
The curious thing about Gabriel's Horn is that it holds a finite volume. Using the method of disks, the enclosed volume is $$V=\int_1^{\infty} \pi\left( \frac{1}{x}\right)^2\, dx=\pi.$$
︡cc412386-c1a1-40b1-8626-b21f5c0fd1fd︡{"done":true,"md":"The curious thing about Gabriel's Horn is that it holds a finite volume. Using the method of disks, the enclosed volume is $$V=\\int_1^{\\infty} \\pi\\left( \\frac{1}{x}\\right)^2\\, dx=\\pi.$$"}
︠6550578c-c8c8-4f59-89f7-83344c3249e9︠
integral(pi/x^2,x,1,+Infinity)
︡94450fd9-9a65-4745-8c2c-2f0e22c522c0︡{"stdout":"pi\n"}︡
︠751c0d88-230c-49fa-bb34-cd67bd630c6fi︠
%md
Here's a piece of the horn:
︡300a4c58-c7a3-48f3-a771-4fe260decad4︡{"md":"Here's a piece of the horn:\n"}︡
︠524c8293-3006-4079-8cdf-0e19bdac8188︠
%auto
%hide
f(x)=1/x
revolution_plot3d(f,(x,1,5),parallel_axis='x',show_curve=True)
︡a3155d50-f92b-4d2b-877d-aa8074694282︡{"hide":"input"}︡{"file":{"filename":"da845b20-0bdf-4c09-88f8-54ee60c10af6.sage3d","uuid":"da845b20-0bdf-4c09-88f8-54ee60c10af6"}}︡{"done":true}︡
︠73bf0ed2-a8d6-43a8-8cf0-91ba7222670f︠


















