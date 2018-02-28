︠92a9359b-eb6c-4659-b7e4-8afde63ddd37ai︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡87692b8c-6401-4c7e-97a0-eb1d371e0858︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠5be3a2bf-e800-4c52-8fc4-8172ff62d653i︠
%md
### Prerequisites:

* Intro to Sage
* Sequences
︡8175510e-0157-4c6e-8423-d9353111c45f︡{"done":true,"md":"### Prerequisites:\n\n* Intro to Sage\n* Sequences"}
︠143a7ef9-73d0-4bb3-ba79-bacab589930fis︠
%md
# Infinite Series

An infinite series is simply an infinite sum of numbers.

## Example 1

The harmonic series is the sum of the reciprocals of the positive integers:

$$1+\frac{1}{2}+\frac{1}{3}+\frac{1}{4}+\cdots+\frac{1}{n}+\cdots$$

This may be written with summation notation as $$\sum_{n=1}^{\infty}\frac{1}{n}$$
︡629e17d5-b3c9-435b-a888-57fe4c95ea2e︡{"md":"# Infinite Series\n\nAn infinite series is simply an infinite sum of numbers.\n\n## Example 1\n\nThe harmonic series is the sum of the reciprocals of the positive integers:\n\n$$1+\\frac{1}{2}+\\frac{1}{3}+\\frac{1}{4}+\\cdots+\\frac{1}{n}+\\cdots$$\n\nThis may be written with summation notation as $$\\sum_{n=1}^{\\infty}\\frac{1}{n}$$\n"}︡
︠170dea3c-760a-43c9-8289-2f04cefdbd38i︠

%md
The decimal expansion of a real number can be thought of as a series.

## Example 2
$$\frac{1}{9}=0.11111\ldots=\frac{1}{10}+\frac{1}{10^2}+\frac{1}{10^3}+\cdots+\frac{1}{10^n}+\cdots=\sum_{n=1}^{\infty}\frac{1}{10^n}$$
︡6a65552e-0835-4825-b989-3f94ace638b6︡{"done":true,"md":"The decimal expansion of a real number can be thought of as a series.\n\n## Example 2\n$$\\frac{1}{9}=0.11111\\ldots=\\frac{1}{10}+\\frac{1}{10^2}+\\frac{1}{10^3}+\\cdots+\\frac{1}{10^n}+\\cdots=\\sum_{n=1}^{\\infty}\\frac{1}{10^n}$$"}
︠ab174ff6-359e-4efb-8a32-3bad97c8dc46i︠
%md

In this example, we can see that an infinite sum of numbers may give you a finite answer. Such a series is called **convergent**.

<br>Of course, many infinite series do not give you a finite sum. Such series are called **divergent**.

