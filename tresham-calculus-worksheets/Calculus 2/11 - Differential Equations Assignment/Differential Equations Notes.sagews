︠0862f8ce-a206-43b6-aad3-ae63236de831i︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡d2c09ee2-e17a-48e1-aaa2-c6af6631f41a︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠91a48478-7f64-42ca-a04b-362549248320i︠
%md
### Prerequisites:

* Intro to Sage
* Differentiation
︡ee3eb09d-bbe4-4bba-907d-95efe4a912f5︡{"done":true,"md":"### Prerequisites:\n\n* Intro to Sage\n* Differentiation"}
︠a272349f-83d6-4a35-a102-df97d8f2ba6di︠
%md
# Differential Equations

A differential equation is an equation that contains one or more derivatives. In this lab, we will consider differential equations with only the first derivative, but in general, higher order derivatives may appear as well.

The simplest differential equations may be written in the form:

$$\frac{dy}{dx}=f(x) \quad \mathrm{or} \quad \frac{dy}{dx}=f(y)\quad \mathrm{or} \quad \frac{dy}{dx}=f(x,y).$$

## Examples

$$\frac{dy}{dx}=2x\quad\quad\frac{dy}{dx}=y^3\quad\quad\frac{dy}{dx}=-\frac{x}{y}$$
︡3c03a08e-6064-4b80-b79f-e6aa97265d25︡{"done":true,"md":"# Differential Equations\n\nA differential equation is an equation that contains one or more derivatives. In this lab, we will consider differential equations with only the first derivative, but in general, higher order derivatives may appear as well.\n\nThe simplest differential equations may be written in the form:\n\n$$\\frac{dy}{dx}=f(x) \\quad \\mathrm{or} \\quad \\frac{dy}{dx}=f(y)\\quad \\mathrm{or} \\quad \\frac{dy}{dx}=f(x,y).$$\n\n## Examples\n\n$$\\frac{dy}{dx}=2x\\quad\\quad\\frac{dy}{dx}=y^3\\quad\\quad\\frac{dy}{dx}=-\\frac{x}{y}$$"}
︠65084789-e828-4177-ae85-29b18e9fff61i︠
%md
## Solving Differential Equations

To solve a differential equation, we must find the differentiable functions $y(x)$ which satisfy the equation.
︡360beb88-162f-41d2-a4b5-1649e3b87223︡{"done":true,"md":"## Solving Differential Equations\n\nTo solve a differential equation, we must find the differentiable functions $y(x)$ which satisfy the equation."}
︠0a00db16-9e7c-44ce-ba18-535db54cbfa7i︠
%md
## Example 1

Consider the differential equation $\frac{dy}{dx}=2x$. We know $y(x)=x^2+C$ has the correct derivative for any constant $C$, so these functions are solutions. In fact, these functions are the only solutions (this is a corollary of the Mean Value Theorem).
︡cfe00263-f228-46cf-b69c-895c5fa33491︡{"done":true,"md":"## Example 1\n\nConsider the differential equation $\\frac{dy}{dx}=2x$. We know $y(x)=x^2+C$ has the correct derivative for any constant $C$, so these functions are solutions. In fact, these functions are the only solutions (this is a corollary of the Mean Value Theorem)."}
︠08103630-a316-4afd-9014-ccafb64bc329i︠
%md
For any differential equation of the form $\frac{dy}{dx}=f(x)$, we find the solutions simply by finding the antiderivatives of $f$. In other words the solutions are $\displaystyle \int f(x)\, dx.$
︡7ba53078-1dbf-4b85-9a28-0c44a6e83e6c︡{"done":true,"md":"For any differential equation of the form $\\frac{dy}{dx}=f(x)$, we find the solutions simply by finding the antiderivatives of $f$. In other words the solutions are $\\displaystyle \\int f(x)\\, dx.$"}
︠3e323ce6-1f53-4944-8deb-c00fdf3cf6fai︠
%md
Differential equations of the form $\frac{dy}{dx}=f(y)$ or $\frac{dy}{dx}=f(x,y)$ may sometimes be solved using a method called **separation of variables**.
︡c5f6f00f-9448-4b0d-a47b-4d12884cc309︡{"done":true,"md":"Differential equations of the form $\\frac{dy}{dx}=f(y)$ or $\\frac{dy}{dx}=f(x,y)$ may sometimes be solved using a method called **separation of variables**."}
︠43e5da09-7328-45d7-a59b-d8b2b4c3f4f1i︠
%md
## Example 2

