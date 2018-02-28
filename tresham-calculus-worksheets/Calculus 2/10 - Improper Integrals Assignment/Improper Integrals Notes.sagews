︠5bce0f72-5c89-4b35-ae1e-0755770f7137ai︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡fb248865-e25b-4a0d-ba85-332ccf8bb116︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠7212fd2c-728e-4eee-bfcf-27656f05914di︠
%md
### Prereqisites:

* Intro to Sage
* Graphing and Solving Equations
* Limits
* Symbolic Integration
︡7519afc8-a245-4341-87f2-1b176ea6aec3︡{"done":true,"md":"### Prereqisites:\n\n* Intro to Sage\n* Graphing and Solving Equations\n* Limits\n* Symbolic Integration"}
︠d9ec0555-795d-43d0-9db2-54592fa4d541i︠
%md
# Improper Integrals

A definite integral is considered "improper" if the interval of integration is unbounded, the function being integrated is unbounded on the interval of integration, or both. In such cases, the usual definition of the definite integral does not apply.
︡8c676388-9c73-4bf3-a298-6d6fbebd2786︡{"done":true,"md":"# Improper Integrals\n\nA definite integral is considered \"improper\" if the interval of integration is unbounded, the function being integrated is unbounded on the interval of integration, or both. In such cases, the usual definition of the definite integral does not apply."}
︠d6c7bfa9-0abb-4531-aea7-21d928c4b9dei︠
%md
## Example 1

Consider the function $\displaystyle f(x)=\frac{1}{x^2}$. Suppose we wanted the area under this curve for $x\ge1$; in other words, we want $\displaystyle \int_1^{\infty} f(x)\,dx$. This is an infinite region, so you might assume that it has infinite area. However, in this case the area is actually finite.
︡ced21955-95ba-4b8a-97b9-a8a5718571be︡{"done":true,"md":"## Example 1\n\nConsider the function $\\displaystyle f(x)=\\frac{1}{x^2}$. Suppose we wanted the area under this curve for $x\\ge1$; in other words, we want $\\displaystyle \\int_1^{\\infty} f(x)\\,dx$. This is an infinite region, so you might assume that it has infinite area. However, in this case the area is actually finite."}
︠8c5a9b4c-f1d8-436f-86bf-a7a0e94737bes︠
plot(1/x^2,xmin=0,xmax=10,ymax=2)+plot(1/x^2,xmin=1,xmax=10,fill='axis')
︡37dba09c-cab2-43af-b5ae-bde848e8bc84︡{"file":{"filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/8882/tmp_Pp4P32.svg","show":true,"uuid":"556d8b3d-1f0f-414d-9482-84b77bbfc360"},"once":false}︡{"done":true}
︠2839dbe2-c0bc-4232-b885-a49c74e4c876i︠
%md
To see this, consider the integral $\displaystyle\int_1^t \frac{1}{x^2}\,dx$ for any $t>1$. This is a normal definite integral, and the answer is $\displaystyle 1-\frac{1}{t}$.
︡2272953c-7137-4f53-85d2-a28827a8a7c6︡{"done":true,"text":null,"md":"To see this, consider the integral $\\displaystyle\\int_1^t \\frac{1}{x^2}\\,dx$ for any $t>1$. This is a normal definite integral, and the answer is $\\displaystyle 1-\\frac{1}{t}$."}
︠d6fe4fbd-cafe-4124-bc4c-0f841a93d1d4i︠
%md
What happens as $t\to\infty$? We have $\displaystyle 1-\frac{1}{t}\to 1$.

So it make sense to say $\displaystyle\int_1^{\infty}f(x)\,dx=1$.
︡2aa46fe4-6393-45fb-b322-fff0ebd24d63︡{"done":true,"md":"What happens as $t\\to\\infty$? We have $\\displaystyle 1-\\frac{1}{t}\\to 1$.\n\nSo it make sense to say $\\displaystyle\\int_1^{\\infty}f(x)\\,dx=1$."}
︠027ae907-9451-4676-83d4-b429a89d5c2di︠
%md
## Infinite Intervals

The previous example falls under the first type of improper integral, when one or both of the limits of integration is $\pm\infty$. In this case, the region under the curve is infinite in the horizontal direction.

Here is the **definition**:

If $\displaystyle\int_a^tf(x)\,dx$ exists for every $t\ge a$, then we define $\displaystyle\int_a^{\infty}f(x)\,dx=\lim_{t\to \infty}\int_a^tf(x)\,dx$, provided this limit exists.

