︠e421409e-831d-43f1-a8a4-e85f240ec165i︠
%md
# Symbolic Integration Assignment

## Question 0

Watch the lecture video [here](https://vimeo.com/209804160).

Did you watch the video? [Type yes or no.]
︡5be09922-9664-4a5e-ba18-9182d14def48︡{"done":true,"md":"# Symbolic Integration Assignment\n\n## Question 0\n\nWatch the lecture video [here](https://vimeo.com/209804160).\n\nDid you watch the video? [Type yes or no.]"}
︠eecf4a10-51d8-4aef-920b-27d80e68a2ddi︠
%md
## Question 1

Compute the following integrals using Sage.

### Part a

$\displaystyle\int \sin(3x)\sin(2x)\, dx$
︡7fc9931d-ac74-48ab-bc7f-beeb0ae0b3b6︡{"done":true,"md":"## Question 1\n\nCompute the following integrals using Sage.\n\n### Part a\n\n$\\displaystyle\\int \\sin(3x)\\sin(2x)\\, dx$"}
︠9b389903-a673-4869-8c04-2077dd0cce12i︠

%md
### Part b

$\displaystyle\int e^{5t}\sin(4t)\, dt$
︡4c5ae55d-8a1e-45b7-89aa-c211f2f86b86︡{"md":"### Part b\n\n$\\displaystyle\\int e^{5t}\\sin(4t)\\, dt$\n"}︡
︠2eb5d013-75e5-4836-a343-9c8a88af0933i︠

%md
### Part c

$\displaystyle\int_0^{\pi/2} \sin(ax)^2\, dx$
︡3bc6aa4a-0c03-44fe-aff6-737b1ebc4bb4︡{"md":"### Part c\n\n$\\displaystyle\\int_0^{\\pi/2} \\sin(ax)^2\\, dx$\n"}︡
︠da50a596-5694-47ef-9996-6f18658d25aci︠

%md
### Part d

$\displaystyle\int_1^5\frac{\ln(x)}{x^2}\, dx$
︡a38e950c-c3f9-4876-8aa4-1f386e0b4148︡{"md":"### Part d\n\n$\\displaystyle\\int_1^5\\frac{\\ln(x)}{x^2}\\, dx$\n"}︡
︠5d71fdcc-67b5-4858-af1d-4a54486ed152i︠
%md
### Part e

$\displaystyle\int_0^1 x\tan(x)\, dx$

[Use numerical_integral]
︡8c4a3354-6dd2-4634-b92f-3d684cc26063︡︡{"done":true,"md":"### Part e\n\n$\\displaystyle\\int_0^1 x\\tan(x)\\, dx$ \n\n[Use numerical_integral]"}
︠5641704c-ec50-4a5d-aaf3-bc9c4b1f3fe8i︠
%md
## Question 2

The velocity at time $t$ of a particle travelling in a straight line is given by the equation $v(t)=3t^3-4t^2+10$. How far does the particle travel from $t=10$ to $t=20$?

[Hint: Distance traveled is the integral of velocity.]
︡fd00549e-18d7-4cc6-8d7a-c0d70497ae79︡︡{"done":true,"md":"## Question 2\n\nThe velocity at time $t$ of a particle travelling in a straight line is given by the equation $v(t)=3t^3-4t^2+10$. How far does the particle travel from $t=10$ to $t=20$?\n\n[Hint: Distance traveled is the integral of velocity.]"}
︠a013f060-b0f0-4971-a94b-b0d9f7ee3e30i︠
%md
## Question 3

Let $f(x)=2x\sqrt{1-x^3}$.

### Part a
Find the area between the graph of $f$ and the x-axis from $x=0$ to $x=1$. Convert Sage's answer to a decimal.
︡2e61ff21-12f6-470d-919b-f625e0187899︡{"done":true,"md":"## Question 3\n\nLet $f(x)=2x\\sqrt{1-x^3}$.\n\n### Part a\nFind the area between the graph of $f$ and the x-axis from $x=0$ to $x=1$. Convert Sage's answer to a decimal."}
︠7a6d61e6-8eaa-42ca-a169-ccd536b0def9i︠
%md
### Part b

Estimate the area in Part a using left and right Riemann sums with $n=100$ subintervals.
︡34467d33-8120-47b9-8f1a-f92e51180ab5︡{"done":true,"md":"### Part b\n\nEstimate the area in Part a using left and right Riemann sums with $n=100$ subintervals."}
︠1535494e-b494-4675-9292-d7fb18283f78i︠
%md
## Question 4

Use Sage to calculate $\displaystyle\frac{d}{dx}\int_{x}^{\sin(x)}3t^2\,dt$.

Note: The Fundamental Theorem of Calculus implies that $\displaystyle\frac{d}{dx}\int_{g(x)}^{h(x)}f(t)\,dt=f(h(x))h'(x)-f(g(x))g'(x)$.
︡81c23e94-7fe3-42f4-8537-af5076b134d1︡{"done":true,"md":"## Question 4\n\nUse Sage to calculate $\\displaystyle\\frac{d}{dx}\\int_{x}^{\\sin(x)}3t^2\\,dt$.\n\nNote: The Fundamental Theorem of Calculus implies that $\\displaystyle\\frac{d}{dx}\\int_{g(x)}^{h(x)}f(t)\\,dt=f(h(x))h'(x)-f(g(x))g'(x)$."}
︠40a68cc8-b2ea-49fc-8e28-68acd34647f6i︠
%md
## Question 5

Use Sage to calculate $\displaystyle\int_5^{10}\frac{d}{dx}\frac{5}{1-x^2}\,dx$.

Note: The Fundamental Theorem of Calculus implies that $\displaystyle\int_a^{b}\frac{d}{dx}f(x)\,dx=f(b)-f(a)$.
︡b45ff66e-09e5-411b-b4ad-f775458bc83e︡{"done":true,"md":"## Question 5\n\nUse Sage to calculate $\\displaystyle\\int_5^{10}\\frac{d}{dx}\\frac{5}{1-x^2}\\,dx$.\n\nNote: The Fundamental Theorem of Calculus implies that $\\displaystyle\\int_a^{b}\\frac{d}{dx}f(x)\\,dx=f(b)-f(a)$."}
︠653b4a20-33a5-4abf-8c27-232f52d1a449i︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡9e605b81-f49f-4a49-8b5a-07cef9dd6f90︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠021cc226-34db-4e71-9cf7-99b75a8ed651︠