<br>(We'll define these more precisely below.)
︡476ba04c-6f51-4e18-804b-1807f2f88715︡{"done":true,"md":"\nIn this example, we can see that an infinite sum of numbers may give you a finite answer. Such a series is called **convergent**.\n\n<br>Of course, many infinite series do not give you a finite sum. Such series are called **divergent**.\n\n<br>(We'll define these more precisely below.)"}
︠144225e8-c9fd-4e3f-916a-442fac4e7587i︠

%md
One of the easiest ways to get a divergent series is if the terms don't approach zero. That is, $\displaystyle\sum_{n=1}^{\infty}a_n$ diverges if $\displaystyle\lim_{n\to\infty}a_n\ne0$.
︡7c3f3cff-55fa-467c-bb14-0e92e5950353︡{"done":true,"md":"One of the easiest ways to get a divergent series is if the terms don't approach zero. That is, $\\displaystyle\\sum_{n=1}^{\\infty}a_n$ diverges if $\\displaystyle\\lim_{n\\to\\infty}a_n\\ne0$."}
︠a71ae0bd-d1d6-45c4-98d8-12da6cb3c0c6i︠
%md
On the other hand, if $\displaystyle\lim_{n\to\infty}a_n=0$, this is no guarantee that $\displaystyle\sum_{n=1}^{\infty}a_n$ converges.

## Example 3

Even though $\displaystyle\lim_{n\to\infty}\frac{1}{n}=0$, the harmonic series diverges. This fact was proved as far back as the 14th century by Oresme. His approach was to compare the harmonic series to a series with smaller terms. If the smaller series diverges, then the harmonic series must as well.

Given $$1+\frac{1}{2}+\frac{1}{3}+\frac{1}{4}+\cdots+\frac{1}{n}+\cdots$$

Replace $1$ with $\frac{1}{2}$, replace $\frac{1}{3}$ with $\frac{1}{4}$, replace each of $\frac{1}{5}$, $\frac{1}{6}$, and $\frac{1}{7}$ with $\frac{1}{8}$, and so on. What you get is the smaller series

$$\frac{1}{2}+\frac{1}{2}+\frac{1}{4}+\frac{1}{4}+\frac{1}{8}+\frac{1}{8}+\frac{1}{8}+\frac{1}{8}+\cdots$$

$$=\frac{1}{2}+\frac{1}{2}+\left(\frac{1}{4}+\frac{1}{4}\right)+\left(\frac{1}{8}+\frac{1}{8}+\frac{1}{8}+\frac{1}{8}\right)+\cdots$$

$$=\frac{1}{2}+\frac{1}{2}+\frac{1}{2}+\frac{1}{2}+\cdots$$

This series diverges, since $\displaystyle\lim_{n\to\infty}\frac{1}{2}=\frac{1}{2}\ne0$.

︡db489306-55b7-4439-82e4-9b8f047dea43︡{"done":true,"md":"On the other hand, if $\\displaystyle\\lim_{n\\to\\infty}a_n=0$, this is no guarantee that $\\displaystyle\\sum_{n=1}^{\\infty}a_n$ converges.\n\n## Example 3\n\nEven though $\\displaystyle\\lim_{n\\to\\infty}\\frac{1}{n}=0$, the harmonic series diverges. This fact was proved as far back as the 14th century by Oresme. His approach was to compare the harmonic series to a series with smaller terms. If the smaller series diverges, then the harmonic series must as well.\n\nGiven $$1+\\frac{1}{2}+\\frac{1}{3}+\\frac{1}{4}+\\cdots+\\frac{1}{n}+\\cdots$$\n\nReplace $1$ with $\\frac{1}{2}$, replace $\\frac{1}{3}$ with $\\frac{1}{4}$, replace each of $\\frac{1}{5}$, $\\frac{1}{6}$, and $\\frac{1}{7}$ with $\\frac{1}{8}$, and so on. What you get is the smaller series\n\n$$\\frac{1}{2}+\\frac{1}{2}+\\frac{1}{4}+\\frac{1}{4}+\\frac{1}{8}+\\frac{1}{8}+\\frac{1}{8}+\\frac{1}{8}+\\cdots$$\n\n$$=\\frac{1}{2}+\\frac{1}{2}+\\left(\\frac{1}{4}+\\frac{1}{4}\\right)+\\left(\\frac{1}{8}+\\frac{1}{8}+\\frac{1}{8}+\\frac{1}{8}\\right)+\\cdots$$\n\n$$=\\frac{1}{2}+\\frac{1}{2}+\\frac{1}{2}+\\frac{1}{2}+\\cdots$$\n\nThis series diverges, since $\\displaystyle\\lim_{n\\to\\infty}\\frac{1}{2}=\\frac{1}{2}\\ne0$."}
︠e77d41b8-6e4e-4ae3-88d0-485423661b35i︠
%md
Compare this result with this convergent series:

$$\sum_{n=1}^{\infty}\frac{1}{n^2}=\frac{\pi^2}{6}\approx1.64493406684823$$

<br>[Side note: compare this to the improper integrals $\displaystyle\int_1^{\infty}\frac{1}{x}\, dx$ (divergent) and $\displaystyle\int_1^{\infty}\frac{1}{x^2}\, dx$ (convergent). Actually, each series is a Riemann sum for the corresponding integral.]
︡3acfbf33-6688-4ac0-9adf-348ca9bcf904︡{"done":true,"md":"Compare this result with this convergent series:\n\n$$\\sum_{n=1}^{\\infty}\\frac{1}{n^2}=\\frac{\\pi^2}{6}\\approx1.64493406684823$$\n\n<br>[Side note: compare this to the improper integrals $\\displaystyle\\int_1^{\\infty}\\frac{1}{x}\\, dx$ (divergent) and $\\displaystyle\\int_1^{\\infty}\\frac{1}{x^2}\\, dx$ (convergent). Actually, each series is a Riemann sum for the corresponding integral.]"}
︠ebebd31c-49e9-48a4-9517-4674d8144949si︠
%md
## Partial Sums

Given a series $\displaystyle\sum_{n=1}^{\infty}a_n$, we define a *sequence* $\{S_n\}$ as follows:

$$S_n=\sum_{i=1}^na_i \quad \mathrm{(add\ up\ the\ first\ n\ terms\ of\ the\ series)}$$

$S_n$ is called the nth partial sum of the series.

︡87f406d4-40bc-4255-8021-0fc11af30a4b︡{"done":true,"md":"## Partial Sums\n\nGiven a series $\\displaystyle\\sum_{n=1}^{\\infty}a_n$, we define a *sequence* $\\{S_n\\}$ as follows:\n\n$$S_n=\\sum_{i=1}^na_i \\quad \\mathrm{(add\\ up\\ the\\ first\\ n\\ terms\\ of\\ the\\ series)}$$\n\n$S_n$ is called the nth partial sum of the series."}
︠6bb6b037-3751-4bcf-aced-257ae3bbe81fi︠
%md
## Example 4

Find the 10th and 20th partial sums of the series $\displaystyle\sum_{n=1}^{\infty}\frac{2n+1}{3n^2+9}$.
︡36174a0d-bad9-405b-a155-6286207d32f9︡{"done":true,"md":"## Example 4\n\nFind the 10th and 20th partial sums of the series $\\displaystyle\\sum_{n=1}^{\\infty}\\frac{2n+1}{3n^2+9}$."}
︠b67ee23e-41da-4ac6-8f77-abb955570528i︠
%md
We can use the sum command in Sage, which requires four arguments: sum(expression, index variable, starting value, ending value). Don't forget to declare the index variable first.

Here is the 10th partial sum (I'll convert the answer to a decimal).
︡b322f597-7363-40d9-86b3-2835a0bacab5︡{"done":true,"md":"We can use the sum command in Sage, which requires four arguments: sum(expression, index variable, starting value, ending value). Don't forget to declare the index variable first.\n\nHere is the 10th partial sum (I'll convert the answer to a decimal)."}
︠08907aec-963d-4b46-8f33-101a7a85ab0f︠
%var n
sum((2*n+1)/(3*n^2+9),n,1,10)
N(_)
︡dec1b027-9566-4ac9-b390-10f00594862c︡{"stdout":"28771121/20454564\n"}︡{"stdout":"1.40658686247236\n"}︡{"done":true}︡
︠a9689485-42a4-4587-8c41-abd5e52f0f63i︠
%md
Here is the 20th partial sum.
︡25455331-e627-40a2-8f41-31719c51e316︡{"done":true,"md":"Here is the 20th partial sum."}
︠c8c97550-80dc-4c97-ad03-153d43ff2c35s︠
sum((2*n+1)/(3*n^2+9),n,1,20)
N(_)
︡de0b6969-be55-4ff8-b44f-bb2050e23d79︡{"stdout":"12139706620041946362/6522879694663705009\n"}︡{"stdout":"1.86109620111088\n"}︡{"done":true}︡
︠77879dfa-82a0-443f-be07-177a25daa554i︠
%md
We define convergence of a series in terms of the sequence of partial sums, $S_n$.

<br>If $\displaystyle\lim_{n\to\infty}S_n$ exists, then we say the series **converges** (or is convergent), and we define the **sum** of the series to be this limit; that is, $$\sum_{n=1}^{\infty}a_n=\lim_{n\to\infty}S_n$$

<br>If the limit does not exist, then we say the series **diverges** (or is divergent).
︡3b0d241a-8489-4cdc-be15-c7008c5f087e︡{"done":true,"md":"We define convergence of a series in terms of the sequence of partial sums, $S_n$.\n\n<br>If $\\displaystyle\\lim_{n\\to\\infty}S_n$ exists, then we say the series **converges** (or is convergent), and we define the **sum** of the series to be this limit; that is, $$\\sum_{n=1}^{\\infty}a_n=\\lim_{n\\to\\infty}S_n$$\n\n<br>If the limit does not exist, then we say the series **diverges** (or is divergent)."}
︠1f08cbbd-25b4-4fd0-989d-64d4f5a02d30i︠
%md
Here is a graph of the first 50 partial sums for $\displaystyle\sum_{n=1}^{\infty}\frac{2n+1}{3n^2+9}$.

Notice that the partial sums seem to get bigger and bigger without approaching a limit, which suggests this series diverges.
︡32b8118c-b147-40d3-a900-4406658ee574︡{"done":true,"md":"Here is a graph of the first 50 partial sums for $\\displaystyle\\sum_{n=1}^{\\infty}\\frac{2n+1}{3n^2+9}$.\n\nNotice that the partial sums seem to get bigger and bigger without approaching a limit, which suggests this series diverges."}
︠700d0a00-6953-4331-a49e-c59ea7a1ec5csi︠
%auto
%hide
%var i,n
point([(i,sum((2*n+1)/(3*n^2+9),n,1,i)) for i in [1..50]],axes_labels=['$n$','$S_n$'])
︡06bf1f89-9ba7-4f5a-823c-5002fbd3813b︡{"hide":"input"}︡{"file":{"filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/15011/tmp_7I0ibL.svg","show":true,"text":null,"uuid":"bc60b8d3-9fc8-44d9-ab56-f563d4e80d9b"},"once":false}︡{"done":true}︡
︠aa6f4783-a051-4fcb-9720-939ed9df3f36i︠
%md
Sage can handle infinite series. In this case, Sage tells us the series is divergent.
︡f5f0a6f9-9c15-419c-bb9a-06d7139b0ca4︡{"done":true,"md":"Sage can handle infinite series. In this case, Sage tells us the series is divergent."}
︠730abec0-3cdd-4354-bf66-3f4654fb4971s︠
sum((2*n+1)/(3*n^2+9),n,1,Infinity)
︡28a8b325-203c-44de-be90-390a1fb37db1︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/sage/sage-7.5/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 995, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"/projects/sage/sage-7.5/local/lib/python2.7/site-packages/sage/misc/functional.py\", line 563, in symbolic_sum\n    return expression.sum(*args, **kwds)\n  File \"sage/symbolic/expression.pyx\", line 11601, in sage.symbolic.expression.Expression.sum (/projects/sage/sage-7.5/src/build/cythonized/sage/symbolic/expression.cpp:63737)\n    return symbolic_sum(self, *args, **kwds)\n  File \"/projects/sage/sage-7.5/local/lib/python2.7/site-packages/sage/calculus/calculus.py\", line 621, in symbolic_sum\n    return maxima.sr_sum(expression,v,a,b)\n  File \"/projects/sage/sage-7.5/local/lib/python2.7/site-packages/sage/interfaces/maxima_lib.py\", line 892, in sr_sum\n    raise ValueError(\"Sum is divergent.\")\nValueError: Sum is divergent.\n"}︡{"done":true}︡
︠f6734b9a-911b-4f56-a305-ac68a33ba01ai︠
%md
## Example 5

Consider the series $\displaystyle\sum_{n=1}^{\infty}\frac{1}{n}$.

Here is a graph of the first 50 partial sums of this series. It appears the partial sums are getting larger and larger without bound. This is what we expect, since we saw above that this series diverges.
︡e3174e3f-56b1-4bef-b97b-37e0c55c8cee︡{"done":true,"md":"## Example 5\n\nConsider the series $\\displaystyle\\sum_{n=1}^{\\infty}\\frac{1}{n}$.\n\nHere is a graph of the first 50 partial sums of this series. It appears the partial sums are getting larger and larger without bound. This is what we expect, since we saw above that this series diverges."}
︠3e4ea4f5-6361-42c3-bce4-afb102a63f41si︠
%auto
%hide
%var i
point([(n,sum(1/i,i,1,n)) for n in [1..50]],axes_labels=['$n$','$S_n$'])
︡61596138-74ee-4019-b8be-5f3c0d61788e︡{"hide":"input"}︡{"file":{"filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/15011/tmp_CWwXyX.svg","show":true,"text":null,"uuid":"4116eace-9dfb-4fa1-85f9-30d1f194c9b5"},"once":false}︡{"done":true}︡
︠917afa52-4b5d-4e6a-8d7e-eea8995cf864i︠
%md
Sage will also tell us that this series diverges.
︡acf1250d-e53a-4ed3-b33b-463079868eb0︡{"done":true,"md":"Sage will also tell us that this series diverges."}
︠3dee6190-228e-4924-a2c6-edce970a46b6s︠
sum(1/n,n,1,Infinity)
︡577ff941-cd4f-4e0d-8d44-2a2828450039︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/sage/sage-7.5/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 995, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"/projects/sage/sage-7.5/local/lib/python2.7/site-packages/sage/misc/functional.py\", line 563, in symbolic_sum\n    return expression.sum(*args, **kwds)\n  File \"sage/symbolic/expression.pyx\", line 11601, in sage.symbolic.expression.Expression.sum (/projects/sage/sage-7.5/src/build/cythonized/sage/symbolic/expression.cpp:63737)\n    return symbolic_sum(self, *args, **kwds)\n  File \"/projects/sage/sage-7.5/local/lib/python2.7/site-packages/sage/calculus/calculus.py\", line 621, in symbolic_sum\n    return maxima.sr_sum(expression,v,a,b)\n  File \"/projects/sage/sage-7.5/local/lib/python2.7/site-packages/sage/interfaces/maxima_lib.py\", line 892, in sr_sum\n    raise ValueError(\"Sum is divergent.\")\nValueError: Sum is divergent.\n"}︡{"done":true}︡
︠f748319a-019e-4db9-a32f-b69c2a29a97di︠
%md
## Example 6