If the limit exists, we say the improper integral **converges** (or is convergent). Otherwise, we say it **diverges** (or is divergent).
︡558c6657-4d9f-437f-9e82-5c8615e7341b︡{"done":true,"md":"## Infinite Intervals\n\nThe previous example falls under the first type of improper integral, when one or both of the limits of integration is $\\pm\\infty$. In this case, the region under the curve is infinite in the horizontal direction.\n\nHere is the **definition**:\n\nIf $\\displaystyle\\int_a^tf(x)\\,dx$ exists for every $t\\ge a$, then we define $\\displaystyle\\int_a^{\\infty}f(x)\\,dx=\\lim_{t\\to \\infty}\\int_a^tf(x)\\,dx$, provided this limit exists.\n\nIf the limit exists, we say the improper integral **converges** (or is convergent). Otherwise, we say it **diverges** (or is divergent)."}
︠12ccf1a8-7dd4-47cd-9072-c4c830febda2i︠
%md
Similarly, if $\displaystyle\int_t^bf(x)\,dx$ exists for every $t\le b$, then we define $\displaystyle\int_{-\infty}^bf(x)\,dx=\lim_{t\to -\infty}\int_t^bf(x)\,dx$, provided this limit exists.
︡da79e95a-1a83-4691-a17b-ff44325b1796︡{"done":true,"md":"Similarly, if $\\displaystyle\\int_t^bf(x)\\,dx$ exists for every $t\\le b$, then we define $\\displaystyle\\int_{-\\infty}^bf(x)\\,dx=\\lim_{t\\to -\\infty}\\int_t^bf(x)\\,dx$, provided this limit exists."}
︠ee5f1eb5-d9f4-4f54-b987-6ee0f3b75722i︠
%md
Also, if there is a number $a$ such that $\displaystyle\int_{-\infty}^af(x)\,dx$ and $\displaystyle\int_a^{\infty}f(x)\,dx$ both converge, then we define $\displaystyle\int_{-\infty}^{\infty}f(x)\,dx=\int_{-\infty}^af(x)\,dx+\int_a^{\infty}f(x)\,dx$.
︡a3d92228-34ed-42cc-aaa3-16c934dd8544︡{"done":true,"md":"Also, if there is a number $a$ such that $\\displaystyle\\int_{-\\infty}^af(x)\\,dx$ and $\\displaystyle\\int_a^{\\infty}f(x)\\,dx$ both converge, then we define $\\displaystyle\\int_{-\\infty}^{\\infty}f(x)\\,dx=\\int_{-\\infty}^af(x)\\,dx+\\int_a^{\\infty}f(x)\\,dx$."}
︠fd89fca5-a611-453e-ba6c-66abf65068c3i︠
%md
Note: If these integrals converge for one value of $a$, then they converge for any value of $a$. The answer does not depend on the choice of $a$.

</br>
It is interesting that $\displaystyle\lim_{t\to\infty}\int_{-t}^tf(x)\,dx$ may not equal $\displaystyle\int_{-\infty}^{\infty}f(x)\,dx$.
︡1632c351-5ef3-43c2-94ee-6b75c69e5488︡{"done":true,"md":"Note: If these integrals converge for one value of $a$, then they converge for any value of $a$. The answer does not depend on the choice of $a$.\n\n</br>\nIt is interesting that $\\displaystyle\\lim_{t\\to\\infty}\\int_{-t}^tf(x)\\,dx$ may not equal $\\displaystyle\\int_{-\\infty}^{\\infty}f(x)\\,dx$."}
︠624a7508-b927-4eae-9ebb-ba50873077cfis︠
%md
## Example 2

Let's explore integrals of the form $\displaystyle\int_1^{\infty}\frac{1}{x^p}\,dx$.

We already saw what happens when $p=2$ above, so let's try $p=1,\ 3,\ \frac{1}{2},\ \frac{3}{2},$ etc.
︡900e7e20-9e49-4691-b19b-fb42ba997103︡{"md":"## Example 2\n\nLet's explore integrals of the form $\\displaystyle\\int_1^{\\infty}\\frac{1}{x^p}\\,dx$.\n\nWe already saw what happens when $p=2$ above, so let's try $p=1,\\ 3,\\ \\frac{1}{2},\\ \\frac{3}{2},$ etc.\n"}︡
︠a5a9a196-0340-4d12-96f3-c322a100396esi︠
%auto
%hide
@interact
def _(p=2):
    %var t
    assume(t>1)
    print 'Take the limit as t goes to infinity of'
    show(integral(1/x^p,x,1,t,algorithm="sympy"))
    forget()
    try:
        S=integral(1/x^p,x,1,+Infinity,algorithm="sympy")
        print 'The integral is', S
    except ValueError:
        print 'The integral diverges.'
︡f463364f-9398-462f-b19a-2607b2c4de05︡{"hide":"input"}︡{"interact":{"controls":[{"control_type":"input-box","default":2,"label":"p","nrows":1,"readonly":false,"submit_button":null,"type":null,"var":"p","width":null}],"flicker":false,"id":"b3d28fb8-3561-4b7f-8488-5fd36dc9ad82","layout":[[["p",12,null]],[["",12,null]]],"style":"None"}}︡{"done":true}︡
︠121d7baa-e746-4bd6-90b6-ad888c430aa4si︠
%md
## Unbounded Integrands

The second type of improper integral is when the integrand (the function being integrated) is unbounded on the interval of integration. In this case, the region under the curve is infinite in the vertical direction.
︡876f0465-71e5-40e1-9258-da902a35b2ed︡{"done":true,"md":"## Unbounded Integrands\n\nThe second type of improper integral is when the integrand (the function being integrated) is unbounded on the interval of integration. In this case, the region under the curve is infinite in the vertical direction."}
︠e677b094-019f-4563-8de6-51273592529ei︠
%md
## Example 3

Consider $\displaystyle\int_0^1 \ln(x)\, dx$.