Consider the differential equation $\displaystyle\frac{dy}{dx}=-\frac{x}{y}$.

We are going to pretend that $\frac{dy}{dx}$ is a fraction, and we are going to gather $x$ and $y$ terms on opposite sides of the equation (cross multiply):

$$y\ dy=-x\ dx$$

[This is nonsense, but it will work out in the end!]

Now integrate both sides:

$$\int y\ dy=\int -x\ dx$$

Integrating we get:

$$y^2=-x^2+C$$

Solving for $y$ gives: $$y=\pm\sqrt{C-x^2}$$

Or writing it another way:

$$x^2+y^2=C$$

For $C>0$, this is the equation of a circle centered at the origin of radius $\sqrt{C}$.

The slope of a circle at a point $(x,y)$ on the circle is $\displaystyle -\frac{x}{y}$.
︡3d3d96b7-b12a-481f-aead-3205bcfcb715︡{"done":true,"md":"## Example 2\n\nConsider the differential equation $\\displaystyle\\frac{dy}{dx}=-\\frac{x}{y}$.\n\nWe are going to pretend that $\\frac{dy}{dx}$ is a fraction, and we are going to gather $x$ and $y$ terms on opposite sides of the equation (cross multiply):\n\n$$y\\ dy=-x\\ dx$$\n\n[This is nonsense, but it will work out in the end!]\n\nNow integrate both sides:\n\n$$\\int y\\ dy=\\int -x\\ dx$$\n\nIntegrating we get:\n\n$$y^2=-x^2+C$$\n\nSolving for $y$ gives: $$y=\\pm\\sqrt{C-x^2}$$\n\nOr writing it another way:\n\n$$x^2+y^2=C$$\n\nFor $C>0$, this is the equation of a circle centered at the origin of radius $\\sqrt{C}$.\n\nThe slope of a circle at a point $(x,y)$ on the circle is $\\displaystyle -\\frac{x}{y}$."}
︠1d833202-1c7b-4ec1-8364-665ad242ad59i︠
%md
## Separation of Variables

In general, a differential equation is **separable** if it can be written in the form $\displaystyle\frac{dy}{dx}=g(x)\cdot h(y)$.

In this case, the solutions may be found by solving:

$$\int \frac{1}{h(y)}\, dy=\int g(x)\, dx$$

This gives $y$ implicitly as a function of $x$. You may be able to solve the resulting equation for $y$.
︡9ba38a99-c048-431a-9349-f5524be40c1a︡{"done":true,"md":"## Separation of Variables\n\nIn general, a differential equation is **separable** if it can be written in the form $\\displaystyle\\frac{dy}{dx}=g(x)\\cdot h(y)$.\n\nIn this case, the solutions may be found by solving:\n\n$$\\int \\frac{1}{h(y)}\\, dy=\\int g(x)\\, dx$$\n\nThis gives $y$ implicitly as a function of $x$. You may be able to solve the resulting equation for $y$."}
︠b806f6c7-24c8-4604-adc2-c9e8a7164daci︠
%md
Note: This technique does not work if $h(y)=0$ (i.e., $h(y)$ is the zero function), since the left side of the integral equation is never defined. Remember, we're thinking of $y$ as a function of $x$, so $h(y)$ is a composition. It's possible that $h(y)=0$ even though neither $h$ nor $y$ is the zero function.

If $y$ is a constant function such that $h(y)=0$, then this $y$ is a solution to the differential equation. However, this solution is eliminated in the above technique. Thus, you have to consider this possibility separately.

