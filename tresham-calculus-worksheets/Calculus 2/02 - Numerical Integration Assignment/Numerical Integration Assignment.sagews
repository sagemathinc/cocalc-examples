︠6c3ba60e-8a14-42bf-a8cc-922ec103417fi︠
%md
# Numerical Integration Assignment

## Question 0

Watch the lecture video [here](https://vimeo.com/221315030).

Did you watch the video? [Type yes or no.]


︡cd5984c9-021a-48b4-a12a-9a66fc9766c6︡{"done":true,"md":"# Numerical Integration Assignment\n\n## Question 0\n\nWatch the lecture video [here](https://vimeo.com/221315030).\n\nDid you watch the video? [Type yes or no.]"}
︠c21e582d-8a50-43b3-b868-396c5dec669ci︠
%md
## Question 1

The Golden Gate Bridge has a main span of 4,200 feet (the distance between the two towers). The main suspension cables that support the road over this span each form a parabolic shape. The length of each cable is found by $$\mathrm{Length}=\int_0^{21}200\sqrt{1+0.000577x^2}\, dx$$

### Part a

Approximate the value of this integral using left and right Riemann sums, the Midpoint Rule, the Trapezoidal Rule, and Simpson's Rule using $n=10$, $n=20$, and $n=30$.
︡23ac6dc6-b597-4343-a3e1-adc93661981f︡{"done":true,"md":"## Question 1\n\nThe Golden Gate Bridge has a main span of 4,200 feet (the distance between the two towers). The main suspension cables that support the road over this span each form a parabolic shape. The length of each cable is found by $$\\mathrm{Length}=\\int_0^{21}200\\sqrt{1+0.000577x^2}\\, dx$$\n\n### Part a\n\nApproximate the value of this integral using left and right Riemann sums, the Midpoint Rule, the Trapezoidal Rule, and Simpson's Rule using $n=10$, $n=20$, and $n=30$."}
︠b98dc1b3-36d2-44ee-bd86-0af5955ce7dbis︠
%md
### Part b

The actual value of this integral is approximately $4371.87$. Observe how close each approximation comes to the right answer. In particular, notice how accurate Simpson's Rule proves to be, even though these values of $n$ are relatively small.
︡81e4c247-0820-48bb-855b-921606530d2c︡{"md":"### Part b\n\nThe actual value of this integral is approximately $4371.87$. Observe how close each approximation comes to the right answer. In particular, notice how accurate Simpson's Rule proves to be, even though these values of $n$ are relatively small.\n"}︡
︠5115a1a5-3183-4fe9-82b0-7c4f69d7248ais︠
%md
## Question 2
Consider the integral $$\int_{-1}^{1.41}\frac{1}{x^2}\, dx$$

### Part a

Use the Midpoint Rule with $n=10$, $n=50$, $n=100$, and $n=500$ to approximate this integral.
︡e711fa45-35e7-4973-87e6-0d64b0bf62ee︡{"md":"## Question 2\nConsider the integral $$\\int_{-1}^{1.41}\\frac{1}{x^2}\\, dx$$\n\n### Part a\n\nUse the Midpoint Rule with $n=10$, $n=50$, $n=100$, and $n=500$ to approximate this integral.\n"}︡
︠22d541e4-50e4-4e0f-ace0-20e45a692165i︠
%md
### Part b

You should see your answers jump around as $n$ increases (watch out for scientific notation when $n=100$).

The function $\frac{1}{x^2}$ is unbounded at $x=0$ (we'll learn more about so-called "improper integrals" later this semester). This integral is infinite, so approximation won't work.
︡ae29afc3-d8af-4cc1-be53-74dde931cda2︡{"done":true,"md":"### Part b\n\nYou should see your answers jump around as $n$ increases (watch out for scientific notation when $n=100$).\n\nThe function $\\frac{1}{x^2}$ is unbounded at $x=0$ (we'll learn more about so-called \"improper integrals\" later this semester). This integral is infinite, so approximation won't work."}
︠345e9a10-0698-49b6-82aa-97ecd999a746is︠
%md
## Question 3

Consider the function $\displaystyle f(x)=x^5e^{-2x}$ over the interval $[-2,2]$.

[Caution: Don't forget parentheses: e^(-2*x)]

### Part a

Approximate the area under this curve using the Midpoint Rule, Trapezoidal Rule, and Simpson's Rule using $n=100$, $n=200$, and $n=400$.
︡241a80ec-b3b7-41e0-b8f9-1399679ac68f︡{"md":"## Question 3\n\nConsider the function $\\displaystyle f(x)=x^5e^{-2x}$ over the interval $[-2,2]$.\n\n[Caution: Don't forget parentheses: e^(-2*x)]\n\n### Part a\n\nApproximate the area under this curve using the Midpoint Rule, Trapezoidal Rule, and Simpson's Rule using $n=100$, $n=200$, and $n=400$.\n"}︡
︠0cc200ee-2260-4919-a418-2ff2a684a082is︠
%md
### Part b

Rounding to one decimal place, this area is actually $-363.2$. Notice that Simpon's Rule is correct for all three values of $n$, but the Midpoint Rule is correct only for $n=400$, and the Trapezoidal Rule is not correct for any of these values of $n$.
︡e52a1d60-1cbc-447d-9dd0-28bcdea32e9c︡{"md":"### Part b\n\nRounding to one decimal place, this area is actually $-363.2$. Notice that Simpon's Rule is correct for all three values of $n$, but the Midpoint Rule is correct only for $n=400$, and the Trapezoidal Rule is not correct for any of these values of $n$.\n"}︡
︠cab6ac60-e276-4c3a-9da7-b4356dfee1f8i︠
%md
## Question 4

Approximate $\displaystyle\int_{-1000}^{1000}\frac{1}{x^2+1}\,dx$ using Simpson's Rule. Hint: The interval width is 2,000, so pick an appropriate number of subintervals ($n$ needs to be several thousand).

What well-known number is this close to?
︡f44f74ab-840e-4809-b05e-40f4ed0dd88b︡{"done":true,"md":"## Question 4\n\nApproximate $\\displaystyle\\int_{-1000}^{1000}\\frac{1}{x^2+1}\\,dx$ using Simpson's Rule. Hint: The interval width is 2,000, so pick an appropriate number of subintervals ($n$ needs to be several thousand).\n\nWhat well-known number is this close to?"}
︠29c3ffe4-2376-4b9b-806e-b419c9f81d90i︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡d4597c93-553d-4e55-aa42-2127d5aabe7d︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠2b7db0c1-b1dc-4bf7-9654-2b0eed5f0a1b︠