We have finite limits of integration, but notice that $\ln(x)$ is not bounded on the interval $[0,1]$, since $\displaystyle\lim_{x\to 0^+}\ln(x)=-\infty$.
︡8242223c-5605-449a-b2ce-789de4a2e638︡{"done":true,"md":"## Example 3\n\nConsider $\\displaystyle\\int_0^1 \\ln(x)\\, dx$.\n\nWe have finite limits of integration, but notice that $\\ln(x)$ is not bounded on the interval $[0,1]$, since $\\displaystyle\\lim_{x\\to 0^+}\\ln(x)=-\\infty$."}
︠60484700-fb76-4b56-b666-5dcf2a93bbb8︠
plot(log(x),xmin=0,xmax=2,ymin=-4)+plot(log(x),xmin=0,xmax=1,fill='axis')
︡1a0ab547-78ac-4b01-a9fd-4944b95c77d6︡{"once":false,"file":{"show":true,"uuid":"7d046e8c-de94-47a0-b480-7fa1d66ca4fb","filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/30117/tmp_2n9bNu.svg"}}︡{"html":"<div align='center'></div>"}︡
︠284a712b-2335-4b07-8e27-04b4c7063d0di︠
%md
Notice that for $0 < t < 1$ we have $\displaystyle\int_t^1\ln(x)\,dx=t-t\ln(t)-1$.
︡2a7d1238-4024-4e1c-86d7-3507ea22a82f︡{"md":"Notice that for $0 < t < 1$ we have $\\displaystyle\\int_t^1\\ln(x)\\,dx=t-t\\ln(t)-1$.\n"}︡
︠e42efafb-8bea-434d-801d-4f176cc3b566i︠
%md
If we try to compute this integral in Sage, it will ask us for more information.
︡05a6ea44-64b3-40d8-bfb4-9932c1c5fc85︡{"md":"If we try to compute this integral in Sage, it will ask us for more information.\n"}︡
︠36268b1b-724e-4f09-96b2-289e97574487︠
%var t
integral(log(x),x,t,1)
︡f5d0f8cf-cd3e-459e-acf1-2e4d57cd2e15︡{"stderr":"Error in lines 2-2\nTraceback (most recent call last):\n  File \"/projects/9189c752-e334-4311-afa9-605b6159620a/.sagemathcloud/sage_server.py\", line 879, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"/projects/sage/sage-6.7/local/lib/python2.7/site-packages/sage/misc/functional.py\", line 663, in integral\n    return x.integral(*args, **kwds)\n  File \"sage/symbolic/expression.pyx\", line 10712, in sage.symbolic.expression.Expression.integral (build/cythonized/sage/symbolic/expression.cpp:52941)\n    return integral(self, *args, **kwds)\n  File \"/projects/sage/sage-6.7/local/lib/python2.7/site-packages/sage/symbolic/integration/integral.py\", line 761, in integrate\n    return definite_integral(expression, v, a, b, hold=hold)\n  File \"sage/symbolic/function.pyx\", line 994, in sage.symbolic.function.BuiltinFunction.__call__ (build/cythonized/sage/symbolic/function.cpp:10865)\n    res = super(BuiltinFunction, self).__call__(\n  File \"sage/symbolic/function.pyx\", line 502, in sage.symbolic.function.Function.__call__ (build/cythonized/sage/symbolic/function.cpp:6801)\n    res = g_function_evalv(self._serial, vec, hold)\n  File \"sage/symbolic/function.pyx\", line 1065, in sage.symbolic.function.BuiltinFunction._evalf_or_eval_ (build/cythonized/sage/symbolic/function.cpp:11522)\n    return self._eval0_(*args)\n  File \"/projects/sage/sage-6.7/local/lib/python2.7/site-packages/sage/symbolic/integration/integral.py\", line 176, in _eval_\n    return integrator(*args)\n  File \"/projects/sage/sage-6.7/local/lib/python2.7/site-packages/sage/symbolic/integration/external.py\", line 23, in maxima_integrator\n    result = maxima.sr_integral(expression, v, a, b)\n  File \"/projects/sage/sage-6.7/local/lib/python2.7/site-packages/sage/interfaces/maxima_lib.py\", line 784, in sr_integral\n    self._missing_assumption(s)\n  File \"/projects/sage/sage-6.7/local/lib/python2.7/site-packages/sage/interfaces/maxima_lib.py\", line 993, in _missing_assumption\n    raise ValueError(outstr)\nValueError: Computation failed since Maxima requested additional constraints; using the 'assume' command before evaluation *may* help (example of legal syntax is 'assume(t-1>0)', see `assume?` for more details)\nIs t-1 positive, negative or zero?\n"}︡
︠0573f52b-b78f-4038-96d8-daa53da3cd01i︠
%md
Sage needs some information about $t$. We can give it this information using the assume command.
︡e90e4003-ad04-4cfc-97fd-631f33526228︡{"md":"Sage needs some information about $t$. We can give it this information using the assume command.\n"}︡
︠f15a7426-d31f-4dd1-be06-c4f17c34cc39︠
%var t
assume(t>0)
assume(t<1)
integral(log(x),x,t,1)
forget()  #this forgets the assumptions
︡94c1b711-9c0b-4e27-88bb-d2c12db052a4︡{"stdout":"-t*log(t) + t - 1\n"}︡
︠bec34bab-0a0d-495b-8bce-ea60cdd97d56i︠
%md
What happens as $t\to0$?
︡f1b76243-7615-4cb6-aaf1-e152984aab58︡{"md":"What happens as $t\\to0$?\n"}︡
︠133feaab-ac5b-4df1-bf74-76b6ff4ac709︠
limit(t-t*log(t)-1,t=0,dir='+') #use L'Hospital's Rule for t*ln(t)
︡8622510b-edf9-45bf-a5b3-005968d18ce3︡{"stdout":"-1\n"}︡
︠afbc86ce-3254-4169-92ed-4a22adb3f77bi︠
%md
So it makes sense to define $\displaystyle\int_0^1\ln(x)\,dx=-1$.
︡ad3572d1-5b08-48b6-a073-6ff1e291c1a6︡{"done":true,"md":"So it makes sense to define $\\displaystyle\\int_0^1\\ln(x)\\,dx=-1$."}
︠4533b2f5-64b3-4ac4-a282-0aa004a17264i︠
%md
Here's the **definition** in general:

