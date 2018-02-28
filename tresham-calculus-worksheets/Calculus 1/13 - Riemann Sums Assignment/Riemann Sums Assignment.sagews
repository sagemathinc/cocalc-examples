︠5528cd2c-9338-4907-a3af-7e4176137faci︠
%md
# Riemann Sums Assignment

## Question 0

Watch the lecture video [here](https://vimeo.com/209267924).

Did you watch the video? [Type yes or no.]

︡8315c45d-8bd4-47f3-b3b5-b17e62e8303b︡{"done":true,"md":"# Riemann Sums Assignment\n\n## Question 0\n\nWatch the lecture video [here](https://vimeo.com/209267924).\n\nDid you watch the video? [Type yes or no.]"}
︠a0202620-8e12-405a-8bba-c38572e9109ai︠
%md
## Question 1

Approximate the area under the graph of $f(x)=3x^2-9x+5$ on the interval $[-5,5]$ using left and right Riemann sums with $n=25$ and $n=50$ subintervals.

[The actual area is $300$.]
︡7a7507b6-92c2-48de-9b10-67d0297e4cec︡{"done":true,"md":"## Question 1\n\nApproximate the area under the graph of $f(x)=3x^2-9x+5$ on the interval $[-5,5]$ using left and right Riemann sums with $n=25$ and $n=50$ subintervals.\n\n[The actual area is $300$.]"}
︠d9c9004b-4e50-482f-86d4-8b8f8ec40cc7i︠
%md
## Question 2

The area under the graph of $f(x)=\ln(\sin(x))$ from $x=1$ to $x=2$ is approximately $-0.0455$.

To get an idea of how big $n$ must be to get a good approximation (say correct to four decimal places), find both the left and right Riemann sums with $n=100$, $n=500$, and $n=1000$.
︡0c9c1241-2cd2-4c91-851e-16692e2bf62e︡{"md":"## Question 2\n\nThe area under the graph of $f(x)=\\ln(\\sin(x))$ from $x=1$ to $x=2$ is approximately $-0.0455$.\n\nTo get an idea of how big $n$ must be to get a good approximation (say correct to four decimal places), find both the left and right Riemann sums with $n=100$, $n=500$, and $n=1000$.\n"}︡
︠698596bc-f5ef-4d66-8eaf-6f0ae77470bai︠
%md
## Question 3

The graph of $x^2+y^2=25$ is a circle of radius 5 centered at the origin. From geometry, we know its area is $\pi\cdot5^2\approx78.54$. We will approximate this area using Riemann sums.

Let $\displaystyle f(x)=\sqrt{25-x^2}$ (the top half of the circle). Approximate the area between $f$ and the x-axis from $x=-5$ to $x=5$ using left and right Riemann sums with $n=100$ subintervals.

Now multiply this area by 2 to get an approximation for the area of the whole circle. How close are you to the correct area?
︡4d415936-ec44-48f1-92e9-d8f6d5ee5e63︡{"done":true,"md":"## Question 3\n\nThe graph of $x^2+y^2=25$ is a circle of radius 5 centered at the origin. From geometry, we know its area is $\\pi\\cdot5^2\\approx78.54$. We will approximate this area using Riemann sums. \n\nLet $\\displaystyle f(x)=\\sqrt{25-x^2}$ (the top half of the circle). Approximate the area between $f$ and the x-axis from $x=-5$ to $x=5$ using left and right Riemann sums with $n=100$ subintervals.\n\nNow multiply this area by 2 to get an approximation for the area of the whole circle. How close are you to the correct area?"}
︠4867d74a-626b-4c32-9a81-01ad95d9be46i︠
%md
## Question 4

Use Sage's sum command to evaluate the following sums.

### Part a

$\displaystyle\sum_{i=1}^{50}\frac{1}{i^2}$
︡6858bb74-0742-4997-b561-9c5474c7be30︡{"done":true,"md":"## Question 4\n\nUse Sage's sum command to evaluate the following sums.\n\n### Part a\n\n$\\displaystyle\\sum_{i=1}^{50}\\frac{1}{i^2}$"}
︠666acbb3-624c-4a8c-8d91-d9d10f1b9f2bi︠
%md
### Part b

$\displaystyle\sum_{k=10}^{100}\frac{k^3-3k^2}{5}$
︡22d8182d-7895-4970-9dd2-18f207e7b2f1︡{"done":true,"md":"### Part b\n\n$\\displaystyle\\sum_{k=10}^{100}\\frac{k^3-3k^2}{5}$"}
︠5356b612-be32-4f94-922a-3266dcb90b7ei︠
%md
### Part c

$\displaystyle\sum_{k=1}^{n}\left(\left(\frac{k}{n}\right)^2+\frac{k}{n}\right)\cdot\frac{1}{n}$

[Hint: Declare both $n$ and $k$ to be variables.]
︡9ad0b01b-b720-4bd6-a7bb-01090d32bba3︡{"done":true,"md":"### Part c\n\n$\\displaystyle\\sum_{k=1}^{n}\\left(\\left(\\frac{k}{n}\\right)^2+\\frac{k}{n}\\right)\\cdot\\frac{1}{n}$\n\n[Hint: Declare both $n$ and $k$ to be variables.]"}
︠9a9fcfe9-5f0c-4a16-a293-6fb488ffb4d4i︠
%md
## Question 5

Calculate the limit as $n\to\infty$ of your answer from Question 4, Part c.

<br>

Note: This limit gives the area between the x-axis and the function $f(x)=x^2+x$ over the interval from $x=0$ to $x=1$, because the sum in Question 4, Part c, is the right Riemann sum with $n$ rectangles for this function. In other words, $\displaystyle\int_0^1 x^2+x\, dx=\lim_{n\to\infty}\sum_{k=1}^{n}\left(\left(\frac{k}{n}\right)^2+\frac{k}{n}\right)\cdot\frac{1}{n}$.
︡c6e84458-20f2-4320-88f3-4b631185fd7e︡{"done":true,"md":"## Question 5\n\nCalculate the limit as $n\\to\\infty$ of your answer from Question 4, Part c.\n\n<br>\n\nNote: This limit gives the area between the x-axis and the function $f(x)=x^2+x$ over the interval from $x=0$ to $x=1$, because the sum in Question 4, Part c, is the right Riemann sum with $n$ rectangles for this function. In other words, $\\displaystyle\\int_0^1 x^2+x\\, dx=\\lim_{n\\to\\infty}\\sum_{k=1}^{n}\\left(\\left(\\frac{k}{n}\\right)^2+\\frac{k}{n}\\right)\\cdot\\frac{1}{n}$."}
︠7a700d1e-6be5-421a-9a48-e519a19e6f4ci︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡207c8f3b-86f1-432b-a7bf-e7e837d47d47︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠2116653c-6354-425e-9d4a-0d17037b8977︠