This is a subtle point, and since we do not usually care very much about constant solutions, I will ignore this in most of the examples below.
︡d49ced11-e415-439b-a403-d671c685eedf︡{"done":true,"md":"Note: This technique does not work if $h(y)=0$ (i.e., $h(y)$ is the zero function), since the left side of the integral equation is never defined. Remember, we're thinking of $y$ as a function of $x$, so $h(y)$ is a composition. It's possible that $h(y)=0$ even though neither $h$ nor $y$ is the zero function.\n\nIf $y$ is a constant function such that $h(y)=0$, then this $y$ is a solution to the differential equation. However, this solution is eliminated in the above technique. Thus, you have to consider this possibility separately.\n\nThis is a subtle point, and since we do not usually care very much about constant solutions, I will ignore this in most of the examples below."}
︠31456d1c-5376-4e5d-924f-ad6450f89187i︠
%md
## Example 3

Consider the differential equation $\frac{dy}{dx}=y$. This is separable (with $g(x)=1$ and $h(y)=y$).

As long as $y$ is not the zero function, the solution is given by the equation $$\int\frac{1}{y}\,dy=\int 1\,dx$$

Integrating we get $$\ln(|y|)=x+C$$

Now solve for $y$: $$|y|=e^{x+C}$$

$$y=\pm e^{x+C}$$
︡6da30052-2422-4baf-9cb2-f3382195997f︡{"done":true,"md":"## Example 3\n\nConsider the differential equation $\\frac{dy}{dx}=y$. This is separable (with $g(x)=1$ and $h(y)=y$).\n\nAs long as $y$ is not the zero function, the solution is given by the equation $$\\int\\frac{1}{y}\\,dy=\\int 1\\,dx$$\n\nIntegrating we get $$\\ln(|y|)=x+C$$\n\nNow solve for $y$: $$|y|=e^{x+C}$$\n\n$$y=\\pm e^{x+C}$$"}
︠f5fb3d0d-2fb9-43cc-8ef3-adc5895b161bi︠
%md
These solutions may be written $y=\pm e^x\cdot e^C$

Remember that $C$ is an arbitrary constant, so $e^C$ is an arbitrary *positive* constant.

Thus, $\pm e^C$ is an arbitrary *non-zero* constant.

So we can write this as $y=Ke^x$, where $K$ is an arbitrary non-zero constant.

In fact, if $K=0$, we get $y=0$ (the zero function). This is actually a solution to the differential equation.