Consider the series $\displaystyle\sum_{n=1}^{\infty}\frac{1}{n^2}$.

Here is a graph of the first 50 partial sums for this series. Now the partial sums approach a limit around 1.6 (the exact answer is $\frac{\pi^2}{6}\approx1.64493406684823$).
︡73311078-b322-4fc8-8c7c-a1344c5fd6ba︡{"done":true,"md":"## Example 6\n\nConsider the series $\\displaystyle\\sum_{n=1}^{\\infty}\\frac{1}{n^2}$.\n\nHere is a graph of the first 50 partial sums for this series. Now the partial sums approach a limit around 1.6 (the exact answer is $\\frac{\\pi^2}{6}\\approx1.64493406684823$)."}
︠c8df053c-9f07-4908-8a7f-787b39ce36dcsi︠
%auto
%hide
%var i
point([(n,sum(1/i^2,i,1,n)) for n in [1..50]],axes_labels=['$n$','$S_n$'])
︡ab3c514e-65ea-4262-8edb-62203dfc73ff︡{"hide":"input"}︡{"file":{"filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/15011/tmp_1tmKu5.svg","show":true,"text":null,"uuid":"e74ce947-ec82-446f-a45b-04e63614bd1f"},"once":false}︡{"done":true}︡
︠8e267b88-ffbe-46d7-a6c4-d2c442e30a79i︠
%md
Here is the answer from Sage.
︡490a3baf-da9b-4621-aa13-528bac3be06f︡{"done":true,"md":"Here is the answer from Sage."}
︠4b3b29ba-fa0a-4d75-8381-233669f2e9d7s︠
%var n
sum(1/n^2,n,1,Infinity)
︡1dd7bcbf-4060-4a3d-b77b-5d96f55e53e6︡{"stdout":"1/6*pi^2\n"}︡{"done":true}︡
︠53d6b13b-341c-4778-ba67-ea3b9b4081e4is︠
%md
## Geometric Series

