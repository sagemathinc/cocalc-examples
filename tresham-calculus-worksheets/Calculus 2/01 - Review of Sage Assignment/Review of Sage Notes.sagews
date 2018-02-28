︠77c618ca-a9ba-4806-9f09-ad2c1919adccai︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡16cef093-24ef-4444-84ca-6bb18aa2d390︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠6cc1123b-bb69-4b23-87c0-b7d1902b7036i︠
%md
### Prerequisites:

* Intro to Sage
︡cabf9bd5-f207-4f4a-801d-259d7e68f369︡{"done":true,"md":"### Prerequisites:\n\n* Intro to Sage"}
︠3fcaf96f-2c78-487a-b21d-6512accf3a5ci︠
%md
# Review of Sage

For those of you who had a Calculus 1 lab with me last semester, you are already familiar with Sage. This worksheet is a quick review of some of the key features we covered last semester.

If you have not used Sage before, I recommend working through the Calc 1 lab "Intro to Sage." Then return to this worksheet.
︡6d0997b8-54cc-4682-927f-4dab0a9680f2︡{"md":"# Review of Sage\n\nFor those of you who had a Calculus 1 lab with me last semester, you are already familiar with Sage. This worksheet is a quick review of some of the key features we covered last semester.\n\nIf you have not used Sage before, I recommend working through the Calc 1 lab \"Intro to Sage.\" Then return to this worksheet.\n"}︡
︠f1abdf6c-cd98-437d-8caa-a82903582eebi︠
%md
## Graphing

You graph a function in Sage using the "plot" command.

### Example 1

Graph $\displaystyle f(x)=\frac{\sqrt{x^2+9}}{3x^2+2}$.

Remember, every multiplication must be explicit in Sage. You must type 3*x^2 (3x^2 will not work).

Also, don't forget the parentheses. They are often required around the numerator and denominator of fractions.

I will give the function a name first, and then I will graph it.
︡281c81ae-527f-4b7f-8e11-a6e8a0b6f145︡{"md":"## Graphing\n\nYou graph a function in Sage using the \"plot\" command.\n\n### Example 1\n\nGraph $\\displaystyle f(x)=\\frac{\\sqrt{x^2+9}}{3x^2+2}$.\n\nRemember, every multiplication must be explicit in Sage. You must type 3*x^2 (3x^2 will not work).\n\nAlso, don't forget the parentheses. They are often required around the numerator and denominator of fractions.\n\nI will give the function a name first, and then I will graph it.\n"}︡
︠d279be0f-aa7d-4bcd-8d8a-54e995936ff5︠
f(x)=sqrt(x^2+9)/(3*x^2+2)  #First, define the function.
plot(f(x))                  #Now make a graph.
︡38ea1137-e57e-4348-9653-ccb40dde711d︡{"once":false,"file":{"show":true,"uuid":"bb0d0312-87a7-48e3-8150-c93ad29f0698","filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/991/tmp_Q8lsUF.svg"}}︡{"html":"<div align='center'></div>"}︡
︠1f239cdc-07a8-49d9-949d-e82e62553d83i︠
%md
It is also possible to plot a function without giving it a name. However, since we usually do more than one thing with our functions, it is usually worth it to define the function first.
︡086c8b69-2105-4b1d-bea7-1dafa20c91ac︡{"md":"It is also possible to plot a function without giving it a name. However, since we usually do more than one thing with our functions, it is usually worth it to define the function first.\n"}︡
︠f44b0c7a-1320-47b7-92a2-7264aa77fd2f︠
plot(sqrt(x^2+9)/(3*x^2+2))
︡05691b7b-125e-4a02-a0a7-75529a16fa6d︡{"once":false,"file":{"show":true,"uuid":"7b5ec778-0a51-4b20-bd82-7e8353ec3fa2","filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/991/tmp_8HVsfu.svg"}}︡{"html":"<div align='center'></div>"}︡
︠a13de9e7-3ec9-4011-9ece-c4d09dfa00a4i︠
%md
The default plot window uses $-1 \le x \le 1$, and Sage choose the range on the y-axis to fit the graph to the window.

If you want to specify a new window, use the xmin, xmax, ymin, and ymax options.
︡f7dd151e-c462-4ea0-841b-466c405a203a︡{"md":"The default plot window uses $-1 \\le x \\le 1$, and Sage choose the range on the y-axis to fit the graph to the window.\n\nIf you want to specify a new window, use the xmin, xmax, ymin, and ymax options.\n"}︡
︠1265c696-8a01-4d76-8600-cffb45ada5c3︠
plot(f(x),xmin=-10,xmax=10,ymin=-1,ymax=2)
︡aece5673-0a87-45e8-846f-2eba5ff9b8e7︡{"once":false,"file":{"show":true,"uuid":"726736ca-eca1-498a-90f6-542496bf0bbd","filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/7146/tmp_UHEZDS.svg"}}︡{"html":"<div align='center'></div>"}︡
︠00251537-f8f0-4752-a7c7-57a77b00eeb9i︠
%md
To graph more than one function, add plots together.

