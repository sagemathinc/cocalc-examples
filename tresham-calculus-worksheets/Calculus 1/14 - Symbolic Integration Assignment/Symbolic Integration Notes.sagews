︠20ec0995-fc40-40be-a1b3-6c61804be007i︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡0df68c04-b437-4ad8-9ef6-034747d53175︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠9ac10012-0cd6-4daf-b9e9-d507e8ffcf81i︠
%md
### Prerequisites:

* Intro to Sage
︡f1648b9c-fe39-4410-ad48-0f5f8f47523e︡{"done":true,"md":"### Prerequisites:\n\n* Intro to Sage"}
︠5577ced8-ef10-4dd1-b921-d37dae2ddf35i︠
%md
# Symbolic Integration

In this lab we will learn how to compute both definite integrals and indefinite integrals (antiderivatives) in Sage.

The Sage command is called "integral." The number of arguments depends on whether the integral is definite or indefinite.
︡42392869-7d5d-48b6-9eb7-8225b56a2432︡{"done":true,"md":"# Symbolic Integration\n\nIn this lab we will learn how to compute both definite integrals and indefinite integrals (antiderivatives) in Sage.\n\nThe Sage command is called \"integral.\" The number of arguments depends on whether the integral is definite or indefinite."}
︠b8cba678-263c-4ffc-9cee-a7986e4b7e83i︠
%md
## Indefinite Integrals

To compute an indefinite integral in Sage, use the "integral" command with two arguments: integral(*function, variable*). In other words,

$\displaystyle\int f(x)\, dx=\verb|integral(f(x),x)|$

Note: Sage *does not* add the constant of integration (the $+C$).
︡39d75021-d78b-4ba0-bf88-f29a60a8b888︡{"done":true,"md":"## Indefinite Integrals\n\nTo compute an indefinite integral in Sage, use the \"integral\" command with two arguments: integral(*function, variable*). In other words,\n\n$\\displaystyle\\int f(x)\\, dx=\\verb|integral(f(x),x)|$\n\nNote: Sage *does not* add the constant of integration (the $+C$)."}
︠af09d8bc-dc67-4775-8ccc-641f5c0f84e7i︠
%md
## Example 1

$$\int\frac{x+1}{x^2+9}\, dx$$

You can type the expression directly:
︡e8d7b49e-1e2f-420e-ac8c-dd00ae4618a1︡{"done":true,"md":"## Example 1\n\n$$\\int\\frac{x+1}{x^2+9}\\, dx$$\n\nYou can type the expression directly:"}
︠4aa5eed1-d2f4-4f0a-a6d4-0f08e8ad81e2s︠
integral((x+1)/(x^2+9),x)  #Don't forget the parentheses around the numerator and denominator.
show(_)
︡e085c233-5f74-44a7-98b1-56c0a2e132a0︡{"stdout":"1/3*arctan(1/3*x) + 1/2*log(x^2 + 9)"}︡{"stdout":"\n"}︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{3} \\, \\arctan\\left(\\frac{1}{3} \\, x\\right) + \\frac{1}{2} \\, \\log\\left(x^{2} + 9\\right)$</div>"}︡{"done":true}︡
︠ed4da873-d309-43be-a84a-6249316534cci︠
%md
You can also use a function name:
︡3693f7df-2161-422e-ab33-e07e83bbd54d︡{"md":"You can also use a function name:\n"}︡
︠e13cfbfd-afe0-49b8-a1f3-e5fef298b8be︠
f(x)=(x+1)/(x^2+9)
integral(f(x),x)
show(_)
︡9f1b51a7-ff2f-4ba1-a4b5-051919877d7e︡{"stdout":"1/3*arctan(1/3*x) + 1/2*log(x^2 + 9)\n"}︡{"tex":{"tex":"\\frac{1}{3} \\, \\arctan\\left(\\frac{1}{3} \\, x\\right) + \\frac{1}{2} \\, \\log\\left(x^{2} + 9\\right)","display":true}}︡
︠91f95aa9-50ce-454b-a7c2-d2573bc7dc1ei︠
%md
Think about how you would do this one by hand.

