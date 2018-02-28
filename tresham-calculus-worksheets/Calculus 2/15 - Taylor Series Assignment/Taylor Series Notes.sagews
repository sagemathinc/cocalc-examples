︠4f4f072e-ab29-485d-8998-8e2dae07de09ai︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡5b3e68bf-2640-474e-b252-356d06dea7d1︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠4671044f-7a57-4bbb-b0a1-7aef955d593di︠
%md
### Prerequisites:

* Intro to Sage
* Series
︡7a15a9cc-f977-473c-b171-23a520c7ee8b︡{"done":true,"md":"### Prerequisites:\n\n* Intro to Sage\n* Series"}
︠7242d15e-83f8-43c4-9df1-ee763e40b0a3si︠
%md
# Taylor Series

**Definition**: A *power series* centered at $x=a$ is a series of the form $$\sum_{n=0}^{\infty}\left[c_n\cdot(x-a)^n\right]=c_0+c_1\cdot(x-a)+c_2\cdot(x-a)^2+\cdots$$

where $a$ and all the $c_i$ are constants.

Notice that a power series is a function of $x$. The domain is all values of $x$ for which the series converges. There is always at least one number in the domain, namely $a$.

You can think of a power series as a polynomial with (possibly) infinite degree.
︡fdb58fa7-04dd-4874-a359-b84ffc06d2da︡{"done":true,"md":"# Taylor Series\n\n**Definition**: A *power series* centered at $x=a$ is a series of the form $$\\sum_{n=0}^{\\infty}\\left[c_n\\cdot(x-a)^n\\right]=c_0+c_1\\cdot(x-a)+c_2\\cdot(x-a)^2+\\cdots$$\n\nwhere $a$ and all the $c_i$ are constants.\n\nNotice that a power series is a function of $x$. The domain is all values of $x$ for which the series converges. There is always at least one number in the domain, namely $a$.\n\nYou can think of a power series as a polynomial with (possibly) infinite degree."}
︠2b13f89a-6395-4ecc-a2f9-5b8f51b71af0i︠
%md
One of the nice things about power series is that it's easy to differentiate and integrate them. Just like regular polynomials, you can take the derivative or integral of each term first, and then add up the results.

$$\frac{d}{dx}\sum_{n=0}^{\infty}\left[c_n\cdot(x-a)^n\right]=\sum_{n=0}^{\infty}\frac{d}{dx}\left[c_n\cdot(x-a)^n\right]$$

$$\int\sum_{n=0}^{\infty}\left[c_n\cdot(x-a)^n\right]\,dx=\sum_{n=0}^{\infty}\int\left[c_n\cdot(x-a)^n\right]\,dx$$
︡25a344f8-efcd-4f5f-8107-7496f1cede58︡{"done":true,"md":"One of the nice things about power series is that it's easy to differentiate and integrate them. Just like regular polynomials, you can take the derivative or integral of each term first, and then add up the results.\n\n$$\\frac{d}{dx}\\sum_{n=0}^{\\infty}\\left[c_n\\cdot(x-a)^n\\right]=\\sum_{n=0}^{\\infty}\\frac{d}{dx}\\left[c_n\\cdot(x-a)^n\\right]$$\n\n$$\\int\\sum_{n=0}^{\\infty}\\left[c_n\\cdot(x-a)^n\\right]\\,dx=\\sum_{n=0}^{\\infty}\\int\\left[c_n\\cdot(x-a)^n\\right]\\,dx$$"}
︠30db0efb-ff50-43ad-9ae4-aa7957edfb4ei︠
%md
## Example 1

A geometric series with $x$ as the common ratio is a simple example of a power series ($a=0$ and $c_i=c$ for all $i$):

$$\sum_{n=0}^{\infty}c\cdot x^n$$

We know when this series converges and what it coverges to:

$$\sum_{n=0}^{\infty}c\cdot x^n=\frac{c}{1-x}$$

provided that $-1 < x < 1$.