One common type of series is called a geometric series, because the terms form a geometric sequence (a sequence is geometric if the ratio of successive terms is a constant, called the common ratio).

In other words, $\displaystyle\sum_{n=1}^{\infty}a_n$ is a geometric series, if there exists a constant $r$ such that $\displaystyle r=\frac{a_{n+1}}{a_n}$ for all $n\ge1$.

In general, a geometric series has the form $$\sum_{n=0}^{\infty}a\cdot r^n=a+a\cdot r+a\cdot r^2+a\cdot r^3+\cdots$$

where $a$ is the first term and $r$ is the common ratio (note: it is customary to begin geometric series at $n=0$, although this is not necessary).
︡beef0567-4f95-49f7-9a72-ec775afc619c︡{"md":"## Geometric Series\n\nOne common type of series is called a geometric series, because the terms form a geometric sequence (a sequence is geometric if the ratio of successive terms is a constant, called the common ratio).\n\nIn other words, $\\displaystyle\\sum_{n=1}^{\\infty}a_n$ is a geometric series, if there exists a constant $r$ such that $\\displaystyle r=\\frac{a_{n+1}}{a_n}$ for all $n\\ge1$.\n\nIn general, a geometric series has the form $$\\sum_{n=0}^{\\infty}a\\cdot r^n=a+a\\cdot r+a\\cdot r^2+a\\cdot r^3+\\cdots$$\n\nwhere $a$ is the first term and $r$ is the common ratio (note: it is customary to begin geometric series at $n=0$, although this is not necessary).\n"}︡
︠a5368c48-2edf-4710-b89c-86f39184aaa5i︠
%md
## Example 7