If $f(x)$ is continuous on the interval $(a,b]$ and is unbounded near $a$, then we define $\displaystyle\int_a^bf(x)\,dx=\lim_{t\to a^+}\int_t^bf(x)\,dx$, provided this limit exists.
︡2cb1a0b1-ceab-4d5d-9133-04459d1ef51a︡{"done":true,"md":"Here's the **definition** in general:\n\nIf $f(x)$ is continuous on the interval $(a,b]$ and is unbounded near $a$, then we define $\\displaystyle\\int_a^bf(x)\\,dx=\\lim_{t\\to a^+}\\int_t^bf(x)\\,dx$, provided this limit exists."}
︠4e17ed82-a578-4edb-9ad3-420600884fb5i︠
%md
Similarly, if $f(x)$ is continuous on the interval $[a,b)$ and is unbounded near $b$, then we define $\displaystyle\int_a^bf(x)\,dx=\lim_{t\to b^-}\int_a^tf(x)\,dx$, provided this limit exists.
︡46f29ce6-d2e4-4286-924f-f9706314b1c3︡{"done":true,"md":"Similarly, if $f(x)$ is continuous on the interval $[a,b)$ and is unbounded near $b$, then we define $\\displaystyle\\int_a^bf(x)\\,dx=\\lim_{t\\to b^-}\\int_a^tf(x)\\,dx$, provided this limit exists."}
︠720e23d0-c2bd-4045-a74f-7ce5100afa7fi︠
%md
Also, if $f(x)$ is continuous on the intervals $[a,c)$ and $(c,b]$ and unbounded near $c$, then we define $\displaystyle\int_a^bf(x)\,dx=\int_a^cf(x)\,dx+\int_c^bf(x)\,dx$, provide both of these converge.
︡131733bf-bcd1-45f6-b593-6b9b5837ab9c︡{"done":true,"md":"Also, if $f(x)$ is continuous on the intervals $[a,c)$ and $(c,b]$ and unbounded near $c$, then we define $\\displaystyle\\int_a^bf(x)\\,dx=\\int_a^cf(x)\\,dx+\\int_c^bf(x)\\,dx$, provide both of these converge."}
︠89ba0a6a-a23d-4743-a09f-43ad66a25583is︠
%md
## Example 4

$$\int_0^3\frac{1}{x\sqrt{x}}\,dx$$

Let's look at a graph of the integrand. Notice that it is unbounded near 0.
︡41c80c29-39c0-4089-a707-f4f2dd459a2b︡{"md":"## Example 4\n\n$$\\int_0^3\\frac{1}{x\\sqrt{x}}\\,dx$$\n\nLet's look at a graph of the integrand. Notice that it is unbounded near 0.\n"}︡
︠e282c1ff-babb-449b-8490-b6db4d582574︠
plot(1/(x*sqrt(x)),xmin=0,xmax=3,ymax=10)
︡b51fdd2c-e650-4e49-85be-6d3a9757ba7a︡{"once":false,"file":{"show":true,"uuid":"731b1070-c2e3-4d2d-99fd-2b9839f8d202","filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/22528/tmp_6jQOD5.svg"}}︡{"html":"<div align='center'></div>"}︡
︠355908a7-377a-4bdc-92be-c9e50f4708aai︠
%md
Thus, this is an improper integral, so $$\int_0^3\frac{1}{x\sqrt{x}}\,dx=\lim_{t\to 0^+}\int_t^3\frac{1}{x\sqrt{x}}\,dx=\lim_{t\to 0^+}-\frac{2\sqrt{3}}{3}+\frac{2}{\sqrt{t}}=\infty$$