So $\displaystyle\sum_{n=0}^{\infty}c\cdot x^n$ is a function with domain $(-1,1)$. On this domain, this power series function happens to be equal to the function $\displaystyle f(x)=\frac{c}{1-x}$.
︡805981d0-e93f-4f94-86ca-45a1118635f9︡{"done":true,"md":"## Example 1\n\nA geometric series with $x$ as the common ratio is a simple example of a power series ($a=0$ and $c_i=c$ for all $i$):\n\n$$\\sum_{n=0}^{\\infty}c\\cdot x^n$$\n\nWe know when this series converges and what it coverges to:\n\n$$\\sum_{n=0}^{\\infty}c\\cdot x^n=\\frac{c}{1-x}$$\n\nprovided that $-1 < x < 1$.\n\nSo $\\displaystyle\\sum_{n=0}^{\\infty}c\\cdot x^n$ is a function with domain $(-1,1)$. On this domain, this power series function happens to be equal to the function $\\displaystyle f(x)=\\frac{c}{1-x}$."}
︠28e00fed-dcb5-4498-ac14-2c97246e84d3si︠

%md
## Taylor Series

This raises the question of whether other functions are equal to the sum of a power series (at least for part of their domains).

In other words, given a function $f(x)$, can we find $c_i$ so that $$f(x)=\sum_{n=0}^{\infty}\left[c_n\cdot(x-a)^n\right]$$

for some interval of x-values?
︡1772671d-8392-4185-991b-e34ae798444a︡{"done":true,"md":"## Taylor Series\n\nThis raises the question of whether other functions are equal to the sum of a power series (at least for part of their domains).\n\nIn other words, given a function $f(x)$, can we find $c_i$ so that $$f(x)=\\sum_{n=0}^{\\infty}\\left[c_n\\cdot(x-a)^n\\right]$$\n\nfor some interval of x-values?"}
︠c36cb023-1083-480d-ae72-566f1a02fc0ci︠
%md
This process of representing a function by a power series is called "expanding" the function into a series. The power series you get is called a **Taylor series** expansion of $f(x)$, after mathematician Brook Taylor (1685-1731).

Expanding functions into Taylor series and differentiating and integrating the series had a number of applications back then. For example, you can use Taylor Series to approximate the values of numbers like $\pi$ and $e$. Or consider the logarithmic and trigonometric functions. These are often difficult to calculate, but if you expand these into Taylor series, then you can approximate values of these functions using only polynomials (and polynomials only require arithmetic to calculate).
︡33be0932-745f-451d-8868-0bfb28468c74︡{"done":true,"md":"This process of representing a function by a power series is called \"expanding\" the function into a series. The power series you get is called a **Taylor series** expansion of $f(x)$, after mathematician Brook Taylor (1685-1731).\n\nExpanding functions into Taylor series and differentiating and integrating the series had a number of applications back then. For example, you can use Taylor Series to approximate the values of numbers like $\\pi$ and $e$. Or consider the logarithmic and trigonometric functions. These are often difficult to calculate, but if you expand these into Taylor series, then you can approximate values of these functions using only polynomials (and polynomials only require arithmetic to calculate)."}
︠be420bca-32ef-4f56-a817-3aaa53a82c77i︠
%md
Fortunately, finding the right power series to represent a function is fairly straightforward, as long as the function is repeatedly differentiable. The secret is to find derivatives of every order and evaluate them at $x=a$.
︡8a989730-b289-4b82-87ae-ff0f075ac033︡{"done":true,"md":"Fortunately, finding the right power series to represent a function is fairly straightforward, as long as the function is repeatedly differentiable. The secret is to find derivatives of every order and evaluate them at $x=a$."}
︠a6d468b3-06d9-4ba8-b799-15303aa7bdbdi︠
%md
Suppose $\displaystyle f(x)=\sum_{n=0}^{\infty}\left[c_n\cdot(x-a)^n\right]$, take the $m^{th}$ derivative, and plug in $x=a$:

$$f^{(m)}(a)=\sum_{n=0}^{\infty}\left.\frac{d^m}{dx^m}\left[c_n\cdot(x-a)^n\right]\right|_{x=a}$$
︡65c29ca0-228e-45d6-ab00-0246eabb9d94︡{"done":true,"md":"Suppose $\\displaystyle f(x)=\\sum_{n=0}^{\\infty}\\left[c_n\\cdot(x-a)^n\\right]$, take the $m^{th}$ derivative, and plug in $x=a$:\n\n$$f^{(m)}(a)=\\sum_{n=0}^{\\infty}\\left.\\frac{d^m}{dx^m}\\left[c_n\\cdot(x-a)^n\\right]\\right|_{x=a}$$"}
︠e28c3154-4442-476d-b9e0-21e045129edbi︠
%md
For all $n < m$, $\displaystyle \frac{d^m}{dx^m}\left[c_n\cdot(x-a)^n\right]=0$, so when you plug in $x=a$ it's still 0.