### Example 2
Add a graph of $g(x)=\sin(\ln(x))$ to the graph of $f$.

Note: the domain of $g$ is $x > 0$, so I have set xmin=0 for the plot of $g$. If you have xmin less than 0, Sage will give you a warning.
︡ae03f714-bc76-4487-b287-6becb6fa586c︡{"md":"To graph more than one function, add plots together.\n\n### Example 2\nAdd a graph of $g(x)=\\sin(\\ln(x))$ to the graph of $f$.\n\nNote: the domain of $g$ is $x > 0$, so I have set xmin=0 for the plot of $g$. If you have xmin less than 0, Sage will give you a warning.\n"}︡
︠ab6cae5d-89d7-4288-8287-a2d6091dcbce︠
g(x)=sin(ln(x))
plot(f(x),xmin=-10,xmax=10,ymin=-1,ymax=2)+plot(g(x),xmin=0,xmax=10,ymin=-1,ymax=2)
︡f6a54d93-a03a-462c-964f-99319ae9b8c8︡{"once":false,"file":{"show":true,"uuid":"289a916d-7b2b-409c-b785-324d620d4ee4","filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/991/tmp_Nkdt1W.svg"}}︡{"html":"<div align='center'></div>"}︡
︠3590de70-a89c-46ba-ba81-225d4ce967f8i︠
%md
To distinguish between the two functions, you can change the color and/or the line style.

For example, to change the color to red, add color='red' to the plot (notice the quotation marks around the color name). Sage knows many colors; feel free to experiment.

To change the line style to dashed, add linestyle='dashed' to the plot (again, notice the quotation marks). You can also use 'dotted' or 'dashdot' instead.
︡6ea03234-7dce-4ecc-af9f-327ba6c3b59e︡{"md":"To distinguish between the two functions, you can change the color and/or the line style.\n\nFor example, to change the color to red, add color='red' to the plot (notice the quotation marks around the color name). Sage knows many colors; feel free to experiment.\n\nTo change the line style to dashed, add linestyle='dashed' to the plot (again, notice the quotation marks). You can also use 'dotted' or 'dashdot' instead.\n"}︡
︠c70f3541-f50f-4c1b-a54a-bde40596193c︠
plot(f(x),xmin=-10,xmax=10,ymin=-1,ymax=2)+plot(g(x),xmin=0,xmax=10,ymin=-1,ymax=2,color='red',linestyle='dashed')
︡23f2a921-4224-4b7e-a8e0-3c08aa910655︡{"once":false,"file":{"show":true,"uuid":"e45a5d75-7b65-43af-9beb-07a55cff76b7","filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/991/tmp_EQ5pOj.svg"}}︡{"html":"<div align='center'></div>"}︡
︠ea2144b4-f848-4f17-a93e-6b54786250bbi︠
%md
For more about graphing, refer to the Calculus 1 lab "Graphing and Solving Equations."
︡458aee51-1aad-47aa-91b1-509eeafd4ce8︡︡{"done":true,"md":"For more about graphing, refer to the Calculus 1 lab \"Graphing and Solving Equations.\""}
︠2ab8cc1a-f941-423d-bde3-5dec184328f5i︠
%md
## Limits

The "limit" command is used to find limits of functions. To take a limit as x approaches a, you add x=a to the limit command.

### Example 3

Find $\displaystyle\lim_{x\to 1}\frac{x^2-1}{x-1}$
︡9270a98e-0fb7-470a-92a5-502a65a9a083︡{"md":"## Limits\n\nThe \"limit\" command is used to find limits of functions. To take a limit as x approaches a, you add x=a to the limit command.\n\n### Example 3\n\nFind $\\displaystyle\\lim_{x\\to 1}\\frac{x^2-1}{x-1}$\n"}︡
︠6d66c400-c98a-4832-bc44-89a0fa1d1d90︠
f(x)=(x^2-1)/(x-1)
limit(f(x),x=1)
︡605a7725-5fe7-4521-b6ca-486aa7970b2d︡{"stdout":"2\n"}︡
︠df19ea11-964d-4baf-b18c-e9a1083de766i︠
%md
For one-sided limits, add dir='right' or dir='left' (notice quotation marks).

Find the following:

* $\displaystyle\lim_{x\to 1^+}\frac{x^2-1}{x-1}$

* $\displaystyle\lim_{x\to 1^-}\frac{x^2-1}{x-1}$
︡1a2eb381-5597-4987-acb8-14c2b9bc5339︡{"md":"For one-sided limits, add dir='right' or dir='left' (notice quotation marks).\n\nFind the following:\n\n* $\\displaystyle\\lim_{x\\to 1^+}\\frac{x^2-1}{x-1}$\n\n* $\\displaystyle\\lim_{x\\to 1^-}\\frac{x^2-1}{x-1}$\n"}︡
︠b8ce9cbd-f497-4e94-8226-1714ff6067c7︠
limit(f(x),x=1,dir='right') #right limit
limit(f(x),x=1,dir='left')  #left limit
︡3ef0a145-2a8e-47c8-ba61-173a2d3456e8︡{"stdout":"2\n"}︡{"stdout":"2\n"}︡
︠d969b54b-5d14-45ea-800e-1f2af8ccecd0i︠
%md
### Example 4

Find $\displaystyle\lim_{t\to-4}\frac{t+4}{\sqrt{t+4}}$

Any variable other than x has to be "declared." In this example, "%var t" tells Sage that t is a variable.
︡bafef217-98af-4e83-a741-51c0b507fc4e︡{"md":"### Example 4\n\nFind $\\displaystyle\\lim_{t\\to-4}\\frac{t+4}{\\sqrt{t+4}}$\n\nAny variable other than x has to be \"declared.\" In this example, \"%var t\" tells Sage that t is a variable.\n"}︡
︠01542005-00bd-4a09-80fc-c4db5a2825af︠
%var t
f(t)=(t+4)/sqrt(t+4)
limit(f(t),t=-4)
︡4f8da430-e4b0-45b3-ae9d-b73841908ef1︡{"stdout":"0"}︡{"stdout":"\n"}︡
︠d2f75b5a-1b27-4e9f-8953-420d980269c1i︠
%md
For more about limits, refer to the Calculus 1 lab "Limits."
︡71fd74d8-b2c5-4244-aa75-c77f0e320516︡{"md":"For more about limits, refer to the Calculus 1 lab \"Limits.\"\n"}︡
︠d1c6e20d-846a-45b1-a00a-61995a15ccf4i︠
%md
## Derivatives

You compute derivatives in Sage using the "derivative" command.

### Example 5

Given $f(x)=4x^6-8x^3+2x-1$, compute the following:

* $f'(x)$

* $f''(x)$
︡9f9bdfea-8992-47e3-9f8d-4c9e2ee28aaf︡{"md":"## Derivatives\n\nYou compute derivatives in Sage using the \"derivative\" command.\n\n### Example 5\n\nGiven $f(x)=4x^6-8x^3+2x-1$, compute the following:\n\n* $f'(x)$\n\n* $f''(x)$"}︡
︠fb813e70-f467-4c78-a800-3f5e462abd21︠
f(x)=4*x^6-8*x^3+2*x-1   #Don't forget all the multiplications.
derivative(f(x),x)       #First derivative
show(_)
︡3fe08e51-1d63-4383-8971-4214a0e55faa︡{"stdout":"24*x^5 - 24*x^2 + 2\n"}︡{"html":"<div align='center'>$\\displaystyle 24 \\, x^{5} - 24 \\, x^{2} + 2$</div>"}︡
︠3689965f-3017-4df4-a11e-f9673caeb587︠
derivative(f(x),x,2)     #Second derivative
show(_)
︡96b77783-a215-436e-b565-068ccf485fc9︡{"stdout":"120*x^4 - 48*x\n"}︡{"html":"<div align='center'>$\\displaystyle 120 \\, x^{4} - 48 \\, x$</div>"}︡
︠b8486093-0035-4b86-b9a0-e38a29c3587bi︠
%md
If you want to compute particular values of the derivative, then define a new function equal to the derivative. Sage does not allow f', so I like to call my derivative df, for "derivative of f." You can use any name you want (just don't call it f again).

### Example 6

Given $f(x)=4x^6-8x^3+2x-1$, compute the following:

* $f'(1)$