Therefore, this integral diverges.
︡a77a7414-b91b-4554-bbca-4a5e2ed7c8bc︡{"md":"Thus, this is an improper integral, so $$\\int_0^3\\frac{1}{x\\sqrt{x}}\\,dx=\\lim_{t\\to 0^+}\\int_t^3\\frac{1}{x\\sqrt{x}}\\,dx=\\lim_{t\\to 0^+}-\\frac{2\\sqrt{3}}{3}+\\frac{2}{\\sqrt{t}}=\\infty$$\n\nTherefore, this integral diverges.\n"}︡
︠56c36aa3-2a77-4bf7-a258-17883b7ebd11︠
%var t
assume(t>0)  #don't forget these assumptions
assume(t<3)
show(integral(1/(x*sqrt(x)),x,t,3))
forget()
︡dadf8280-8001-4a5c-aa4d-46cc4e97d484︡{"html":"<div align='center'>$\\displaystyle -\\frac{2}{3} \\, \\sqrt{3} + \\frac{2}{\\sqrt{t}}$</div>"}︡
︠7325efd9-749c-48dd-b4ae-e023ab4b5017︠
limit(-2/3*sqrt(3)+2/sqrt(t),t=0,dir='+')
︡c7889ec9-3b50-4735-b9f2-43e3d20dadb1︡{"stdout":"+Infinity\n"}︡
︠a7b54d53-858b-4ce9-807a-1b128d8747a4i︠
%md
Note that Sage can handle improper integrals. It informs us that this integral is divergent (see the last line of the error output).
︡7d864822-5906-44c2-b8d7-cf8e03c1f415︡{"md":"Note that Sage can handle improper integrals. It informs us that this integral is divergent (see the last line of the error output).\n"}︡
︠ef28fabd-6943-4f68-8826-f6071bfee3d9︠
integral(1/(x*sqrt(x)),x,0,3)
︡8840d164-eb36-4efa-bcc2-fa39845b33b3︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/9189c752-e334-4311-afa9-605b6159620a/.sagemathcloud/sage_server.py\", line 736, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"/usr/local/sage/sage-6.3.beta6/local/lib/python2.7/site-packages/sage/misc/functional.py\", line 799, in integral\n    return x.integral(*args, **kwds)\n  File \"expression.pyx\", line 10184, in sage.symbolic.expression.Expression.integral (build/cythonized/sage/symbolic/expression.cpp:44846)\n  File \"/usr/local/sage/sage-6.3.beta6/local/lib/python2.7/site-packages/sage/symbolic/integration/integral.py\", line 699, in integrate\n    return definite_integral(expression, v, a, b)\n  File \"function.pyx\", line 914, in sage.symbolic.function.BuiltinFunction.__call__ (build/cythonized/sage/symbolic/function.cpp:8891)\n  File \"function.pyx\", line 504, in sage.symbolic.function.Function.__call__ (build/cythonized/sage/symbolic/function.cpp:5761)\n  File \"/usr/local/sage/sage-6.3.beta6/local/lib/python2.7/site-packages/sage/symbolic/integration/integral.py\", line 173, in _eval_\n    return integrator(*args)\n  File \"/usr/local/sage/sage-6.3.beta6/local/lib/python2.7/site-packages/sage/symbolic/integration/external.py\", line 21, in maxima_integrator\n    result = maxima.sr_integral(expression, v, a, b)\n  File \"/usr/local/sage/sage-6.3.beta6/local/lib/python2.7/site-packages/sage/interfaces/maxima_lib.py\", line 786, in sr_integral\n    raise ValueError(\"Integral is divergent.\")\nValueError: Integral is divergent.\n"}︡
︠e39cd4fb-ebbb-4cfc-9332-d6db920972ffis︠
%md
## Example 5

$$\int_1^9\frac{1}{\sqrt{9-x}}\,dx$$

When we look at the graph, we see that the integrand is unbounded near 9.
︡1c1ff890-417b-4949-869a-53ad58e88375︡{"md":"## Example 5\n\n$$\\int_1^9\\frac{1}{\\sqrt{9-x}}\\,dx$$\n\nWhen we look at the graph, we see that the integrand is unbounded near 9.\n"}︡
︠05772f65-a0df-4737-bd1e-1d076e3b39c7s︠
plot(1/sqrt(9-x),xmin=1,xmax=9,ymax=10)
︡4cc6c203-561a-4638-8018-49d265e4210b︡{"once":false,"file":{"show":true,"uuid":"75303bfa-0318-4fce-a10d-533a466ff5f1","filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/25250/tmp_o6IMKe.svg"}}︡{"html":"<div align='center'></div>"}︡
︠345c289a-801b-4c25-a8cd-aaaaa40436f5i︠
%md
So we have $$\int_1^9\frac{1}{\sqrt{9-x}}\,dx=\lim_{t\to 9^-}\int_1^t\frac{1}{\sqrt{9-x}}\,dx=\lim_{t\to 9^-}(4\sqrt{2}-2\sqrt{9-t})=4\sqrt{2}=2^{5/2}$$
︡13cb2121-2e61-45d9-ba25-96579e999952︡{"md":"So we have $$\\int_1^9\\frac{1}{\\sqrt{9-x}}\\,dx=\\lim_{t\\to 9^-}\\int_1^t\\frac{1}{\\sqrt{9-x}}\\,dx=\\lim_{t\\to 9^-}(4\\sqrt{2}-2\\sqrt{9-t})=4\\sqrt{2}=2^{5/2}$$\n"}︡
︠e4841866-2837-4731-936c-266bcfb8cd61︠
%var t
assume(t<9)
assume(t>1)
integral(1/sqrt(9-x),x,1,t)
forget()
︡c09d83c9-c2fd-475e-a746-7c8c155a5d10︡{"stdout":"(4*sqrt(2)) - 2*sqrt(-t + 9)\n"}︡
︠d7770178-dbec-4f1e-9f83-0a3a6f1077b2︠
limit(4*sqrt(2) - 2*sqrt(-t + 9),t=9,dir='-')
︡bf161e53-5207-4f7d-a1b0-c2e0d7b4772b︡{"stdout":"2^(5/2)\n"}︡
︠98a000ca-8536-4a75-88ce-0728a510f3e4i︠
%md
Here is the direct computation:
︡a9aed7f3-94d0-4625-80b2-28eb28637b3f︡{"md":"Here is the direct computation:\n"}︡
︠5f188859-940b-47d4-a18f-a24a0d15835b︠
integral(1/sqrt(9-x),x,1,9)
︡9bb2bd6c-289c-4e61-bd62-c7a57dd9aa3d︡{"stdout":"2^(5/2)\n"}︡
︠23079d05-db3d-4d11-81df-842df0f06312i︠
%md
## Example 6