You could break up the fraction: $$\frac{x+1}{x^2+9}=\frac{x}{x^2+9}+\frac{1}{x^2+9}$$

You can compute $\displaystyle\int\frac{x}{x^2+9}\, dx$ using substitution (this gives you $\frac{1}{2}\log(x^2 + 9)$).

You can compute $\displaystyle\int\frac{1}{x^2+9}\, dx$ using a little algebra (this gives you $\frac{1}{3}\arctan(\frac{x}{3})$).

[Remember, "log" in Sage is the natural logarithm, often denoted "ln." Also, we would normally write $\frac{1}{2}\ln(|x^2+9|)$, but Sage leaves out the absolute value.]
︡4106c1a1-a340-4458-bda6-763c5a816b6a︡{"done":true,"md":"Think about how you would do this one by hand.\n\nYou could break up the fraction: $$\\frac{x+1}{x^2+9}=\\frac{x}{x^2+9}+\\frac{1}{x^2+9}$$\n\nYou can compute $\\displaystyle\\int\\frac{x}{x^2+9}\\, dx$ using substitution (this gives you $\\frac{1}{2}\\log(x^2 + 9)$).\n\nYou can compute $\\displaystyle\\int\\frac{1}{x^2+9}\\, dx$ using a little algebra (this gives you $\\frac{1}{3}\\arctan(\\frac{x}{3})$).\n\n[Remember, \"log\" in Sage is the natural logarithm, often denoted \"ln.\" Also, we would normally write $\\frac{1}{2}\\ln(|x^2+9|)$, but Sage leaves out the absolute value.]"}
︠2ed90c72-d5cc-4d29-977d-d02a9de50501i︠
%md
## Example 2

$$\int x\sqrt{4-3x^2}\, dx$$
︡622dbbd7-5d03-4996-a6d3-bdd48197b055︡{"md":"## Example 2\n\n$$\\int x\\sqrt{4-3x^2}\\, dx$$\n"}︡
︠ae148b43-44ca-470b-bb58-18f1cfbf6dc4︠
integral(x*sqrt(4-3*x^2),x)
show(_)
︡fa59efe6-1fd2-4d14-8244-6c2f4f80aadc︡{"stdout":"-1/9*(-3*x^2 + 4)^(3/2)\n"}︡{"tex":{"tex":"-\\frac{1}{9} \\, {\\left(-3 \\, x^{2} + 4\\right)}^{\\frac{3}{2}}","display":true}}︡
︠1be82713-458b-4499-ac22-0ed058977a5di︠
%md
This is a fairly simply substitution question.

What if we take away the $x$ in front?

## Example 3

$$\int\sqrt{4-3x^2}\, dx$$
︡3cb58b8a-b561-4933-9375-b8450c58b926︡{"md":"This is a fairly simply substitution question.\n\nWhat if we take away the $x$ in front?\n\n## Example 3\n\n$$\\int\\sqrt{4-3x^2}\\, dx$$\n"}︡
︠30697035-8b61-42a2-88b5-80bfd6fc16f7︠
integral(sqrt(4-3*x^2),x)
show(_)
︡9951c515-4d75-4d93-a3de-9cb137fb2d2e︡{"stdout":"1/2*sqrt(-3*x^2 + 4)*x + 2/3*sqrt(3)*arcsin(1/2*sqrt(3)*x)\n"}︡{"tex":{"tex":"\\frac{1}{2} \\, \\sqrt{-3 \\, x^{2} + 4} x + \\frac{2}{3} \\, \\sqrt{3} \\arcsin\\left(\\frac{1}{2} \\, \\sqrt{3} x\\right)","display":true}}︡
︠ecabcb70-83d2-4799-8bcc-776fbd0b4ad5i︠
%md
This is more complicated, but you could do it by hand with trig substitution.

Note: Sage's output is somewhat misleading here. Notice the $x$ right after the 4 under the square root? Is the $x$ inside or outside the square root?
︡2520ec6d-28d6-42a7-afac-c8f5334b2949︡{"md":"This is more complicated, but you could do it by hand with trig substitution.\n\nNote: Sage's output is somewhat misleading here. Notice the $x$ right after the 4 under the square root? Is the $x$ inside or outside the square root?\n"}︡
︠a02ac6a0-0925-4d0d-9362-790b12b38420i︠
%md
## Definite Integrals