︡96efef8b-1870-4c97-9096-a64a4bdda039︡{"done":true,"md":"For all $n < m$, $\\displaystyle \\frac{d^m}{dx^m}\\left[c_n\\cdot(x-a)^n\\right]=0$, so when you plug in $x=a$ it's still 0."}
︠16949e59-94ff-4994-b929-54a08018106fi︠
%md
For all $n > m$, $\displaystyle \frac{d^m}{dx^m}\left[c_n\cdot(x-a)^n\right]=\frac{n!}{(n-m)!}\cdot c_n\cdot(x-a)^{n-m}$, with $n-m > 0$. So when you plug in $x=a$, you get $\displaystyle \frac{n!}{(n-m)!}\cdot c_n\cdot(a-a)^{n-m}=0$.

︡32e9b033-ddfd-4362-98b7-ea1945d9861b︡{"done":true,"md":"For all $n > m$, $\\displaystyle \\frac{d^m}{dx^m}\\left[c_n\\cdot(x-a)^n\\right]=\\frac{n!}{(n-m)!}\\cdot c_n\\cdot(x-a)^{n-m}$, with $n-m > 0$. So when you plug in $x=a$, you get $\\displaystyle \\frac{n!}{(n-m)!}\\cdot c_n\\cdot(a-a)^{n-m}=0$."}
︠a5eb9229-5050-4577-a4b7-ae9e13ce0262i︠
%md
Finally, when $n=m$, $\displaystyle \frac{d^m}{dx^m}\left[c_n\cdot(x-a)^n\right]=n!\cdot c_n\cdot (x-a)^0=n!\cdot c_n=m!\cdot c_m$.

︡8ad6864f-03cd-4721-be29-5b8034c00aa8︡{"done":true,"md":"Finally, when $n=m$, $\\displaystyle \\frac{d^m}{dx^m}\\left[c_n\\cdot(x-a)^n\\right]=n!\\cdot c_n\\cdot (x-a)^0=n!\\cdot c_n=m!\\cdot c_m$."}
︠45d95bbe-652f-4545-ba1c-630f41a6d43ai︠
%md
Putting this all together, we see that $\displaystyle f^{(m)}(a)=m!\cdot c_m$.

Therefore, $\displaystyle c_m=\frac{f^{(m)}(a)}{m!}$.
︡92eb30c2-ea43-47a8-b067-066a95ea9b66︡{"done":true,"md":"Putting this all together, we see that $\\displaystyle f^{(m)}(a)=m!\\cdot c_m$.\n\nTherefore, $\\displaystyle c_m=\\frac{f^{(m)}(a)}{m!}$."}
︠8e2a82aa-64f6-403d-b7b6-4f1587eb53cci︠
%md
**Conclusion**: If a function $f(x)$ with derivatives of every order may be represented by a power series centered at $x=a$ on some interval $I$, then that power series is $$f(x)=\sum_{n=0}^{\infty}\frac{f^{(n)}(a)}{n!}\cdot(x-a)^n,$$

where the series converges on the interval $I$.

Notice the "if" in the last sentence. There are functions that are not equal to the sum of their Taylor series, even if the series converges. We are not going to deal with such functions in this lab.
︡1f2e5613-8e0f-4825-bf86-22f5d7dcf881︡{"done":true,"md":"**Conclusion**: If a function $f(x)$ with derivatives of every order may be represented by a power series centered at $x=a$ on some interval $I$, then that power series is $$f(x)=\\sum_{n=0}^{\\infty}\\frac{f^{(n)}(a)}{n!}\\cdot(x-a)^n,$$\n\nwhere the series converges on the interval $I$.\n\nNotice the \"if\" in the last sentence. There are functions that are not equal to the sum of their Taylor series, even if the series converges. We are not going to deal with such functions in this lab."}
︠b69474a9-5c2c-435a-9f09-5f209fcf52c0is︠

%md
## Example 2

