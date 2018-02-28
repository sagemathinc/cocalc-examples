︠59800b72-8a57-4ca4-830b-696b4e8212f3i︠
%md
# Taylor Series Assignment

## Question 0

Watch the lecture video [here](https://vimeo.com/208185184).

Did you watch the video? [Type yes or no.]
︡782fc48d-5047-4c95-903e-afc5649d0b98︡{"done":true,"md":"# Taylor Series Assignment\n\n## Question 0\n\nWatch the lecture video [here](https://vimeo.com/208185184).\n\nDid you watch the video? [Type yes or no.]"}
︠fbb73dd3-5e2b-40d4-ae7c-30efdf60898fi︠
%md
## Question 1

Use Taylor polynomials to approximate $\pi$ using the following steps:

* $A=\displaystyle\int_0^1 \frac{1}{1+x^2}\, dx=\arctan(1)-\arctan(0)=\frac{\pi}{4}$

* $T(x)=$ Taylor polynomial of degree 100 of $\displaystyle\frac{1}{1+x^2}$ centered at $x=0$

* $B=\displaystyle\int_0^1 T(x)\, dx$

* Since $A$ and $B$ are approximately equal, $\pi\approx 4B$. So calculate $4B$ and convert to a decimal.
︡5e1e0564-50fc-46db-949b-8f324d6c9a18︡{"done":true,"md":"## Question 1\n\nUse Taylor polynomials to approximate $\\pi$ using the following steps:\n\n* $A=\\displaystyle\\int_0^1 \\frac{1}{1+x^2}\\, dx=\\arctan(1)-\\arctan(0)=\\frac{\\pi}{4}$\n\n* $T(x)=$ Taylor polynomial of degree 100 of $\\displaystyle\\frac{1}{1+x^2}$ centered at $x=0$\n\n* $B=\\displaystyle\\int_0^1 T(x)\\, dx$\n\n* Since $A$ and $B$ are approximately equal, $\\pi\\approx 4B$. So calculate $4B$ and convert to a decimal."}
︠eba42761-4ab4-4dc8-a282-333881a7ce74is︠
%md
## Question 2

Estimate the value of $\displaystyle\int_0^1 e^{-x^2}\, dx$ as follows:

* Define $T20(x)=$ the Taylor polynomial of degree 20 of $e^{-x^2}$ centered at $x=0$.

* Calculate $\displaystyle\int_0^1 T20(x)\, dx$.

* Define $T50(x)=$ the Taylor polynomial of degree 50 of $e^{-x^2}$ centered at $x=0$.

* Calculate $\displaystyle\int_0^1 T50(x)\, dx$.

* Compare your results with the output from Sage's numerical_integral command: $0.746824132812427$. [Use the N() command to convert to decimals.]
︡63b8e294-aa4d-40db-9e06-efb12e16671d︡{"md":"## Question 2\n\nEstimate the value of $\\displaystyle\\int_0^1 e^{-x^2}\\, dx$ as follows:\n\n* Define $T20(x)=$ the Taylor polynomial of degree 20 of $e^{-x^2}$ centered at $x=0$.\n\n* Calculate $\\displaystyle\\int_0^1 T20(x)\\, dx$.\n\n* Define $T50(x)=$ the Taylor polynomial of degree 50 of $e^{-x^2}$ centered at $x=0$.\n\n* Calculate $\\displaystyle\\int_0^1 T50(x)\\, dx$.\n\n* Compare your results with the output from Sage's numerical_integral command: $0.746824132812427$. [Use the N() command to convert to decimals.]\n"}︡
︠17f7ce17-aa4b-470f-bb3d-0246fe0857a5is︠
%md
## Question 3

Let $\displaystyle f(x)=e^{\sin(x)}$, $T5(x)=$ the 5th-degree Taylor polynomial of $f$ centered at $x=\pi$, and $T10(x)=$ the 10th-degree Taylor polynomial of $f$ centered at $x=\pi$.

Graph all three on the window $0\le x \le 2\pi$, $0\le y \le 3$. Use black for $f$, blue for $T5$, and red for $T10$.
︡ec5b1c39-bb68-41a6-bcd9-e327c054e117︡{"md":"## Question 3\n\nLet $\\displaystyle f(x)=e^{\\sin(x)}$, $T5(x)=$ the 5th-degree Taylor polynomial of $f$ centered at $x=\\pi$, and $T10(x)=$ the 10th-degree Taylor polynomial of $f$ centered at $x=\\pi$.\n\nGraph all three on the window $0\\le x \\le 2\\pi$, $0\\le y \\le 3$. Use black for $f$, blue for $T5$, and red for $T10$.\n"}︡
︠27395b98-eb68-45cb-abd1-587614c10831i︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡c57ae149-8e08-4ba9-a324-1f10c0b23f94︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠fe844f7d-ee60-47ec-9e2d-1d0474cbc2e8︠