To compute a definite integral in Sage, use the "integral" command with four arguments: integral(*function, variable, lower limit, upper limit*). In other words,

$\displaystyle\int_a^b f(x)\, dx=\verb|integral(f(x),x,a,b)|$
︡74ac66c6-e5f0-423c-a12e-7fa13922a328︡{"done":true,"md":"## Definite Integrals\n\nTo compute a definite integral in Sage, use the \"integral\" command with four arguments: integral(*function, variable, lower limit, upper limit*). In other words,\n\n$\\displaystyle\\int_a^b f(x)\\, dx=\\verb|integral(f(x),x,a,b)|$"}
︠e0034bde-11d2-497a-87ff-8107c76f27aci︠
%md
## Example 4

$$\int_0^1 x^4e^{-x}\, dx$$
︡f73c3ce5-98e2-49f0-b0ea-6f12296e12ad︡{"done":true,"md":"## Example 4\n\n$$\\int_0^1 x^4e^{-x}\\, dx$$"}
︠e31bbf3c-6fda-40a4-aeb4-9e62f4a01292s︠
integral(x^4*e^(-x),x,0,1)
show(_)
︡1f486cac-d0e1-43a9-a78c-8d63a9c1db71︡{"stdout":"-65*e^(-1) + 24\n"}︡{"html":"<div align='center'>$\\displaystyle -65 \\, e^{\\left(-1\\right)} + 24$</div>"}︡{"done":true}︡
︠a9d8ee5e-8adf-4287-b3e4-2836c2bdfcbdi︠
%md
Here Sage has returned the exact answer. This integral could be computed by hand using integration by parts.

Let's convert the answer to a decimal:
︡04065e60-1393-4c1a-a8d7-0ccd7a8ac919︡{"md":"Here Sage has returned the exact answer. This integral could be computed by hand using integration by parts.\n\nLet's convert the answer to a decimal:\n"}︡
︠e0f3adec-3deb-47d4-b1e7-bf4107ac8c71︠
N(-65*e^(-1) + 24)
︡fb6cde3c-e9cf-4128-9a71-5b4fc8d5b905︡{"stdout":"0.0878363238562478\n"}︡
︠661433be-8fb9-42b6-bc73-00256e5e2776i︠
%md
## Example 5

Sage can also handle definite integrals involving variables (the answer is not a number).

$$\int_0^1 ax^2+bx+c\, dx$$
︡27a6bef4-ccc1-46f0-b9b3-b3773e82d741︡︡{"done":true,"md":"## Example 5\n\nSage can also handle definite integrals involving variables (the answer is not a number).\n\n$$\\int_0^1 ax^2+bx+c\\, dx$$"}
︠b5f51dfc-76cf-406c-8f0f-60b690046f2ds︠
%var a,b,c
show(integral(a*x^2+b*x+c,x,0,1))
︡b0cc2939-b978-43e7-ae38-1b95bd1cdd7c︡︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{3} \\, a + \\frac{1}{2} \\, b + c$</div>"}︡{"done":true}
︠b27e6d29-10d2-44e8-9563-9d1811651ba0i︠
%md
## Example 6

$$\int_{-1}^x \cos(t)^5\, dt$$
︡12e0a45f-c45f-4db5-9242-effc7483d43c︡{"md":"## Example 6\n\n$$\\int_{-1}^x \\cos(t)^5\\, dt$$\n"}︡
︠a446b73f-6307-427e-9f63-5876c02b30b6︠
%var t
show(integral(cos(t)^5,t,-1,x))
︡81c3b93a-5f09-41e7-a221-607f24ea72bf︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{5} \\, \\sin\\left(1\\right)^{5} + \\frac{1}{5} \\, \\sin\\left(x\\right)^{5} - \\frac{2}{3} \\, \\sin\\left(1\\right)^{3} - \\frac{2}{3} \\, \\sin\\left(x\\right)^{3} + \\sin\\left(1\\right) + \\sin\\left(x\\right)$</div>"}︡
︠52269974-80cb-4177-83ba-7e23958e3b71i︠
%md
## Example 7