Find the Taylor series of $f(x)=e^x$ centered at $x=0$ (Taylor series centered at 0 are also called Maclaurin series).

We know $f^{(n)}(x)=f(x)=e^x$ in this case. Since $e^0=1$, we have $f^{(n)}(0)=1$ for all $n$.

Thus, $\displaystyle c_n=\frac{1}{n!}$.

If $e^x$ equals the sum of its Taylor series, then $\displaystyle e^x=\sum_{n=0}^{\infty}\frac{x^n}{n!}$. For this particular function, the Taylor series converges for all $x$, and $e^x$ does equal the sum of the series (take my word for it).
︡c2eac69f-7dea-43cd-8774-7ccf69a3a7fe︡{"md":"## Example 2\n\nFind the Taylor series of $f(x)=e^x$ centered at $x=0$ (Taylor series centered at 0 are also called Maclaurin series).\n\nWe know $f^{(n)}(x)=f(x)=e^x$ in this case. Since $e^0=1$, we have $f^{(n)}(0)=1$ for all $n$.\n\nThus, $\\displaystyle c_n=\\frac{1}{n!}$.\n\nIf $e^x$ equals the sum of its Taylor series, then $\\displaystyle e^x=\\sum_{n=0}^{\\infty}\\frac{x^n}{n!}$. For this particular function, the Taylor series converges for all $x$, and $e^x$ does equal the sum of the series (take my word for it).\n"}︡
︠4b99a921-1f29-4e75-a6ef-68c6c6786820i︠
%md
## Taylor Polynomials

The partial sums of a Taylor series are actual polynomials, called **Taylor polynomials**. In other words, the Taylor polynomial of degree $m$ is $\displaystyle\sum_{n=0}^m\frac{f^{(n)}(a)}{n!}(x-a)^n$.

We can approximate a Taylor series to whatever level of accuracy we want by using a Taylor polynomial of high enough degree.

Note: If $f^{(m)}(a)=0$, then this polynomial will actually have degree less than $m$.

︡a5f4f8be-4d5d-44b0-bafe-5c2ea104d024︡{"done":true,"md":"## Taylor Polynomials\n\nThe partial sums of a Taylor series are actual polynomials, called **Taylor polynomials**. In other words, the Taylor polynomial of degree $m$ is $\\displaystyle\\sum_{n=0}^m\\frac{f^{(n)}(a)}{n!}(x-a)^n$.\n\nWe can approximate a Taylor series to whatever level of accuracy we want by using a Taylor polynomial of high enough degree.\n\nNote: If $f^{(m)}(a)=0$, then this polynomial will actually have degree less than $m$."}
︠cd8613f4-2eac-40d9-8c7a-3e36d1a08d6ei︠
%md
Notice that the Taylor polynomial of degree 1 is $\displaystyle\sum_{n=0}^1\frac{f^{(n)}(a)}{n!}(x-a)^n=\frac{f^{(0)}(a)}{0!}(x-a)^0+\frac{f^{(1)}(a)}{1!}\cdot(x-a)^1=f(a)+f'(a)(x-a)$.

Does this look familiar? It should! This is an equation for the tangent line to $f$ at $a$. In other words, Taylor polynomials are generalizations of the tangent line to higher degree polynomials.

︡a77b46de-6edf-4917-a658-673191f2f8ac︡{"done":true,"md":"Notice that the Taylor polynomial of degree 1 is $\\displaystyle\\sum_{n=0}^1\\frac{f^{(n)}(a)}{n!}(x-a)^n=\\frac{f^{(0)}(a)}{0!}(x-a)^0+\\frac{f^{(1)}(a)}{1!}\\cdot(x-a)^1=f(a)+f'(a)(x-a)$.\n\nDoes this look familiar? It should! This is an equation for the tangent line to $f$ at $a$. In other words, Taylor polynomials are generalizations of the tangent line to higher degree polynomials."}
︠e601ef11-f703-4b52-94e1-1261f95ffcb8i︠
%md
Also note that the Taylor polynomial of degree 2 is $\displaystyle\sum_{n=0}^2\frac{f^{(n)}(a)}{n!}(x-a)^n=$
$$\frac{f^{(0)}(a)}{0!}(x-a)^0+\frac{f^{(1)}(a)}{1!}\cdot(x-a)^1+\frac{f^{(2)}(a)}{2!}\cdot(x-a)^2=$$