Consider the geometric series $\displaystyle\sum_{n=0}^{\infty}\frac{1}{2^n}$. Let's look at the partial sums.

I'll use the sum command in Sage: sum(formula, index variable, start, end)

I'm going to separate out the initial 1 (the 0th term) to make the pattern easier to see.
︡1de509b3-6ced-4409-8f06-f60159fe5e8a︡{"done":true,"md":"## Example 7\n\nConsider the geometric series $\\displaystyle\\sum_{n=0}^{\\infty}\\frac{1}{2^n}$. Let's look at the partial sums.\n\nI'll use the sum command in Sage: sum(formula, index variable, start, end)\n\nI'm going to separate out the initial 1 (the 0th term) to make the pattern easier to see."}
︠76985b50-3a5a-46c0-8171-96e10faeaa99si︠
%auto
%hide
%var i
@interact
def _(n=input_box(default=1,label='n',width=10)):
    S=sum(1/2^i,i,1,n)
    print 'The nth partial sum is 1 +',S,'=',N(1+S)
︡196821f5-3f10-45c6-a842-99a6ac808ed5︡{"hide":"input"}︡{"interact":{"controls":[{"control_type":"input-box","default":1,"label":"n","nrows":1,"readonly":false,"submit_button":null,"type":null,"var":"n","width":10}],"flicker":false,"id":"83f97e5f-c674-48fd-aea7-73bff73e4e19","layout":[[["n",12,null]],[["",12,null]]],"style":"None"}}︡{"done":true}︡
︠43f21cf9-1ab0-4d79-8967-bb16be82c20ai︠
%md
As $n\to\infty$, the partial sums approach $2$.
︡3d0dcc26-ed18-4ca4-9098-a9b06043f776︡{"md":"As $n\\to\\infty$, the partial sums approach $2$.\n"}︡
︠9c5deba9-f229-493a-a99a-7231ec4507cci︠
%md
Here is a graph of the sequence of partial sums of the series. It appears the limit of the sequence is 2.
︡6fcbe93b-9185-4cf4-be57-3e3a0b7b5b43︡{"md":"Here is a graph of the sequence of partial sums of the series. It appears the limit of the sequence is 2.\n"}︡
︠403d4c93-e7a7-43ad-b671-fa355c82f0a5is︠
%auto
%hide
%var i
point([(n,sum(1/2^i,i,0,n)) for n in [0..20]],axes_labels=['$n$','$S_n$'])
︡10a4fa51-dd42-4d8f-9544-21042aac9d3b︡{"hide":"input"}︡{"file":{"filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/15011/tmp_kUr_Wu.svg","show":true,"text":null,"uuid":"30d28c2a-0ac8-4640-94bc-1d182ee314bf"},"once":false}︡{"done":true}︡
︠8b6018bf-233d-411c-b622-d6b6695b2f8ei︠
%md
## Sum of a Geometric Series