Some functions do not have elementary antiderivatives. For example, consider $$\int_0^1 e^{-x^2}\, dx$$
︡cc9f9771-23b5-42c7-8b32-a9f790b538ab︡{"md":"## Example 7\n\nSome functions do not have elementary antiderivatives. For example, consider $$\\int_0^1 e^{-x^2}\\, dx$$\n"}︡
︠70002b0e-c9b0-416c-b340-29946a557c64︠
show(integral(e^(-x^2),x,0,1))
N(_)
︡c9ba1c1f-2d3c-437a-841a-84202ee54715︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{2} \\, \\sqrt{\\pi} \\text{erf}\\left(1\\right)$</div>"}︡{"stdout":"0.746824132812427\n"}︡
︠1bfb0e9a-3444-4e38-9487-b404490ef3b2i︠
%md
Notice that Sage gives an exact answer involving a function called "erf." This is the "error function," defined as follows: $$erf(x)=\frac{2}{\sqrt{\pi}}\int_0^x e^{-t^2}\, dt$$

In other words, when we try to integrate $\displaystyle e^{-x^2}$, Sage gives us an answer in terms of this very integral. Since we are computing a definite integral, Sage is able to give us a numerical approximation.
︡cb57c09b-8fc1-4ed5-aff0-c2001fb2b0ad︡{"done":true,"md":"Notice that Sage gives an exact answer involving a function called \"erf.\" This is the \"error function,\" defined as follows: $$erf(x)=\\frac{2}{\\sqrt{\\pi}}\\int_0^x e^{-t^2}\\, dt$$\n\nIn other words, when we try to integrate $\\displaystyle e^{-x^2}$, Sage gives us an answer in terms of this very integral. Since we are computing a definite integral, Sage is able to give us a numerical approximation."}
︠8ebf744e-f8c3-4daa-abba-6810ee74e5e9i︠
%md
## Numerical Approximation of Definite Integrals

For this and other examples where Sage can't find an exact answer, there is another command, numerical_integral, which provides a numerical approximation.

This command requires three arguments: the function to integrate, the lower bound of integration, and the upper bound of integration.

[Note: you do not specify the variable of integration, since there can be only one variable.]

Here is an example:
︡1d1d5bd2-1edf-4c56-b71e-f340b1660dc3︡{"done":true,"md":"## Numerical Approximation of Definite Integrals\n\nFor this and other examples where Sage can't find an exact answer, there is another command, numerical_integral, which provides a numerical approximation.\n\nThis command requires three arguments: the function to integrate, the lower bound of integration, and the upper bound of integration.\n\n[Note: you do not specify the variable of integration, since there can be only one variable.]\n\nHere is an example:"}
︠372cc9b2-774e-4f4c-86a4-a56493d52c2b︠
numerical_integral(e^(-x^2),0,1)
︡192dfadf-0957-4a8d-80c0-076d96a6de7f︡{"stdout":"(0.746824132812427, 8.291413475940723e-15)\n"}︡
︠e503ae4b-51d0-4b88-b0b6-4bcaffd88639i︠
%md
Notice that Sage returns an ordered pair. The first element is the numerical approximation of the integral, and the second is an estimate of the error in the approximation. Note the scientific notation in the error. In this example, the error is around $8.29\times 10^{-15}\approx0$.
︡86c69ca7-6bfe-40d5-99f4-42fffa23c26a︡{"md":"Notice that Sage returns an ordered pair. The first element is the numerical approximation of the integral, and the second is an estimate of the error in the approximation. Note the scientific notation in the error. In this example, the error is around $8.29\\times 10^{-15}\\approx0$.\n"}︡
︠e14865e4-3a7a-40e1-b3b7-1cfc537cbfcdi︠
%md
## Example 8