$$f(a)+f'(a)(x-a)+\frac{f''(a)}{2}(x-a)^2$$

This is the formula we used for Quadratic Approximation in Calc 1.
︡99825350-acc4-4b42-b365-86f53c63403c︡{"done":true,"md":"Also note that the Taylor polynomial of degree 2 is $\\displaystyle\\sum_{n=0}^2\\frac{f^{(n)}(a)}{n!}(x-a)^n=$\n$$\\frac{f^{(0)}(a)}{0!}(x-a)^0+\\frac{f^{(1)}(a)}{1!}\\cdot(x-a)^1+\\frac{f^{(2)}(a)}{2!}\\cdot(x-a)^2=$$\n\n$$f(a)+f'(a)(x-a)+\\frac{f''(a)}{2}(x-a)^2$$\n\nThis is the formula we used for Quadratic Approximation in Calc 1."}
︠cfb677ce-2120-4b65-8fdd-334b97a7225fi︠
%md
## Example 3

We will use Taylor polynomials to approximate the value of $e$. We saw above that $\displaystyle e^x=\sum_{n=0}^{\infty}\frac{x^n}{n!}$.

The Taylor polynomial of degree $m$ is $\displaystyle\sum_{n=0}^{m}\frac{x^n}{n!}=1+x+\frac{x^2}{2}+\frac{x^3}{6}+\cdots+\frac{x^m}{m!}$.

So $\displaystyle e^x\approx 1+x+\frac{x^2}{2}+\frac{x^3}{6}+\cdots+\frac{x^m}{m!}$. The approximation improves as $m$ increases.

If we plug in $x=1$, we get $\displaystyle e\approx 1+1+\frac{1}{2}+\frac{1}{6}+\cdots+\frac{1}{m!}$.

Let's approximate the value of $e$.
︡79f62113-cdb5-4949-a891-da36c60c5bf6︡{"done":true,"md":"## Example 3\n\nWe will use Taylor polynomials to approximate the value of $e$. We saw above that $\\displaystyle e^x=\\sum_{n=0}^{\\infty}\\frac{x^n}{n!}$.\n\nThe Taylor polynomial of degree $m$ is $\\displaystyle\\sum_{n=0}^{m}\\frac{x^n}{n!}=1+x+\\frac{x^2}{2}+\\frac{x^3}{6}+\\cdots+\\frac{x^m}{m!}$.\n\nSo $\\displaystyle e^x\\approx 1+x+\\frac{x^2}{2}+\\frac{x^3}{6}+\\cdots+\\frac{x^m}{m!}$. The approximation improves as $m$ increases.\n\nIf we plug in $x=1$, we get $\\displaystyle e\\approx 1+1+\\frac{1}{2}+\\frac{1}{6}+\\cdots+\\frac{1}{m!}$.\n\nLet's approximate the value of $e$."}
︠c94c8ba7-90c2-4048-aa9a-988eaddf2113s︠
%auto
%var n
@interact
def _(m=input_box(1,label='Degree of Taylor polynomial',width=20)):
    print "Approximation =",N(sum(1/factorial(n),n,0,m),digits=30)
    print "Actual value  =",N(e,digits=30)
︡1190ffcb-898c-4675-ae17-30e05167594e︡{"interact":{"controls":[{"control_type":"input-box","default":1,"label":"Degree of Taylor polynomial","nrows":1,"readonly":false,"submit_button":null,"type":null,"var":"m","width":20}],"flicker":false,"id":"62eea850-1494-4785-bb26-ec1b918dce71","layout":[[["m",12,null]],[["",12,null]]],"style":"None"}}︡{"done":true}︡
︠e73236b4-6c95-46a0-8c6c-45a8811e7eeei︠
%md
How big must $m$ be so that our approximation is correct for all the decimal places shown?
︡fb1ab519-82b3-44f7-9021-b3aa1772643e︡{"md":"How big must $m$ be so that our approximation is correct for all the decimal places shown?\n"}︡
︠a403e008-1067-4af8-8047-e32a8916afd1i︠
%md
Let's look at some graphs.