In general, if $-1< r < 1$, then $\displaystyle\sum_{n=0}^{\infty}a\cdot r^n=\frac{a}{1-r}$.

If $r \le -1$ or $r \ge 1$, then this series diverges.

<br>[Note: the index must start at 0 for this formula. You can also think of it as $\displaystyle\frac{\text{first term}}{1-\text{common ratio}}$, and then the index does not matter.]
︡265ee258-8dd0-4820-ae05-1760e750dbd5︡{"done":true,"md":"## Sum of a Geometric Series\n\nIn general, if $-1< r < 1$, then $\\displaystyle\\sum_{n=0}^{\\infty}a\\cdot r^n=\\frac{a}{1-r}$.\n\nIf $r \\le -1$ or $r \\ge 1$, then this series diverges.\n\n<br>[Note: the index must start at 0 for this formula. You can also think of it as $\\displaystyle\\frac{\\text{first term}}{1-\\text{common ratio}}$, and then the index does not matter.]"}
︠b3901cc2-ef64-4d6c-95fa-b3eac1f45d07i︠
%md
## Example 8

$\displaystyle\sum_{n=0}^{\infty}\frac{3}{5^n}=\frac{3}{1-\frac{1}{5}}=\frac{15}{4}$ (geometric series with $a=3$ and $r=\frac{1}{5}$)
︡7eb8eb7e-bcfd-4957-ba49-8f8a6333c314︡{"done":true,"md":"## Example 8\n\n$\\displaystyle\\sum_{n=0}^{\\infty}\\frac{3}{5^n}=\\frac{3}{1-\\frac{1}{5}}=\\frac{15}{4}$ (geometric series with $a=3$ and $r=\\frac{1}{5}$)"}
︠5dd2d512-c6dc-4e9e-a519-fb91c936e1a1i︠
%md
Here's the answer from Sage.
︡4395f609-e495-4cc5-aeb2-df6f7cc07931︡{"done":true,"md":"Here's the answer from Sage."}
︠becc59cb-5514-49e7-a90d-b0bd404a073ds︠
%var n
sum(3/5^n,n,0,+Infinity)
︡49595e2b-5cad-419c-9fe3-900ccfa9c21b︡{"stdout":"15/4\n"}︡{"done":true}︡
︠ae55787d-f10f-407e-9f80-d467752d7719i︠
%md
## Example 9