Therefore, the most general solution is $y=Ke^x$ for *any* constant $K$.
︡30551b32-91a9-483a-bc5a-219f5da84252︡{"done":true,"md":"These solutions may be written $y=\\pm e^x\\cdot e^C$\n\nRemember that $C$ is an arbitrary constant, so $e^C$ is an arbitrary *positive* constant.\n\nThus, $\\pm e^C$ is an arbitrary *non-zero* constant.\n\nSo we can write this as $y=Ke^x$, where $K$ is an arbitrary non-zero constant.\n\nIn fact, if $K=0$, we get $y=0$ (the zero function). This is actually a solution to the differential equation.\n\nTherefore, the most general solution is $y=Ke^x$ for *any* constant $K$."}
︠2cb64476-8ce8-4efa-9906-8cd515a5162bsi︠
%latex
{\small To summarize the above example: If $f'(x)=f(x)$, then $f(x)=Ke^x$ for some constant $K$.}
︡e7fff72b-f605-44cc-a3f5-8a6e34271d74︡{"file":{"filename":"/tmp/tmpzw5kz5.png","show":true,"text":null,"uuid":"f6b7dd8a-148e-432b-85fb-fb3bc88ace55"},"once":false}︡{"done":true}︡
︠4ff1725a-5e0c-4b02-9632-a36d9998a9f1i︠
%md
## Example 4

Consider the differential equation $2\sqrt{xy}\displaystyle\frac{dy}{dx}=1$.

This is separable and may be solved by integrating: $$\int \sqrt{y}\, dy=\int \frac{1}{2\sqrt{x}}\,dx$$

$$\frac{2}{3}y^{3/2}=\sqrt{x}+C$$

$$y=\left(\frac{3}{2}\sqrt{x}+C\right)^{2/3}$$
︡8079909e-fe62-4826-b0b9-529f22f00e7a︡{"done":true,"md":"## Example 4\n\nConsider the differential equation $2\\sqrt{xy}\\displaystyle\\frac{dy}{dx}=1$.\n\nThis is separable and may be solved by integrating: $$\\int \\sqrt{y}\\, dy=\\int \\frac{1}{2\\sqrt{x}}\\,dx$$\n\n$$\\frac{2}{3}y^{3/2}=\\sqrt{x}+C$$\n\n$$y=\\left(\\frac{3}{2}\\sqrt{x}+C\\right)^{2/3}$$"}
︠0862958c-4a50-46aa-8dec-8bb0e2c24d9di︠
%md
## Example 5

Consider the differential equation $\displaystyle\frac{dy}{dx}=\frac{e^{2x-y}}{e^{x+y}}$.

First, we may simplify the exponents: $\displaystyle\frac{dy}{dx}=\frac{e^{x}}{e^{2y}}$.

This is separable and may be solved by integrating: $$\int e^{2y}\,dy=\int e^x\,dx$$

$$\frac{1}{2}e^{2y}=e^x+C$$

$$e^{2y}=2e^x+C$$

$$2y=\ln\left(2e^x+C\right)$$

$$y=\frac{1}{2}\ln\left(2e^x+C\right)$$
︡3ad73b23-9b20-4102-b3d0-085a68315027︡{"done":true,"md":"## Example 5\n\nConsider the differential equation $\\displaystyle\\frac{dy}{dx}=\\frac{e^{2x-y}}{e^{x+y}}$.\n\nFirst, we may simplify the exponents: $\\displaystyle\\frac{dy}{dx}=\\frac{e^{x}}{e^{2y}}$.\n\nThis is separable and may be solved by integrating: $$\\int e^{2y}\\,dy=\\int e^x\\,dx$$\n\n$$\\frac{1}{2}e^{2y}=e^x+C$$\n\n$$e^{2y}=2e^x+C$$\n\n$$2y=\\ln\\left(2e^x+C\\right)$$\n\n$$y=\\frac{1}{2}\\ln\\left(2e^x+C\\right)$$"}
︠2620d657-0f29-4014-ae20-f8f0f94e4ebci︠
%md
## Example 6

Consider the differential equation $\displaystyle\frac{dy}{dx}=xy+3x-2y-6$.

First, we can factor the right-hand side to see that this is separable:

$$xy+3x-2y-6=x(y+3)-2(y+3)=(x-2)(y+3)$$

Therefore, the solutions may be found by integrating:

$$\int \frac{1}{y+3}\,dy=\int x-2\,dx$$

$$\ln(|y+3|)=\frac{x^2}{2}-2x+C$$

$$|y+3|=e^{\left(\frac{x^2}{2}-2x+C\right)}$$

$$y+3=\pm e^{\left(\frac{x^2}{2}-2x+C\right)}$$

$$y=-3\pm e^{\left(\frac{x^2}{2}-2x+C\right)}$$
︡29e6e60e-ab89-4e3e-8bbb-0d65fd185468︡{"done":true,"md":"## Example 6\n\nConsider the differential equation $\\displaystyle\\frac{dy}{dx}=xy+3x-2y-6$.\n\nFirst, we can factor the right-hand side to see that this is separable:\n\n$$xy+3x-2y-6=x(y+3)-2(y+3)=(x-2)(y+3)$$\n\nTherefore, the solutions may be found by integrating:\n\n$$\\int \\frac{1}{y+3}\\,dy=\\int x-2\\,dx$$\n\n$$\\ln(|y+3|)=\\frac{x^2}{2}-2x+C$$\n\n$$|y+3|=e^{\\left(\\frac{x^2}{2}-2x+C\\right)}$$\n\n$$y+3=\\pm e^{\\left(\\frac{x^2}{2}-2x+C\\right)}$$\n\n$$y=-3\\pm e^{\\left(\\frac{x^2}{2}-2x+C\\right)}$$"}
︠cbcdcd82-020b-4806-a05f-b3467630c4e3i︠
%md
These solutions may be written $\displaystyle y=-3+Ke^\left({\frac{x^2}{2}-2x}\right)$, where $K$ is any constant (I'll skip the details).
︡485f498b-510b-4aa9-9dae-1d5a6eaa5618︡{"done":true,"md":"These solutions may be written $\\displaystyle y=-3+Ke^\\left({\\frac{x^2}{2}-2x}\\right)$, where $K$ is any constant (I'll skip the details)."}
︠9a298ce9-4fae-4726-97e9-539c0f08d8b0si︠
%md
## Initial Value Problems

Some differential equations come with "initial conditions," that is, values of a solution and/or its derivatives at some specific point(s).

These conditions may allow us to solve for the "$+C$."
︡e73093f9-a34c-4194-b108-c25284612a1a︡{"done":true,"md":"## Initial Value Problems\n\nSome differential equations come with \"initial conditions,\" that is, values of a solution and/or its derivatives at some specific point(s).\n\nThese conditions may allow us to solve for the \"$+C$.\""}
︠dac82229-95b5-4a66-878a-1b002b405939i︠
%md
## Example 7

Consider the initial value problem $$\frac{dy}{dx}=-y^2,\quad y(0)=\frac{1}{2}$$

We can solve the differential equation with separation of variables ($g(x)=1$ and $h(y)=-y^2$).

$$\int\frac{1}{-y^2}\, dy=\int 1\, dx$$

$$\frac{1}{y}=x+C$$

$$y=\frac{1}{x+C}$$
︡f0afca64-58f9-4c4c-92fd-e38c3f7aca5d︡{"done":true,"md":"## Example 7\n\nConsider the initial value problem $$\\frac{dy}{dx}=-y^2,\\quad y(0)=\\frac{1}{2}$$\n\nWe can solve the differential equation with separation of variables ($g(x)=1$ and $h(y)=-y^2$).\n\n$$\\int\\frac{1}{-y^2}\\, dy=\\int 1\\, dx$$\n\n$$\\frac{1}{y}=x+C$$\n\n$$y=\\frac{1}{x+C}$$"}
︠9840ad78-dc85-4db5-adba-a358bef6713ai︠
%md
Now use the initial condition $y(0)=\frac{1}{2}$ to solve for $C$.

Plug in $x=0$ and $y=\frac{1}{2}$

$$\frac{1}{2}=\frac{1}{0+C}\Rightarrow C=2$$

</br>
Therefore, the (unique) solution to the inital value problem is $\displaystyle y=\frac{1}{x+2}$
︡d3ef5d51-e7ac-49b9-8cc0-c71fb6cd31e3︡{"done":true,"md":"Now use the initial condition $y(0)=\\frac{1}{2}$ to solve for $C$.\n\nPlug in $x=0$ and $y=\\frac{1}{2}$\n\n$$\\frac{1}{2}=\\frac{1}{0+C}\\Rightarrow C=2$$\n\n</br>\nTherefore, the (unique) solution to the inital value problem is $\\displaystyle y=\\frac{1}{x+2}$"}
︠c6085e7c-f912-4fcc-85c2-00aefe4f08ddi︠
%md
## Solving Differential Equations in Sage

Sage has a command called "desolve" that may be able to solve a first-order differential equation (that's "d-e-solve" for "differential equation solve", not "de-solve").

To use desolve, you must tell Sage that $y$ is a function of $x$. Then desolve is similar to the regular solve command. It takes two arguments: a differential equation (with a double equal sign), and a variable to solve for.
︡9ba41b2c-f2d4-4084-b35c-265c16455ab3︡{"done":true,"md":"## Solving Differential Equations in Sage\n\nSage has a command called \"desolve\" that may be able to solve a first-order differential equation (that's \"d-e-solve\" for \"differential equation solve\", not \"de-solve\").\n\nTo use desolve, you must tell Sage that $y$ is a function of $x$. Then desolve is similar to the regular solve command. It takes two arguments: a differential equation (with a double equal sign), and a variable to solve for."}
︠8125fff2-03ee-4a5c-950c-5842b25a2582i︠
%md
## Example 3 again

$\frac{dy}{dx}=y$.
︡0db72722-3143-40bc-9fd8-df5f441037ca︡{"done":true,"md":"## Example 3 again\n\n$\\frac{dy}{dx}=y$."}
︠4a940108-ebe1-402d-a988-8efba1d4a42as︠
y=function('y')(x)
desolve(derivative(y,x)==y,y)
show(_)
︡60c4af45-7160-4276-a4a2-4cb0602c3cb4︡{"stdout":"_C*e^x"}︡{"stdout":"\n"}︡{"html":"<div align='center'>$\\displaystyle C e^{x}$</div>"}︡{"done":true}
︠e0935991-2076-4e39-b214-2e0270104cbbi︠
%md
Recall our solution: $y=Ke^x$.
︡f73b5fa4-b36d-4a8b-bb8d-fd6648b2ef57︡{"done":true,"md":"Recall our solution: $y=Ke^x$."}
︠9b96c209-0c4e-433e-8b1d-0794756dc346i︠
%md
## Example 4 again

$2\sqrt{xy}\displaystyle\frac{dy}{dx}=1$
︡b08c3382-cd6b-45b0-8826-5bf2c0cca2e0︡{"done":true,"md":"## Example 4 again\n\n$2\\sqrt{xy}\\displaystyle\\frac{dy}{dx}=1$"}
︠7d76470c-f6c2-482c-bc75-1267d9e1bac8s︠
y=function('y')(x)
desolve(2*sqrt(x*y)*derivative(y,x)==1,y)
show(_)
︡b69bf6ae-5275-457f-905b-fbc51d4ff1cb︡{"stdout":"2/3*(2*sqrt(x*y(x))*y(x) - 3*x)/sqrt(x) == _C"}︡{"stdout":"\n"}︡{"html":"<div align='center'>$\\displaystyle \\frac{2 \\, {\\left(2 \\, \\sqrt{x y\\left(x\\right)} y\\left(x\\right) - 3 \\, x\\right)}}{3 \\, \\sqrt{x}} = C$</div>"}︡{"done":true}
︠871dae4a-1833-4bb5-a142-30c059fecc97i︠
%md
Notice that Sage has given an implicit solution. You still need to solve for $y$. Let's try to get Sage to solve it for us.

I will declare a variable "C," and then I will copy and paste the above solution, removing the underscore in front of the C.
︡a49d831a-9a59-4d8a-a27c-5ecc0a0da41c︡{"done":true,"md":"Notice that Sage has given an implicit solution. You still need to solve for $y$. Let's try to get Sage to solve it for us.\n\nI will declare a variable \"C,\" and then I will copy and paste the above solution, removing the underscore in front of the C."}
︠da09b38c-2d62-463a-8ef7-f02132fdb2f7s︠
%var C
solve(2/3*(2*sqrt(x*y(x))*y(x) - 3*x)/sqrt(x) == C,y)
show(_)
︡5de9374b-1745-4932-9f66-e3cbf6a6f8d2︡{"stdout":"[y(x) == 3/4*(C*sqrt(x) + 2*x)/sqrt(x*y(x))]\n"}︡{"html":"<div align='center'>[$\\displaystyle y\\left(x\\right) = \\frac{3 \\, {\\left(C \\sqrt{x} + 2 \\, x\\right)}}{4 \\, \\sqrt{x y\\left(x\\right)}}$]</div>"}︡{"done":true}
︠4d475a73-ff10-4673-b64a-bc8faf5902d9i︠
%md
Sage still left us with an implicit solution (notice y(x) on the right side). I don't know why Sage won't solve this completely.

Compare with our solution: $\displaystyle y=\left(\frac{3}{2}\sqrt{x}+C\right)^{2/3}$
︡40c631b9-e5dc-40ab-aa15-ee3f138417ca︡{"done":true,"md":"Sage still left us with an implicit solution (notice y(x) on the right side). I don't know why Sage won't solve this completely.\n\nCompare with our solution: $\\displaystyle y=\\left(\\frac{3}{2}\\sqrt{x}+C\\right)^{2/3}$"}
︠95d7f803-7a7e-47eb-bfc4-c15d5b3ee1c5i︠
%md
## Example 5 again

$\displaystyle\frac{dy}{dx}=\frac{e^{2x-y}}{e^{x+y}}$
︡847cdb2d-54b5-44ff-bb0d-8283f07491ea︡{"done":true,"md":"## Example 5 again\n\n$\\displaystyle\\frac{dy}{dx}=\\frac{e^{2x-y}}{e^{x+y}}$"}
︠bdb0b0d7-ad8e-47db-8783-ff227cc6b9e9s︠
y=function('y')(x)
desolve(derivative(y,x)==e^(2*x-y)/e^(x+y),y)
show(_)
︡2ad40965-2d7f-43f7-8873-be5271a43362︡{"stdout":"-e^x + 1/2*e^(2*y(x)) == _C\n"}︡{"html":"<div align='center'>$\\displaystyle -e^{x} + \\frac{1}{2} \\, e^{\\left(2 \\, y\\left(x\\right)\\right)} = C$</div>"}︡{"done":true}
︠4779716c-1b50-4c8b-a0d8-cc7e66a4f33fi︠
%md
We have to solve for $y$ again.
︡00f2619f-101c-4331-a83e-748f931e2121︡{"md":"We have to solve for $y$ again.\n"}︡
︠0511e621-4137-4730-8a37-2b52f62ccce3s︠
%var C
solve(-e^x + 1/2*e^(2*y(x)) == C,y)
show(_)
︡747d319c-701f-4091-86f3-351e892d66c2︡{"stdout":"[y(x) == log(-sqrt(2*C + 2*e^x)), y(x) == 1/2*log(2*C + 2*e^x)]"}︡{"stdout":"\n"}︡{"html":"<div align='center'>[$\\displaystyle y\\left(x\\right) = \\log\\left(-\\sqrt{2 \\, C + 2 \\, e^{x}}\\right)$, $\\displaystyle y\\left(x\\right) = \\frac{1}{2} \\, \\log\\left(2 \\, C + 2 \\, e^{x}\\right)$]</div>"}︡{"done":true}
︠e2806d6a-4465-452e-b9dc-aacd74d831a5i︠
%md
Sage has given us a strange answer. Notice that the first "solution" is the log of a negative number (as long as x is a real number), so the second solution is the one we want.

Compare with our solution: $\displaystyle y=\frac{1}{2}\ln\left(2e^x+C\right)$
︡6fadbeca-c9dc-489c-8f0d-c8b924e1a7b5︡{"done":true,"md":"Sage has given us a strange answer. Notice that the first \"solution\" is the log of a negative number (as long as x is a real number), so the second solution is the one we want.\n\nCompare with our solution: $\\displaystyle y=\\frac{1}{2}\\ln\\left(2e^x+C\\right)$"}
︠010c007c-ba80-4178-a0e0-b258ed516c79i︠
%md
## Example 6 again

$\displaystyle\frac{dy}{dx}=xy+3x-2y-6$
︡98ee7377-f7f9-4bea-b350-b9344e0d3d2c︡{"done":true,"md":"## Example 6 again\n\n$\\displaystyle\\frac{dy}{dx}=xy+3x-2y-6$"}
︠80941f28-36d9-4a9b-a5cd-9429cc5a899es︠
y=function('y')(x)
desolve(derivative(y,x)==x*y+3*x-2*y-6,y)
show(_)
︡245827ca-cbd8-44e4-ae9a-ef1fe860a914︡{"stdout":"(_C - 3*e^(-1/2*x^2 + 2*x))*e^(1/2*x^2 - 2*x)\n"}︡{"html":"<div align='center'>$\\displaystyle {\\left(C - 3 \\, e^{\\left(-\\frac{1}{2} \\, x^{2} + 2 \\, x\\right)}\\right)} e^{\\left(\\frac{1}{2} \\, x^{2} - 2 \\, x\\right)}$</div>"}︡{"done":true}
︠5dd3dfaf-fa93-43fd-aef9-3469b04598d6i︠
%md

Compare our solution $\displaystyle y=-3+Ke^\left({\frac{x^2}{2}-2x}\right)$

Although this looks different, it is the same (distribute the multiplication over the subtraction and simplify).
︡b9391584-fa53-41b9-9c55-f70d1c32ea69︡{"done":true,"md":"\nCompare our solution $\\displaystyle y=-3+Ke^\\left({\\frac{x^2}{2}-2x}\\right)$\n\nAlthough this looks different, it is the same (distribute the multiplication over the subtraction and simplify)."}
︠ffca5574-9dad-417d-8a6b-1abaaffb29dfi︠
%md
## Solving an Initial Value Problem with Sage

You can solve an initial value problem by adding $[x_0,y_0]$ at the end of desolve, where $y(x_0)=y_0$ is given.
︡771a2737-4773-4245-9be6-ad2737eda4ce︡{"done":true,"md":"## Solving an Initial Value Problem with Sage\n\nYou can solve an initial value problem by adding $[x_0,y_0]$ at the end of desolve, where $y(x_0)=y_0$ is given."}
︠eb286d67-83f3-4371-8871-64bb676aa5d7i︠
%md
## Example 7 again

$\displaystyle\frac{dy}{dx}=-y^2,\quad y(0)=\frac{1}{2}$.
︡c36a055b-f91b-4fc3-a211-6952916bd4f0︡{"done":true,"md":"## Example 7 again\n\n$\\displaystyle\\frac{dy}{dx}=-y^2,\\quad y(0)=\\frac{1}{2}$."}
︠b88533bc-ab73-40bb-9c42-25e71d302c1as︠
y=function('y')(x)
desolve(derivative(y,x)==-y^2,y,[0,1/2]) #notice the square brackets
show(_)
︡a40488a9-3c9b-4581-ae71-d779dfd9fc35︡{"stdout":"(1/y(x)) == x + 2\n"}︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{y\\left(x\\right)} = x + 2$</div>"}︡{"done":true}
︠2b3fb480-a4ba-4178-8b04-a7523604ef02i︠
%md
Once again, Sage left us with an implicit solution. Here's the explicit solution:
︡33b3297c-f354-43b5-a4cc-0f8e74c739c0︡{"md":"Once again, Sage left us with an implicit solution. Here's the explicit solution:\n"}︡
︠5b39a26b-6557-45e4-bfa0-90eac6713e04s︠
solve((1/y(x)) == x + 2,y)
show(_)
︡95f11a8a-65e6-4c45-854f-503c8501312c︡{"stdout":"[y(x) == (1/(x + 2))]\n"}︡{"html":"<div align='center'>[$\\displaystyle y\\left(x\\right) = \\frac{1}{x + 2}$]</div>"}︡{"done":true}
︠04e49a0c-a1cf-4f71-9f67-f8e0c3152fa8i︠
%md
This is the same answer we got before.
︡45de5b11-89a5-4c61-9686-3910d49fc0dc︡{"done":true,"md":"This is the same answer we got before."}
︠66f25eb8-1064-4017-bb53-0c80727a7c8ci︠
%md
There is a whole class called "Differential Equations" that will introduce you to more complex equations and solution methods.

Next time, we'll look at a method to approximate solutions numerically.
︡9c16dd09-27bc-458f-9af5-9e1f2313d3c7︡{"done":true,"md":"There is a whole class called \"Differential Equations\" that will introduce you to more complex equations and solution methods.\n\nNext time, we'll look at a method to approximate solutions numerically."}
︠daf0955c-ecf1-4d24-9267-76ac509aa394︠