$f(x)=e^x$ is plotted in black, along with three Taylor polynomials (blue = degree 2, green = degree 3, red = degree 4)
︡07ad8bda-2265-4e22-af5c-61253854cc15︡{"md":"Let's look at some graphs.\n\n$f(x)=e^x$ is plotted in black, along with three Taylor polynomials (blue = degree 2, green = degree 3, red = degree 4)\n"}︡
︠cf6438b0-085c-4295-b901-eeaaf733ff59︠
%var n
plot(sum(x^n/factorial(n),n,0,2),xmin=-1, xmax=1,color='blue',legend_label='degree 2')+plot(sum(x^n/factorial(n),n,0,3),xmin=-1, xmax=1,color='green',legend_label='degree 3')+plot(sum(x^n/factorial(n),n,0,4),xmin=-1, xmax=1,color='red',legend_label='degree 4')+plot(e^x,xmin=-1, xmax=1,ymax=e,color='black',legend_label='$e^x$')
︡9358db04-657d-4b97-8376-49249cd45f5a︡{"once":false,"file":{"show":true,"uuid":"ee571c3d-5591-4bd7-8d4c-b81e1d792eb8","filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/8195/tmp_UffMLK.svg"}}︡{"html":"<div align='center'></div>"}︡
︠7854a9de-64b1-4dd6-9ea8-56374f1233c0i︠
%md
Notice that the higher the degree the better the approximation.

Now try xmin=-10; xmax=10; ymax=1000
︡7535469b-f5f9-4d58-bf8f-1447eabdbce4︡{"md":"Notice that the higher the degree the better the approximation.\n\nNow try xmin=-10; xmax=10; ymax=1000\n"}︡
︠bb5fcfaf-6afa-4f15-9426-c3c9d2aa3e41︠
%var n
plot(sum(x^n/factorial(n),n,0,2),xmin=-10,xmax=10,color='blue',legend_label='degree 2')+plot(sum(x^n/factorial(n),n,0,3),xmin=-10, xmax=10,color='green',legend_label='degree 3')+plot(sum(x^n/factorial(n),n,0,4),xmin=-10, xmax=10,color='red',legend_label='degree 4')+plot(e^x,xmin=-10, xmax=10,ymax=1000,color='black',legend_label='$e^x$')
︡0ba35ff7-0c91-481d-a515-e39ce94769e1︡{"once":false,"file":{"show":true,"uuid":"8836f082-0c53-4303-9dfd-eb3dfc2b30af","filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/8195/tmp_YlKkGE.svg"}}︡{"html":"<div align='center'></div>"}︡
︠895f101b-dd0d-4576-9719-1c56eb3c712ei︠
%md
Notice that the Taylor polynomials are better approximations the closer you get to the center of the expansion (in this case $x=0$), just like the tangent line is a better approximation the closer you get to the point of tangency.
︡ccc77c04-a312-4ad7-a113-cfeb8565e48e︡{"md":"Notice that the Taylor polynomials are better approximations the closer you get to the center of the expansion (in this case $x=0$), just like the tangent line is a better approximation the closer you get to the point of tangency.\n"}︡
︠445799bb-a671-4c64-b9d5-83e28105657ei︠
%md
In the animation below, we see taylor polynomials of increasing degree (in blue) plotted with $f(x)=e^x$ (in black).
︡ec1f5c6c-9d38-41e2-9dbd-a60ec5c8b702︡{"md":"In the animation below, we see taylor polynomials of increasing degree (in blue) plotted with $f(x)=e^x$ (in black).\n"}︡
︠4640d8d8-a0b2-41fb-9f83-2336a4240194s︠
%auto
s=[]
taylorpoly=1
p=plot(e^x,-5,15,ymin=-100,ymax=1500,color='black')
for n in [1..10]:
    taylorpoly+=x^n/factorial(n)
    s+=[p+plot(taylorpoly,-5,15)]
a=animate(s)
show(a,delay=50)
︡5e182d06-30af-4417-8ef8-8813f19f5f01︡{"file":{"filename":"/home/user/.sage/temp/project-9189c752-e334-4311-afa9-605b6159620a/217087/tmp_deVBqU.webm","show":true,"text":null,"url":"/9189c752-e334-4311-afa9-605b6159620a/raw/.sage/temp/project-9189c752-e334-4311-afa9-605b6159620a/217087/tmp_deVBqU.webm"},"once":false}︡{"done":true}︡
︠e010c84a-5fa9-4d41-8611-849e121c9c8eis︠
%md
We can use Sage to calculate Taylor polynomials using the "taylor" command. This command takes four arguments: the expression or function to expand, the variable of expansion, the center of the expansion, and the degree of polynomial you want.