* $f''(-1)$
︡450f1130-56fa-4c8f-bf41-05c174c383aa︡{"md":"If you want to compute particular values of the derivative, then define a new function equal to the derivative. Sage does not allow f', so I like to call my derivative df, for \"derivative of f.\" You can use any name you want (just don't call it f again).\n\n### Example 6\n\nGiven $f(x)=4x^6-8x^3+2x-1$, compute the following:\n\n* $f'(1)$\n\n* $f''(-1)$\n"}︡
︠3c05267a-4f11-49be-868d-f531acbe8c5e︠
f(x)=4*x^6-8*x^3+2*x-1
df(x)=derivative(f(x),x) #First, give the derivative function a name.
df(1)                    #Now use this function to calculate the value you want.
︡e3db298a-7eee-406f-ad9d-760f1bc936eb︡{"stdout":"2\n"}︡
︠2503a7c8-5997-447e-b5c1-4f94f0ca33b3︠
d2f(x)=derivative(f(x),x,2)  #I call my second derivative d2F
d2f(-1)
︡27400d5d-6301-4c99-acc9-c14a1efb73eb︡{"stdout":"168\n"}︡
︠6ef111a4-8271-4d41-ba0f-226b76f02059i︠
%md
For more about derivatives, refer to the Calculus 1 lab "Differentiation."
︡536662f1-0174-4b93-bd6b-8a9a041f3c1e︡{"md":"For more about derivatives, refer to the Calculus 1 lab \"Differentiation.\"\n"}︡
︠7712fc66-1dce-4ef9-9af7-f93a2cb18918i︠
%md
## Integrals

To compute an integral in Sage, use the "integral" command. Here is an indefinite integral (antiderivative). This requires two arguments: the function to be integrated and the variable of integration.

### Example 7


Given $f(x)=4x^6-8x^3+2x-1$, compute $\displaystyle\int f(x)\, dx$
︡372fb850-3fac-4f70-b7ea-c7847bdb9ecf︡{"md":"## Integrals\n\nTo compute an integral in Sage, use the \"integral\" command. Here is an indefinite integral (antiderivative). This requires two arguments: the function to be integrated and the variable of integration.\n\n### Example 7\n\n\nGiven $f(x)=4x^6-8x^3+2x-1$, compute $\\displaystyle\\int f(x)\\, dx$\n"}︡
︠f327b89a-6f95-4fe2-b218-be333bc9bc37︠
f(x)=4*x^6-8*x^3+2*x-1
integral(f(x),x)
show(_)
︡0e20b720-1262-458f-859c-06c20b36b7e5︡{"stdout":"4/7*x^7 - 2*x^4 + x^2 - x\n"}︡{"html":"<div align='center'>$\\displaystyle \\frac{4}{7} \\, x^{7} - 2 \\, x^{4} + x^{2} - x$</div>"}︡
︠9b51895a-2483-455b-bf8a-937270962eedi︠
%md
Here is a definite integral. This requires two additional arguments: the lower and upper limits of integration.

### Example 8

Given $f(x)=4x^6-8x^3+2x-1$, compute $\displaystyle\int_{-1}^{1} f(x)\, dx$
︡d26f5167-bc72-4f59-b137-f859fdf294bd︡{"md":"Here is a definite integral. This requires two additional arguments: the lower and upper limits of integration.\n\n### Example 8\n\nGiven $f(x)=4x^6-8x^3+2x-1$, compute $\\displaystyle\\int_{-1}^{1} f(x)\\, dx$\n"}︡
︠30b50b99-a394-4667-b314-f100c251dcc6︠
f(x)=4*x^6-8*x^3+2*x-1
integral(f(x),x,-1,1)
︡3820ea5d-cbdd-4b57-bfe0-f86aa9c494e6︡{"stdout":"-6/7\n"}︡
︠52164727-3b21-4dd2-a032-4ca2ff575481i︠
%md
### Example 9

Compute $\displaystyle\int_{-A}^{A} at^2+bt+c\, dt$

Don't forget to declare variables first.
︡8b3aa6e6-ab86-40ce-bf0c-7d1c7d063192︡{"md":"### Example 9\n\nCompute $\\displaystyle\\int_{-A}^{A} at^2+bt+c\\, dt$\n\nDon't forget to declare variables first.\n"}︡
︠48533b4e-5899-439d-bbcb-758a4a833499︠
%var a,b,c,t,A
integral(a*t^2+b*t+c,t,-A,A)
show(_)
︡985ad6ac-ed3f-4fd5-adda-a435bd92d7eb︡{"stdout":"2/3*A^3*a + 2*A*c\n"}︡{"html":"<div align='center'>$\\displaystyle \\frac{2}{3} \\, A^{3} a + 2 \\, A c$</div>"}︡
︠35254c01-6f3a-4f0b-9861-d596daeecde0i︠
%md
For more about integrals, refer to the Calculus 1 lab "Symbolic Integration."
︡c5186d46-8737-4a75-96e0-bdc007b90c30︡{"md":"For more about integrals, refer to the Calculus 1 lab \"Symbolic Integration.\"\n"}︡
︠17560c52-c2ba-408a-9d17-2872ce66f0c7︠