$\displaystyle\sum_{n=0}^{\infty}\frac{3^n}{5^n}=\frac{1}{1-\frac{3}{5}}=\frac{5}{2}$ (geometric series with $a=1$ and $r=\frac{3}{5}$)
︡1f53bfa5-65b5-4c01-b415-305338775360︡{"done":true,"md":"## Example 9\n\n$\\displaystyle\\sum_{n=0}^{\\infty}\\frac{3^n}{5^n}=\\frac{1}{1-\\frac{3}{5}}=\\frac{5}{2}$ (geometric series with $a=1$ and $r=\\frac{3}{5}$)"}
︠614d66b4-966b-45e1-93ea-f6e7ec1c26dbi︠
%md
Here's the answer from Sage.
︡6a91ec0e-d00a-4b4c-a4f1-28e349558055︡{"done":true,"md":"Here's the answer from Sage."}
︠722d597e-cc8e-4269-87e0-59f267b43edas︠
%var n
sum(3^n/5^n,n,0,+Infinity)
︡15005cc1-9f6d-46fc-b7c4-e04725e8bd23︡{"stdout":"5/2\n"}︡{"done":true}︡
︠d739591f-3af1-4fa5-a775-ba03e6f8a00ei︠
%md
## Example 10

Find the sum of the geometric series $\displaystyle \frac{1}{3}+\frac{2}{15}+\frac{4}{75}+\cdots$.