Here is one that the integral command can't do at all: $$\int_{-1}^1\sin(\cos(x))\, dx$$
︡8152c10e-28c6-4ba9-9bae-414fafc67322︡{"done":true,"md":"## Example 8\n\nHere is one that the integral command can't do at all: $$\\int_{-1}^1\\sin(\\cos(x))\\, dx$$"}
︠1c8e2897-7ed3-48aa-9623-474d9105d34f︠
integral(sin(cos(x)),x,-1,1)
︡bd7bbea7-ccd5-40a6-9308-de6ba8e5a1f4︡{"stdout":"integrate(sin(cos(x)), x, -1, 1)"}︡{"stdout":"\n"}︡
︠a2b3f045-5b73-47d2-88ff-bac1a078f40ei︠
%md
So we'll try numerical_integral.
︡348d1fcd-b7f5-4ec9-9596-bc7f92441463︡{"md":"So we'll try numerical_integral.\n"}︡
︠5857ea2b-b0f9-4add-a871-60827fb21604︠
numerical_integral(sin(cos(x)),-1,1)
︡4e9020a6-f0a3-4c1b-ab6f-7d4ba49a7b58︡{"stdout":"(1.4772859960737805, 1.6401169267974196e-14)\n"}︡
︠8be44abf-9d42-4803-9ea0-facc85e5d9fci︠
%md
So the answer is approximately 1.4773.

Of course, numerical_integral can only be used for a definite integral.
︡5da2be56-b861-4dfe-bdc4-7b1d3786b875︡{"md":"So the answer is approximately 1.4773.\n\nOf course, numerical_integral can only be used for a definite integral.\n"}︡
︠599c262d-f89d-4a11-a792-01e1e56aec4ci︠
%md
## Applied Examples

You will see many applications of integrals in Calculus 2. For now, we can talk about area and motion.
︡16fc63c7-c622-4857-8de4-aaa5d6370f2d︡{"done":true,"md":"## Applied Examples\n\nYou will see many applications of integrals in Calculus 2. For now, we can talk about area and motion."}
︠d9977523-5697-4529-8b89-f202d703be0fi︠
%md
## Example 9

Find the area under $f(x)=\tan(x^2)$ on the interval $[0,1]$.

**Solution:** This area is $\displaystyle\int_0^1 f(x)\, dx\approx 0.3984$.
︡03a47f99-1223-408b-9a14-e86cf55c630c︡{"done":true,"md":"## Example 9\n\nFind the area under $f(x)=\\tan(x^2)$ on the interval $[0,1]$.\n\n**Solution:** This area is $\\displaystyle\\int_0^1 f(x)\\, dx\\approx 0.3984$."}
︠75c14080-d09c-4560-af5a-60c5a4f0f5fes︠
numerical_integral(tan(x^2),0,1)
︡3c35ecdc-70c7-4b56-81fa-61b47496aa16︡︡{"stdout":"(0.39841444459716535, 4.423288897350168e-15)\n"}︡{"done":true}
︠76c47b65-a059-4747-a82a-7e538b707cd1i︠
%md
## Example 10

The net change in position is the integral of the velocity function. Suppose an object is traveling with velocity $v(t)=3t^4+2t$ meters per second. How far does the object travel from $t=0$ to $t=5$ seconds?

**Solution:** The distance traveled is $\displaystyle\int_0^5 v(t)\, dt=1900$ meters.
︡e8847c9d-4f42-4422-a6a3-9f7c2089b99b︡︡{"done":true,"md":"## Example 10\n\nThe net change in position is the integral of the velocity function. Suppose an object is traveling with velocity $v(t)=3t^4+2t$ meters per second. How far does the object travel from $t=0$ to $t=5$ seconds?\n\n**Solution:** The distance traveled is $\\displaystyle\\int_0^5 v(t)\\, dt=1900$ meters."}
︠ebf51e82-b887-4825-ab6f-8ada631742e5s︠
%var t
integral(3*t^4+2*t,t,0,5)
︡6f0802f6-ef4e-44ae-9528-3635a9056186︡︡{"stdout":"1900\n"}︡{"done":true}
︠b3a046d7-e9b7-4a9f-b903-9687b4956954︠