## Example 4

Use Sage to find the 10th-degree Taylor polynomial centered at $x=0$ for $f(x)=e^x$.
︡8566c535-c880-44fd-8656-a993c6a900e3︡{"md":"We can use Sage to calculate Taylor polynomials using the \"taylor\" command. This command takes four arguments: the expression or function to expand, the variable of expansion, the center of the expansion, and the degree of polynomial you want.\n\n## Example 4\n\nUse Sage to find the 10th-degree Taylor polynomial centered at $x=0$ for $f(x)=e^x$.\n"}︡
︠2ae23849-9fe4-4076-872d-6aeeaf33e0ed︠
show(taylor(e^x,x,0,10))
︡9fdf8c77-9b5f-4382-a1a0-e510ba650fd6︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{3628800} \\, x^{10} + \\frac{1}{362880} \\, x^{9} + \\frac{1}{40320} \\, x^{8} + \\frac{1}{5040} \\, x^{7} + \\frac{1}{720} \\, x^{6} + \\frac{1}{120} \\, x^{5} + \\frac{1}{24} \\, x^{4} + \\frac{1}{6} \\, x^{3} + \\frac{1}{2} \\, x^{2} + x + 1$</div>"}︡
︠201abada-6ad5-4456-8542-65910ecbc1deis︠
%md
## Example 5

Find the 15th-degree Taylor polynomials of $\sin(x)$ centered at $x=0$, $x=-\pi$, and $x=\pi$.
︡b789c281-7734-4022-a063-114933f76040︡{"md":"## Example 5\n\nFind the 15th-degree Taylor polynomials of $\\sin(x)$ centered at $x=0$, $x=-\\pi$, and $x=\\pi$.\n"}︡
︠090d2b6a-64a3-4599-9e3e-5b81c100f110︠
show(taylor(sin(x),x,0,15))
︡88ed56f0-16d6-4477-982a-307b52f962cf︡{"html":"<div align='center'>$\\displaystyle -\\frac{1}{1307674368000} \\, x^{15} + \\frac{1}{6227020800} \\, x^{13} - \\frac{1}{39916800} \\, x^{11} + \\frac{1}{362880} \\, x^{9} - \\frac{1}{5040} \\, x^{7} + \\frac{1}{120} \\, x^{5} - \\frac{1}{6} \\, x^{3} + x$</div>"}︡
︠92f9014e-1b0a-4f0e-bca0-a86270d63a31︠
show(taylor(sin(x),x,-pi,15))
︡874a8347-3697-489e-9a79-9022843a0dd9︡{"html":"<div align='center'>$\\displaystyle -\\pi + \\frac{1}{1307674368000} \\, {\\left(\\pi + x\\right)}^{15} - \\frac{1}{6227020800} \\, {\\left(\\pi + x\\right)}^{13} + \\frac{1}{39916800} \\, {\\left(\\pi + x\\right)}^{11} - \\frac{1}{362880} \\, {\\left(\\pi + x\\right)}^{9} + \\frac{1}{5040} \\, {\\left(\\pi + x\\right)}^{7} - \\frac{1}{120} \\, {\\left(\\pi + x\\right)}^{5} + \\frac{1}{6} \\, {\\left(\\pi + x\\right)}^{3} - x$</div>"}︡
︠f897f04f-485c-4878-bc68-e91894bb921d︠
show(taylor(sin(x),x,pi,15))
︡f645fd73-4e14-4b6f-989c-b09731169283︡{"html":"<div align='center'>$\\displaystyle \\pi - \\frac{1}{1307674368000} \\, {\\left(\\pi - x\\right)}^{15} + \\frac{1}{6227020800} \\, {\\left(\\pi - x\\right)}^{13} - \\frac{1}{39916800} \\, {\\left(\\pi - x\\right)}^{11} + \\frac{1}{362880} \\, {\\left(\\pi - x\\right)}^{9} - \\frac{1}{5040} \\, {\\left(\\pi - x\\right)}^{7} + \\frac{1}{120} \\, {\\left(\\pi - x\\right)}^{5} - \\frac{1}{6} \\, {\\left(\\pi - x\\right)}^{3} - x$</div>"}︡
︠b91aff4d-24ad-40d9-9450-5758fbaf8eacsi︠
%md
Notice that some of the coefficients (the $c_i$) are 0 in this example.
︡7747c06e-4b0b-4669-9e32-777973869d91︡{"done":true,"md":"Notice that some of the coefficients (the $c_i$) are 0 in this example."}
︠cf293aca-74dc-47a0-92c4-c47cf11fde5fi︠
%md
## Example 6