$$\int_0^3\frac{1}{x-1}$$

Notice that $\displaystyle\frac{1}{x-1}$ is unbounded near $1$, which is in the middle of our interval (not one of the limits of integration).
︡26b09fb9-3606-4044-ba6e-2afa52a76b8a︡{"done":true,"md":"## Example 6\n\n$$\\int_0^3\\frac{1}{x-1}$$\n\nNotice that $\\displaystyle\\frac{1}{x-1}$ is unbounded near $1$, which is in the middle of our interval (not one of the limits of integration)."}
︠2c36aafd-3e7d-4730-8559-2a31e27aa3fbs︠
plot(1/(x-1),xmin=0,xmax=3,detect_poles=True,ymin=-20,ymax=20)
︡3e1e1f2c-b289-4d03-8ede-7ad07e7b86d9︡{"file":{"filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/8882/tmp_A1YTsC.svg","show":true,"uuid":"20e1b0c5-06b6-4300-b85c-ab46d8a62d61"},"once":false}︡{"done":true}
︠6fd087d7-695b-42d4-b108-bb31d61ac150i︠
%md
In this case, we need to split our integral into two:

$$\int_0^3\frac{1}{x-1}=\int_0^1\frac{1}{x-1}+\int_1^3\frac{1}{x-1}$$

Both of the integrals on the right are unbounded near one of the limits of integration, like the previous examples.

︡49f8afd7-e434-422a-9f8d-f6b10d032141︡{"done":true,"md":"In this case, we need to split our integral into two:\n\n$$\\int_0^3\\frac{1}{x-1}=\\int_0^1\\frac{1}{x-1}+\\int_1^3\\frac{1}{x-1}$$\n\nBoth of the integrals on the right are unbounded near one of the limits of integration, like the previous examples."}
︠f442c07c-2e6d-4b44-a503-6d37d8e162c5i︠
%md
Now we use limits to evaluate the two improper integrals.

$$\int_0^1\frac{1}{x-1}=\lim_{t\to1^-}\int_0^t\frac{1}{x-1}=\lim_{t\to1^-}\left.\ln(|x-1|)\right|_0^t=\lim_{t\to1^-}\ln(|t-1|)=-\infty$$
︡ee2e6e79-53b7-4c5d-a64e-cdb441ab33a8︡{"done":true,"md":"Now we use limits to evaluate the two improper integrals.\n\n$$\\int_0^1\\frac{1}{x-1}=\\lim_{t\\to1^-}\\int_0^t\\frac{1}{x-1}=\\lim_{t\\to1^-}\\left.\\ln(|x-1|)\\right|_0^t=\\lim_{t\\to1^-}\\ln(|t-1|)=-\\infty$$"}
︠02e5beaf-78ef-4015-b17c-a447f0117096s︠
%var t
assume(t>0)
assume(t<1)
integral(1/(x-1),x,0,t)
forget()
︡f422df6c-7946-4bb0-bdb7-b25d20810f64︡{"stdout":"log(-t + 1)\n"}︡{"done":true}︡
︠214bc78c-7948-4e57-958e-1aec98eb2226s︠
limit(log(-t + 1),t=1,dir='-')
︡4779bf53-bab8-478c-b61a-b4a8adbc36ad︡{"stdout":"-Infinity\n"}︡{"done":true}
︠82a836a9-eef2-4c7f-90c8-53ae05cdad7bi︠
%md
$$\int_1^3\frac{1}{x-1}=\lim_{t\to1^+}\int_t^3\frac{1}{x-1}=\lim_{t\to1^+}\left.\ln(|x-1|)\right|_t^3=\lim_{t\to1^+}\ln(2)-\ln(|t-1|)=\infty$$
︡75d5686c-75e9-43ff-8ad6-c204442a07db︡{"done":true,"md":"$$\\int_1^3\\frac{1}{x-1}=\\lim_{t\\to1^+}\\int_t^3\\frac{1}{x-1}=\\lim_{t\\to1^+}\\left.\\ln(|x-1|)\\right|_t^3=\\lim_{t\\to1^+}\\ln(2)-\\ln(|t-1|)=\\infty$$"}
︠179b9871-bfb3-457f-930c-4bcd97401d6b︠
%var t
assume(t>1)
assume(t<3)
integral(1/(x-1),x,t,3)
forget()
︡3f260b63-bdd0-4f28-a64d-b4ca7142059f︡{"stdout":"log(2) - log(t - 1)\n"}︡
︠f211c083-ed90-4f56-80bc-521aa02de462︠
limit(log(2) - log(t - 1),t=1,dir='+')
︡140d3cc8-12f2-4ed3-9de5-b451e5c723ab︡{"stdout":"+Infinity\n"}︡
︠0c886d77-e2c6-4799-827c-797e4fa39c9ci︠
%md
Since one of these integrals (actually both) diverges, the original integral diverges.