In this case, $a=\frac{1}{3}$ (first term) and $r=\frac{2}{5}$ (common ratio $=\frac{2/15}{1/3}=\frac{4/75}{2/15}$, etc.).

<br>So the sum is $\displaystyle\frac{1/3}{1-2/5}=\frac{5}{9}$.
︡f4d5f193-aab0-4adb-9778-410b993cb3cf︡{"done":true,"md":"## Example 10\n\nFind the sum of the geometric series $\\displaystyle \\frac{1}{3}+\\frac{2}{15}+\\frac{4}{75}+\\cdots$.\n\nIn this case, $a=\\frac{1}{3}$ (first term) and $r=\\frac{2}{5}$ (common ratio $=\\frac{2/15}{1/3}=\\frac{4/75}{2/15}$, etc.).\n\n<br>So the sum is $\\displaystyle\\frac{1/3}{1-2/5}=\\frac{5}{9}$."}
︠7231d3ee-3fd0-47de-9732-a1cd582dc263i︠
%md
Here's the answer from Sage.
︡c438b5f2-57fc-4f0d-9bbe-e5c55336f263︡{"done":true,"md":"Here's the answer from Sage."}
︠d08a1369-16d0-4f2a-ae55-c9ffdbbad347︠
sum(1/3*(2/5)^n,n,0,+Infinity)
︡5e209976-4c36-40fc-a4bf-2cc77136bdf4︡{"stdout":"5/9\n"}︡
︠0d0232f3-d42b-4bf7-8dd2-24cd6e7bc93b︠
1/3/(1-2/5)
︡40b87479-94fc-485b-baf1-1ed1fcb52d37︡{"stdout":"5/9\n"}︡
︠2a33303c-1eed-49c9-95d9-ad2cc0feca71i︠
%md
## Example 11

Let's explore the series $\displaystyle\sum_{n=i}^{\infty}a_n$ using Sage.

Try things like $\displaystyle\frac{1}{n},\ \frac{1}{n^2},\ .9^n,\ .99^n,\ .999^n$, etc.
︡88a955b8-ffde-4dad-a0d7-3352b4a9be9e︡{"done":true,"md":"## Example 11\n\nLet's explore the series $\\displaystyle\\sum_{n=i}^{\\infty}a_n$ using Sage.\n\nTry things like $\\displaystyle\\frac{1}{n},\\ \\frac{1}{n^2},\\ .9^n,\\ .99^n,\\ .999^n$, etc."}
︠2be75fc4-7edc-4d80-8a3e-654ee98c0531si︠
%auto
%hide
@interact
def _(a=input_box(default='n',label='$a_n$',width=20),i=input_box(default=1,label='starting index',width=20),ps=input_box(default=1,label='partial sum',width=20),infsum=checkbox(False,label='Infinite sum?')):
    %var n
    S=sum(a,n,i,ps)
    print 'The requested partial sum is',N(S)
    if infsum:
        try:
            S=sum(a,n,i,+Infinity)
            print 'The sum of the series is', N(S)
        except ValueError:
            print 'The series diverges'
︡f56e9460-0d3c-43e4-a9e5-19a0a36ab6fb︡{"hide":"input"}︡{"interact":{"controls":[{"control_type":"input-box","default":"n","label":"$a_n$","nrows":1,"readonly":false,"submit_button":null,"type":null,"var":"a","width":20},{"control_type":"input-box","default":1,"label":"starting index","nrows":1,"readonly":false,"submit_button":null,"type":null,"var":"i","width":20},{"control_type":"input-box","default":1,"label":"partial sum","nrows":1,"readonly":false,"submit_button":null,"type":null,"var":"ps","width":20},{"control_type":"checkbox","default":false,"label":"Infinite sum?","readonly":false,"var":"infsum"}],"flicker":false,"id":"ff97e102-ebd3-48b0-a8c7-6303a22e856d","layout":[[["a",12,null]],[["i",12,null]],[["ps",12,null]],[["infsum",12,null]],[["",12,null]]],"style":"None"}}︡{"done":true}︡
︠04ff2fdb-de0c-42ca-a150-27a218552726︠