Find the Taylor polynomials of $\cos(x)$ centered at $x=0$ of degrees 5, 10, and 15.
︡1ae23394-febc-461f-8d85-c21daa07cc85︡{"done":true,"md":"## Example 6\n\nFind the Taylor polynomials of $\\cos(x)$ centered at $x=0$ of degrees 5, 10, and 15."}
︠1f92d7fd-ae96-4196-95a1-4d8f4f950f7c︠
show(taylor(cos(x),x,0,5))
︡28b37198-f205-4f7f-969e-ceafed34b977︡{"tex":{"tex":"\\frac{1}{24} \\, x^{4} - \\frac{1}{2} \\, x^{2} + 1","display":true}}︡
︠034ef4e5-0f99-4a7e-8354-fdd82f889b91︠
show(taylor(cos(x),x,0,10))
︡eea82e06-138b-4ee1-9836-4d461db467eb︡{"tex":{"tex":"-\\frac{1}{3628800} \\, x^{10} + \\frac{1}{40320} \\, x^{8} - \\frac{1}{720} \\, x^{6} + \\frac{1}{24} \\, x^{4} - \\frac{1}{2} \\, x^{2} + 1","display":true}}︡
︠ead6ae0f-14f6-477b-8d1d-e7eb28c54955︠
show(taylor(cos(x),x,0,15))
︡a76e1c28-21f4-4634-be4f-4fb5ed8965d0︡{"tex":{"tex":"-\\frac{1}{87178291200} \\, x^{14} + \\frac{1}{479001600} \\, x^{12} - \\frac{1}{3628800} \\, x^{10} + \\frac{1}{40320} \\, x^{8} - \\frac{1}{720} \\, x^{6} + \\frac{1}{24} \\, x^{4} - \\frac{1}{2} \\, x^{2} + 1","display":true}}︡
︠35e05a4c-907a-4532-8839-2dd3e12753fcis︠
%md
## Example 7

Find the 10th-degree Taylor polynomial centered at $x=0$ of $\displaystyle f(x)=\frac{c}{1-x}$.
︡38fba7ce-0927-4a56-9550-70be182c5db7︡{"md":"## Example 7\n\nFind the 10th-degree Taylor polynomial centered at $x=0$ of $\\displaystyle f(x)=\\frac{c}{1-x}$.\n"}︡
︠b209d7b1-e739-4df3-941b-5a531c146234︠
%var c
show(taylor(c/(1-x),x,0,10))
︡2e768867-1101-44e6-ab01-1b63469e6ac9︡{"html":"<div align='center'>$\\displaystyle c x^{10} + c x^{9} + c x^{8} + c x^{7} + c x^{6} + c x^{5} + c x^{4} + c x^{3} + c x^{2} + c x + c$</div>"}︡
︠41a519dc-12ff-4205-930c-f32fbbac5888i︠
%md
Here's a graph of this one for $c=1$.
︡353c8df1-d42e-4c86-bd8f-fe5c59264fce︡{"md":"Here's a graph of this one for $c=1$.\n"}︡
︠a4387aac-83e6-4863-a249-1df199fe2161s︠
plot(taylor(1/(1-x),x,0,10))+plot(1/(1-x),color='black',ymax=6,ymin=0)
︡cabc2e5b-7d56-4adf-a44e-a34860ac80e0︡{"once":false,"file":{"show":true,"uuid":"56111ada-189d-4f3a-9f37-61d1a2694bc0","filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/14366/tmp_btDNEo.svg"}}︡{"html":"<div align='center'></div>"}︡
︠768af8aa-a378-48ec-8ebd-9454ebe681f7︠