</br>

Note: It is *not* correct to say the answer is $-\infty+\infty=0$.
︡bf23144f-1548-42f1-8a31-a5d9e7163f70︡{"done":true,"md":"Since one of these integrals (actually both) diverges, the original integral diverges.\n\n</br>\n\nNote: It is *not* correct to say the answer is $-\\infty+\\infty=0$."}
︠04af793e-ccc9-4a0c-9e3b-89d6d6ba01c7i︠
%md
Here is the direct computation in Sage. Note that Sage tells us the integral is divergent.
︡b7f44c53-b001-4173-87dd-20404b46c5a5︡{"done":true,"md":"Here is the direct computation in Sage. Note that Sage tells us the integral is divergent."}
︠acebbaf6-9b1f-4400-8aa9-89f9b399f990︠
integral(1/(x-1),x,0,3)
︡f69c65c7-1994-4258-bccb-cdafc5ce00b8︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/9189c752-e334-4311-afa9-605b6159620a/.sagemathcloud/sage_server.py\", line 873, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"/usr/local/sage/sage-6.5/local/lib/python2.7/site-packages/sage/misc/functional.py\", line 663, in integral\n    return x.integral(*args, **kwds)\n  File \"sage/symbolic/expression.pyx\", line 10613, in sage.symbolic.expression.Expression.integral (build/cythonized/sage/symbolic/expression.cpp:52409)\n    return integral(self, *args, **kwds)\n  File \"/usr/local/sage/sage-6.5/local/lib/python2.7/site-packages/sage/symbolic/integration/integral.py\", line 731, in integrate\n    return definite_integral(expression, v, a, b, hold=hold)\n  File \"sage/symbolic/function.pyx\", line 993, in sage.symbolic.function.BuiltinFunction.__call__ (build/cythonized/sage/symbolic/function.cpp:10572)\n    res = super(BuiltinFunction, self).__call__(\n  File \"sage/symbolic/function.pyx\", line 499, in sage.symbolic.function.Function.__call__ (build/cythonized/sage/symbolic/function.cpp:6457)\n    res = g_function_evalv(self._serial, vec, hold)\n  File \"sage/symbolic/function.pyx\", line 1064, in sage.symbolic.function.BuiltinFunction._evalf_or_eval_ (build/cythonized/sage/symbolic/function.cpp:11230)\n    return self._eval0_(*args)\n  File \"/usr/local/sage/sage-6.5/local/lib/python2.7/site-packages/sage/symbolic/integration/integral.py\", line 175, in _eval_\n    return integrator(*args)\n  File \"/usr/local/sage/sage-6.5/local/lib/python2.7/site-packages/sage/symbolic/integration/external.py\", line 21, in maxima_integrator\n    result = maxima.sr_integral(expression, v, a, b)\n  File \"/usr/local/sage/sage-6.5/local/lib/python2.7/site-packages/sage/interfaces/maxima_lib.py\", line 782, in sr_integral\n    raise ValueError(\"Integral is divergent.\")\nValueError: Integral is divergent.\n"}︡
︠451c9198-0b25-466f-9628-cb31d46ec1d1i︠
%md
If you're doing this by hand, it is very important that you notice at the beginning that the integrand is unbounded, and so the integral is improper. If you treat this like a regular definite integral, you will get the wrong answer:

$$\int_0^3\frac{1}{x-1}=\ln(|x-1|)|_0^3=\ln(|3-1|)-\ln(|0-1|)=\ln(2)$$

The integral diverges; it is *not* equal to $\ln(2)$. So what went wrong? When you compute this like a normal definite integral, you are assuming that the integrand is bounded on the interval of integration (that's part of the definition of the definite integral). Since this assumption is false, you get the wrong answer.

So be on the lookout for unbounded functions!
︡3b9acd24-2dce-40a5-ab4f-f9a5bb2a3566︡{"done":true,"md":"If you're doing this by hand, it is very important that you notice at the beginning that the integrand is unbounded, and so the integral is improper. If you treat this like a regular definite integral, you will get the wrong answer:\n\n$$\\int_0^3\\frac{1}{x-1}=\\ln(|x-1|)|_0^3=\\ln(|3-1|)-\\ln(|0-1|)=\\ln(2)$$\n\nThe integral diverges; it is *not* equal to $\\ln(2)$. So what went wrong? When you compute this like a normal definite integral, you are assuming that the integrand is bounded on the interval of integration (that's part of the definition of the definite integral). Since this assumption is false, you get the wrong answer.\n\nSo be on the lookout for unbounded functions!"}
︠b027b20c-69ed-4993-a548-5273bd419933is︠
%md
## Example 7

$$\int_0^{\infty}\frac{1}{\sqrt{x}(1+x)}\,dx$$

Notice that the interval of integration is unbounded, and the integrand is unbounded near 0. So we need to split this up into two integrals.
︡b33a633f-79a6-4558-b975-181b559cc175︡{"md":"## Example 7\n\n$$\\int_0^{\\infty}\\frac{1}{\\sqrt{x}(1+x)}\\,dx$$\n\nNotice that the interval of integration is unbounded, and the integrand is unbounded near 0. So we need to split this up into two integrals.\n"}︡
︠3fac1c41-3dcf-404f-9afb-0e264f992ad7︠
plot(1/(sqrt(x)*(1+x)),xmin=0,xmax=10,ymax=5)
︡5264eedf-7dcb-4426-ae01-49c2920c1f5e︡{"once":false,"file":{"show":true,"uuid":"3cb0987b-6c54-4273-8727-1815c878a261","filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/30117/tmp_rKZEtf.svg"}}︡{"html":"<div align='center'></div>"}︡
︠79c42d81-69ce-48f5-9df7-d7aa74dbcc7ei︠
%md
So we have

$$\int_0^{\infty}\frac{1}{\sqrt{x}(1+x)}\,dx=\lim_{t\to 0^+}\int_t^1\frac{1}{\sqrt{x}(1+x)}\,dx+\lim_{t\to \infty}\int_1^t\frac{1}{\sqrt{x}(1+x)}\,dx$$

$$=\lim_{t\to 0^+}\left(\frac{\pi}{2}-2\arctan(\sqrt{t})\right)+\lim_{t\to\infty}\left(-\frac{\pi}{2}+2\arctan(\sqrt{t})\right)=\frac{\pi}{2}+\frac{\pi}{2}=\pi$$

Note: The choice of 1 as the other limit of integration was arbitrary.
︡503a28d5-f166-4395-ad0e-ce28e153958d︡{"md":"So we have\n\n$$\\int_0^{\\infty}\\frac{1}{\\sqrt{x}(1+x)}\\,dx=\\lim_{t\\to 0^+}\\int_t^1\\frac{1}{\\sqrt{x}(1+x)}\\,dx+\\lim_{t\\to \\infty}\\int_1^t\\frac{1}{\\sqrt{x}(1+x)}\\,dx$$\n\n$$=\\lim_{t\\to 0^+}\\left(\\frac{\\pi}{2}-2\\arctan(\\sqrt{t})\\right)+\\lim_{t\\to\\infty}\\left(-\\frac{\\pi}{2}+2\\arctan(\\sqrt{t})\\right)=\\frac{\\pi}{2}+\\frac{\\pi}{2}=\\pi$$\n\nNote: The choice of 1 as the other limit of integration was arbitrary.\n"}︡
︠0c0828c5-492b-469a-ba8e-0a49c2dc913b︠
%var t
assume(t>0)
assume(t<1)
integral(1/(sqrt(x)*(1+x)),x,t,1)
forget()
︡b7c661be-679a-4010-8e5f-49b233e2875e︡{"stdout":"1/2*pi - 2*arctan(sqrt(t))\n"}︡
︠a6d9a2ee-036a-4b91-bda9-f879c7efbf10︠
%var t
assume(t>1)
integral(1/(sqrt(x)*(1+x)),x,1,t)
forget()
︡ba866e4b-c3f6-4f15-8db7-6e0541fcaad9︡{"stdout":"-1/2*pi + 2*arctan(sqrt(t))\n"}︡
︠fdd2f2b0-b841-42e2-90a5-8f5b7426d3c8︠
limit(1/2*pi - 2*arctan(sqrt(t)),t=0,dir='+')
︡680fee16-b3b4-4ae8-a039-5dfbb0c4ae43︡{"stdout":"1/2*pi\n"}︡
︠4b4ee956-ad95-4206-8016-b4767950a701︠
limit(-1/2*pi + 2*arctan(sqrt(t)),t=+Infinity)
︡6fc06358-8286-4552-b083-bcf42b754e46︡{"stdout":"1/2*pi\n"}︡
︠d3a0ef95-f4d7-4f14-9d05-74bc1f55ffd1i︠
%md
Here's the direct calculation:
︡2cd3a907-459f-4d72-8a79-8b9373d0c4e5︡{"md":"Here's the direct calculation:\n"}︡
︠bd8813b7-0218-4d36-8b3f-6ccb8bbe0094︠
integral(1/(sqrt(x)*(1+x)),x,0,+Infinity)
︡107de64d-a3cd-4cb0-85d9-062d7ab48db6︡{"stdout":"pi\n"}︡
︠e9e3b82b-e721-4d7f-acaa-0fbf03ded50ei︠
%md
Note: If you get an error that says "Assumption is redundant" or "Assumption is inconsistent," then find a blank line, type forget(), and hit "Run."
︡e8d15798-def6-499d-ba22-b667d676947c︡{"md":"Note: If you get an error that says \"Assumption is redundant\" or \"Assumption is inconsistent,\" then find a blank line, type forget(), and hit \"Run.\"\n"}︡
︠41208464-e51c-4fde-8e61-e491164d378b︠









