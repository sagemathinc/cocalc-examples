︠7934afe8-0440-4e1b-8e55-159fe11dee63i︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡c5eada3d-be30-403d-8b48-1b15926c719b︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠f65ef5be-9719-4639-ba2d-e6f4c25eafb9ai︠
%md
### Prerequisites:

* Intro to Sage
* Graphing and Solving Equations
* Tangent Lines
︡4de712eb-55ce-4a01-90c4-dd336889fc6c︡{"done":true,"md":"### Prerequisites:\n\n* Intro to Sage\n* Graphing and Solving Equations\n* Tangent Lines"}
︠46d650a3-61ee-4aa5-bd14-242821709425i︠
%md
# Differentiation

Last time we saw that the slope of the line tangent to a function $f(x)$ at the point $(x_0,f(x_0))$ is equal to $\displaystyle\lim_{h\to 0}\frac{f(x_0+h)-f(x_0)}{h}$.

Since every point on the graph of $f$ has a different tangent line, the slope of the tangent line may change. To keep track of these slopes, we define a new function, called the "derivative" of $f$.

In other words, the derivative of the function $f(x)$, denoted $f'(x)$ or $\frac{d}{dx}f(x)$, gives the slope of the line tangent to $f$ at $x$. Replacing $x_0$ with $x$ in the above limit results in the following formula for the derivative: $$f'(x)=\lim_{h\to 0}\frac{f(x+h)-f(x)}{h}$$
︡78594d3e-9ac7-4259-b020-594e1a69994c︡{"done":true,"md":"# Differentiation\n\nLast time we saw that the slope of the line tangent to a function $f(x)$ at the point $(x_0,f(x_0))$ is equal to $\\displaystyle\\lim_{h\\to 0}\\frac{f(x_0+h)-f(x_0)}{h}$.\n\nSince every point on the graph of $f$ has a different tangent line, the slope of the tangent line may change. To keep track of these slopes, we define a new function, called the \"derivative\" of $f$.\n\nIn other words, the derivative of the function $f(x)$, denoted $f'(x)$ or $\\frac{d}{dx}f(x)$, gives the slope of the line tangent to $f$ at $x$. Replacing $x_0$ with $x$ in the above limit results in the following formula for the derivative: $$f'(x)=\\lim_{h\\to 0}\\frac{f(x+h)-f(x)}{h}$$"}
︠39788bfd-411d-48dc-a8cf-82537b8c2d72i︠
%md
**Note:** The slope of the tangent line is also the (instantaneous) rate of change of the function. So you can think of the derivative $f'$ as giving the rate of change of $f$.

In this lab, we will learn how to use Sage to calculate derivatives (called "differentiation"), and we will look at graphs of the derivative function.
︡a937f612-cf1a-48c4-8411-2ad6dd6f6793︡{"done":true,"md":"**Note:** The slope of the tangent line is also the (instantaneous) rate of change of the function. So you can think of the derivative $f'$ as giving the rate of change of $f$.\n\nIn this lab, we will learn how to use Sage to calculate derivatives (called \"differentiation\"), and we will look at graphs of the derivative function."}
︠5c3939cc-cb52-4599-9912-574bbcb3816fi︠
%md
## Calculating the Derivative Function

To calculate the derivative of a function in Sage, we use the derivative command. This command requires two arguments: (1) a function name or an expression and (2) the variable with respect to which the derivative is to be calculated.
︡1f05eb80-b1d0-46f8-9f9b-df94df13e355︡{"done":true,"md":"## Calculating the Derivative Function\n\nTo calculate the derivative of a function in Sage, we use the derivative command. This command requires two arguments: (1) a function name or an expression and (2) the variable with respect to which the derivative is to be calculated."}
︠de580a4c-eb90-446a-bb20-2d774fd237e4i︠
%md
## Example 1
Find the derivative of $f(x)=x^2$.

We could do this using limits:
︡1c042736-de9d-4f87-9465-206ed7b0ef54︡{"done":true,"md":"## Example 1\nFind the derivative of $f(x)=x^2$.\n\nWe could do this using limits:"}
︠ab67704e-ad33-43ad-a3a5-1ea3f5a53903s︠
f(x)=x^2
%var h
limit((f(x+h)-f(x))/h,h=0)
︡3cf122dd-30dd-4cb5-8acc-8dcd179d01c2︡{"stdout":"2*x"}︡{"stdout":"\n"}︡{"done":true}︡
︠261aecc6-c968-414b-a38e-90d9a8484a4fi︠
%md
However, instead of using limits it will be easier to use the derivative command:
︡e7836d8b-cfe4-4a20-9745-aaf4fa10c717︡{"done":true,"md":"However, instead of using limits it will be easier to use the derivative command:"}
︠bf25af6c-47ee-44d7-853d-146ff56f0932︠
derivative(x^2,x)
︡f593c46d-5cc2-490d-96ce-52a28c75e09f︡{"stdout":"2*x\n"}︡
︠7869d090-3aea-4938-9d08-18e4cf562df9i︠
%md
You can also define a function first, and use the function name in the derivative command.
︡e861dca5-2676-41f7-a694-e15689e1ebf4︡{"done":true,"md":"You can also define a function first, and use the function name in the derivative command."}
︠4d1294dd-3ce3-4273-8e84-e055bf1a76c7s︠
f(x)=x^2
derivative(f(x),x)
︡f9d24c77-1ed9-424f-9968-b12d1e1145b7︡{"stdout":"2*x\n"}︡{"done":true}︡
︠664b3858-51ab-4c80-b14b-268e8721a224i︠
%md
Whichever way we do it, we see that $f'(x)=2x$.
︡da00c162-6bdb-4c35-b464-f21bd538f7be︡{"done":true,"md":"Whichever way we do it, we see that $f'(x)=2x$."}
︠3af3d83b-a565-4ecd-8268-2f6a3df402bei︠
%md
## Example 2

Find the derivative of $g(x)=x^3e^{-x^2}$.
︡24c4b8aa-4d17-4805-baa4-4c951bcc61a9︡{"done":true,"md":"## Example 2\n\nFind the derivative of $g(x)=x^3e^{-x^2}$."}
︠60a1f7bd-cf4a-41d0-88ed-445ec145a27fs︠
g(x)=x^3*e^(-x^2)
derivative(g(x),x)
show(_) #The show command will make the output look nicer.
︡0c3b2167-4003-4233-b597-19ed257e9d5d︡{"stdout":"-2*x^4*e^(-x^2) + 3*x^2*e^(-x^2)\n"}︡{"html":"<div align='center'>$\\displaystyle -2 \\, x^{4} e^{\\left(-x^{2}\\right)} + 3 \\, x^{2} e^{\\left(-x^{2}\\right)}$</div>"}︡{"done":true}︡
︠c143e64e-bcc1-4a23-8f7e-ad796aede1f9i︠
%md
We see $g'(x)=-2x^4e^{-x^2}+3x^2e^{-x^2}$.
︡1b710afd-9ece-46f7-8537-82c2a51f1e51︡{"done":true,"md":"We see $g'(x)=-2x^4e^{-x^2}+3x^2e^{-x^2}$."}
︠03ec89ad-1a8f-418b-803e-5f8eb47e0e87i︠
%md
## Calculating a Particular Value of the Derivative

There are two ways to calculate the value of the derivative at a particular point.
1. Give the derivative function a name, and then use it to calculate the particular value.

2. Add the particular value in parentheses *after* the derivative command.

Note: Sage may give you a warning message if you use the second method (this method may be disallowed in a future version of Sage).
︡ea8d33c2-341d-4f7b-8664-eafc127ec176︡{"done":true,"md":"## Calculating a Particular Value of the Derivative\n\nThere are two ways to calculate the value of the derivative at a particular point.\n1. Give the derivative function a name, and then use it to calculate the particular value.\n\n2. Add the particular value in parentheses *after* the derivative command.\n\nNote: Sage may give you a warning message if you use the second method (this method may be disallowed in a future version of Sage)."}
︠aa515cd9-ff0c-4b9d-8a69-523bcde8ab1bi︠
%md
## Example 3

Suppose we want to calculate $f'(3)$ when $f(x)=x^2$.

Method 1: Name the derivative function. Sage does not allow the name $f'(x)$, so I like to use df(x) [d for derivative].
︡336d1867-9e4c-43ee-b3cf-2108ff07a905︡{"done":true,"md":"## Example 3\n\nSuppose we want to calculate $f'(3)$ when $f(x)=x^2$.\n\nMethod 1: Name the derivative function. Sage does not allow the name $f'(x)$, so I like to use df(x) [d for derivative]."}
︠499e57eb-5d66-4452-909b-c5b0bc98efe7s︠
f(x)=x^2
df(x)=derivative(f,x)
︡5b6df6da-8f42-47a2-ba69-72983d0176bc︡{"done":true}︡
︠92573971-738a-427d-a314-d55623406c98i︠
%md
Now that I have defined my derivative function df(x), I can use it to evaluate $f'(3)$.
︡ff5aae0b-97b4-42b7-989b-6a8fb16728fc︡{"done":true,"md":"Now that I have defined my derivative function df(x), I can use it to evaluate $f'(3)$."}
︠574a2115-2b12-4e94-bb25-16538940b0c0︠
df(3)
︡9aef4a73-75b7-4958-973c-39da09cd8755︡{"stdout":"6\n"}︡
︠5e7ae0ee-35f1-479a-a398-64c930254ce5i︠
%md
Sage tells me that $f'(3)=6$.
︡95b316f2-cbc5-49d5-bc89-d8853723766b︡{"md":"Sage tells me that $f'(3)=6$.\n"}︡
︠17b2054c-31ca-43dd-94cf-53bab3601505i︠
%md
Method 2: Add (3) after the derivative command:
︡b12c3b94-4f1f-4921-8ddf-53ef56f4fb27︡{"done":true,"md":"Method 2: Add (3) after the derivative command:"}
︠266bb8be-75f4-4e3f-b291-db5a8bfdfd6cs︠
derivative(f,x)(3)
︡84364d07-a54a-484b-8b9a-d956d2f10cfc︡{"stdout":"6\n"}︡{"done":true}︡
︠9c49c0a4-d5ba-40e6-9c36-eae6c68a7b42i︠
%md
Notice that we get the same answer: $f'(3)=6$.

Caution: The (3) must come *after* the closing parenthesis of the derivative command. There is no place for the 3 within the derivative command. You must substitute 3 after finding the derivative, either by naming the derivative function or by putting (3) afterwards.
︡f45c8367-ff37-4932-8679-576ca114e3d2︡{"done":true,"md":"Notice that we get the same answer: $f'(3)=6$.\n\nCaution: The (3) must come *after* the closing parenthesis of the derivative command. There is no place for the 3 within the derivative command. You must substitute 3 after finding the derivative, either by naming the derivative function or by putting (3) afterwards."}
︠70490052-ef41-417c-b7e0-01df5e6cf3aai︠
%md
## Example 4

Find $g'(5)$ (using the same $g(x)$ from above).

Method 1: Give the derivative a name, such as dg. Then we simply compute dg(5).
︡eb1e3bfd-4adc-4a00-8b4a-8a424832ae65︡{"done":true,"md":"## Example 4\n\nFind $g'(5)$ (using the same $g(x)$ from above).\n\nMethod 1: Give the derivative a name, such as dg. Then we simply compute dg(5)."}
︠125e9595-8641-4e40-8eec-b625e38b3cff︠
g(x)=x^3*e^(-x^2)
dg(x)=derivative(g(x),x)
dg(5)
︡d50ea733-3baa-490b-b777-f24426f1579d︡{"stdout":"-1175*e^(-25)\n"}︡{"done":true}︡
︠a9a40e23-7e63-44ed-b49b-f0ee8d19922fi︠
%md
Use the N() command if you want a numerical approximation:
︡58641008-73d2-4860-9379-e29ecf716d5a︡{"done":true,"md":"Use the N() command if you want a numerical approximation:"}
︠0b09b6b2-4827-49a8-9be0-a39b0123c68fs︠
N(dg(5))
︡decc2174-3c85-4ac3-91ad-ff975437ffee︡{"stdout":"-1.63183340413327e-8\n"}︡{"done":true}︡
︠1ac95aa8-8e5a-4c41-806a-e2f9d46471bbi︠
%md
So $g'(5)=-1175e^{-25}\approx-1.63\times10^{-8}=-0.0000000163$ (notice the scientific notation).
︡72455503-7a53-4bf7-b0c9-b2453b08dc6f︡{"done":true,"md":"So $g'(5)=-1175e^{-25}\\approx-1.63\\times10^{-8}=-0.0000000163$ (notice the scientific notation)."}
︠4338c1c4-8dc4-4ca2-a864-6a12d7986e84i︠
%md
Method 2: Add the particular value after the derivative command:
︡b2d14e50-9da1-4af1-bb23-ee83ef8d4bbe︡{"done":true,"md":"Method 2: Add the particular value after the derivative command:"}
︠dc4e6758-ae0d-42c9-981b-3250c521e7d1s︠
derivative(g(x),x)(5)
︡9fac0214-0adb-4580-8952-3239ef7ee4b5︡{"stdout":"-1175*e^(-25)\n"}︡{"done":true}︡
︠5c57d2d8-8dec-49df-96ae-2f27d27eb2e5i︠
%md
Of course, we get the same answer as we got from method 1.
︡6d09dd39-cc2a-4158-b1b4-a6946df8ab93︡{"done":true,"md":"Of course, we get the same answer as we got from method 1."}
︠b854e7fc-7e4e-42e6-a594-06db6800fafei︠
%md
## Example 5

Find $g'(-3)$.

If you already have a dg function (method 1), then just compute dg(-3).
︡3b0a6670-7ad7-4a1e-8125-5b479b7f59fe︡{"done":true,"md":"## Example 5\n\nFind $g'(-3)$.\n\nIf you already have a dg function (method 1), then just compute dg(-3)."}
︠60638742-d6cb-4540-a23b-5b01bec0a2des︠
dg(-3)
N(_)
︡509aa8a6-2f71-4a2b-a108-57214a10f9a1︡{"stdout":"-135*e^(-9)\n"}︡{"stdout":"-0.0166603235517017\n"}︡{"done":true}︡
︠f7703b83-460c-428e-86f6-ca16b83e3550i︠
%md
Thus, $g'(-3)\approx -0.016660$.
︡1e315f98-eba4-4211-88eb-50d9441a820b︡{"done":true,"md":"Thus, $g'(-3)\\approx -0.016660$."}
︠afd5e466-0d58-4d73-9933-fc39aeea3c62i︠
%md
If you are using method 2, then compute the derivative again:
︡d0ff27fb-d224-4482-a636-8fdc4303359d︡{"done":true,"md":"If you are using method 2, then compute the derivative again:"}
︠3fb1a9d8-92a4-4a1f-9054-1e1ac8d6d231s︠
derivative(g(x),x)(-3)
︡daa324b4-9267-4274-865f-12cd9dfc8e96︡{"stdout":"-135*e^(-9)\n"}︡{"done":true}︡
︠829839da-8e3b-4351-a8b2-fce2b6129326i︠
%md
If you have many particular values to calculate, method 1 is more efficient. If you need only one particular value, then method 2 involves less typing.

Personally, I prefer method 1. I think method 1 more clearly shows what you are doing.
︡164e7f40-5b5a-427b-95ee-f6f81e2bafcc︡{"done":true,"md":"If you have many particular values to calculate, method 1 is more efficient. If you need only one particular value, then method 2 involves less typing.\n\nPersonally, I prefer method 1. I think method 1 more clearly shows what you are doing."}
︠f5a3db1a-2e04-4a8e-922a-a0c4721eabebi︠
%md
## Derivatives with Other Variables

Sage is able to handle derivative when other variables are involved. All variables other than the variable of differentiation (the variable after the comma in the derivative command) are treated as constants (unspecified numbers).

## Example 6

Find the derivative of $F(x)=ax^2+bx+c$. [It's implied that the derivative is with respect to $x$, since the function is defined as a function of $x$.]
︡86e4b00d-33b5-4cbe-b242-d2b15f28706d︡{"done":true,"md":"## Derivatives with Other Variables\n\nSage is able to handle derivative when other variables are involved. All variables other than the variable of differentiation (the variable after the comma in the derivative command) are treated as constants (unspecified numbers).\n\n## Example 6\n\nFind the derivative of $F(x)=ax^2+bx+c$. [It's implied that the derivative is with respect to $x$, since the function is defined as a function of $x$.]"}
︠36243206-6712-41fb-9b26-27159d436214︠
%var a,b,c
F(x)=a*x^2+b*x+c
show(derivative(F(x),x))
︡fecacc77-9941-4f4a-b6c7-d0fedd126de8︡{"html":"<div align='center'>$\\displaystyle 2 \\, a x + b$</div>"}︡
︠5a77110e-88ae-4767-8382-7ed4dc7419a1i︠
%md
So $F'(x)=2ax+b$.
︡8819c0de-ef70-42ae-ac22-3b8cee0a730d︡{"done":true,"md":"So $F'(x)=2ax+b$."}
︠049b90d1-b1cc-4ed0-936b-336c1cc38a12i︠
%md
Of course, if we take the derivative with respect to $a$, $b$, or $c$ we will get a different answer. [This is awkward, since F is written as a function of $x$. This is not a normal Calculus 1 question, but Sage is able to deal with it.]
︡4547ac08-8aed-40e4-a165-66a0def1636e︡{"done":true,"md":"Of course, if we take the derivative with respect to $a$, $b$, or $c$ we will get a different answer. [This is awkward, since F is written as a function of $x$. This is not a normal Calculus 1 question, but Sage is able to deal with it.]"}
︠452f1d4f-5941-49ae-b997-5c2797508181︠
show(derivative(F(x),a))
︡84208428-f0aa-4c31-a7ba-1cc87fca21e8︡{"html":"<div align='center'>$\\displaystyle x^{2}$</div>"}︡
︠c13f5db2-d527-4d42-ab3e-9ea3a0beb547︠
show(derivative(F(x),b))
︡9aad0918-c5dd-4ee7-a390-40f5fe0cb734︡{"html":"<div align='center'>$\\displaystyle x$</div>"}︡
︠d65dc373-c363-44d8-8ec8-13a69af0f8bc︠
show(derivative(F(x),c))
︡b2f463d0-48b1-4e65-8287-401a0521c486︡{"html":"<div align='center'>$\\displaystyle 1$</div>"}︡
︠e9cc6898-3155-46f4-b13c-e4ffe0e1de5ai︠
%md
## Applied Example

The rate of change of position with respect to time (called velocity) is the derivative of the position function.

## Example 7

The position (in feet) of an object moving in a straight line after $t$ minutes is given by the function $p(t)=-3t^2+40t+5$.

How fast is the object travelling at $t=10$ minutes?
︡0e079b83-c932-4737-93aa-b3f52594f50b︡{"done":true,"md":"## Applied Example\n\nThe rate of change of position with respect to time (called velocity) is the derivative of the position function.\n\n## Example 7\n\nThe position (in feet) of an object moving in a straight line after $t$ minutes is given by the function $p(t)=-3t^2+40t+5$.\n\nHow fast is the object travelling at $t=10$ minutes?"}
︠1a1cdb56-dce3-4026-bf2a-f0134e3f6172s︠
%var t
p(t)=-3*t^2+40*t+5
v(t)=derivative(p(t),t)  #I will call this function v for velocity
v(10)
︡c7816fef-46d6-4586-a050-d959a0df0966︡{"stdout":"-20\n"}︡{"done":true}︡
︠64b237c4-0cb9-46a9-8105-9c2cc9b34898i︠
%md
The objects's velocity is $-20$ ft/min.
︡e5bb40d0-882b-41dc-a801-919183fa1173︡{"done":true,"md":"The objects's velocity is $-20$ ft/min."}
︠fa4c8f6a-9cee-4431-aafe-87866f13ccb3i︠
%md
You could also use method 2:
︡771e7619-53ee-4f1a-b974-a2c473268845︡{"done":true,"md":"You could also use method 2:"}
︠fbbe6997-4c66-4185-a611-244bb585b518s︠
derivative(p(t),t)(10)
︡06490ca4-7b0a-494f-9846-fade134161f9︡{"stdout":"-20\n"}︡{"done":true}︡
︠cbc33365-ded5-4c7e-b73f-df8c251dd73ai︠
%md
## Higher-Order Derivatives

The second derivative of $f(x)$, denoted $f''(x)$ or $\frac{d^2}{dx^2}f(x)$, is the derivative of $f'(x)$. In other words, $f''(x)=(f')'(x)$ or $\frac{d^2}{dx^2}f(x)=\frac{d}{dx}\left(\frac{d}{dx}f(x)\right)$.

Similarly, the third derivative of $f(x)$, denoted $f'''(x)$ or$\frac{d^3}{dx^3}f(x)$, is the derivative of $f''(x)$.

After the third derivative, we stop using primes. For example, the fourth derivative is denoted $f^{(4)}(x)=\frac{d^4}{dx^4}f(x)$ and the tenth derivative is denoted $f^{(10)}(x)=\frac{d^{10}}{dx^{10}}f(x)$.

If you want the second, third, etc. derivative in Sage, you need to add one more argument to the derivative command.
︡b1e4af5f-e256-4ef2-94ad-099cff9840eb︡{"done":true,"md":"## Higher-Order Derivatives\n\nThe second derivative of $f(x)$, denoted $f''(x)$ or $\\frac{d^2}{dx^2}f(x)$, is the derivative of $f'(x)$. In other words, $f''(x)=(f')'(x)$ or $\\frac{d^2}{dx^2}f(x)=\\frac{d}{dx}\\left(\\frac{d}{dx}f(x)\\right)$.\n\nSimilarly, the third derivative of $f(x)$, denoted $f'''(x)$ or$\\frac{d^3}{dx^3}f(x)$, is the derivative of $f''(x)$.\n\nAfter the third derivative, we stop using primes. For example, the fourth derivative is denoted $f^{(4)}(x)=\\frac{d^4}{dx^4}f(x)$ and the tenth derivative is denoted $f^{(10)}(x)=\\frac{d^{10}}{dx^{10}}f(x)$.\n\nIf you want the second, third, etc. derivative in Sage, you need to add one more argument to the derivative command."}
︠135ceee2-9cb5-49a0-b3c8-6a049fb3fa1bi︠
%md
## Example 8

Here are some second derivatives (using the same $f$, $g$, and $F$ from above):
︡dbb83240-fcb8-4cf2-92d7-4efeebc206c4︡{"done":true,"md":"## Example 8\n\nHere are some second derivatives (using the same $f$, $g$, and $F$ from above):"}
︠a016f865-9cfb-45d8-855f-41146a4462db︠
derivative(f(x),x,2)
︡0040eec2-ed9f-4d96-b736-dc9587341f7a︡{"stdout":"2\n"}︡
︠0d0097ef-1f91-40c8-9cee-ed5f7cf31e9bi︠
%md
$f''(x)=2$
︡a2a0cdbb-cda7-44ce-b308-92ba7e4f34ea︡{"done":true,"md":"$f''(x)=2$"}
︠76dbad42-f216-44f4-b9ea-b8c016c9bb7es︠
show(derivative(g(x),x,2))
︡34a5f2d7-ba12-4404-9ec6-dbe90c989a6f︡{"html":"<div align='center'>$\\displaystyle 4 \\, x^{5} e^{\\left(-x^{2}\\right)} - 14 \\, x^{3} e^{\\left(-x^{2}\\right)} + 6 \\, x e^{\\left(-x^{2}\\right)}$</div>"}︡{"done":true}︡
︠1742615e-22ad-4a28-a151-0f6a0cb5cc41i︠
%md
$g''(x)=4 \, x^{5} e^{\left(-x^{2}\right)} - 14 \, x^{3} e^{\left(-x^{2}\right)} + 6 \, x e^{\left(-x^{2}\right)}$
︡90008ac0-9ce5-4b54-9f52-7bc5efeb4e1b︡{"done":true,"md":"$g''(x)=4 \\, x^{5} e^{\\left(-x^{2}\\right)} - 14 \\, x^{3} e^{\\left(-x^{2}\\right)} + 6 \\, x e^{\\left(-x^{2}\\right)}$"}
︠16b4bfb3-a151-4e94-8a29-043924a0d6e5︠
show(derivative(F(x),x,2))
︡5141ea83-c441-41b4-8564-a6e1d1069553︡{"html":"<div align='center'>$\\displaystyle 2 \\, a$</div>"}︡
︠8be32bd4-7310-4e57-a13d-56f2fd05497ai︠
%md
$F''(x)=2a$
︡82b289bb-75be-4247-a292-20923839e9e0︡{"done":true,"md":"$F''(x)=2a$"}
︠0e73c7bd-92e4-4adf-9a58-40ef3bfba40ci︠
%md
## Example 9

Here are some higher-order derivatives (same $f$, $g$, and $F$):
︡e0bc707b-eb0e-4e4f-9935-135352b06822︡{"done":true,"md":"## Example 9\n\nHere are some higher-order derivatives (same $f$, $g$, and $F$):"}
︠6c84b21a-b6ce-4c8c-bfca-ff75f3d4eccd︠
derivative(f(x),x,3) #third derivative
︡7f221cdd-6145-44c1-ba13-ee76f389d7a1︡{"stdout":"0\n"}︡
︠6d3b154e-0436-4ead-a28f-832ae6845d4ai︠
%md
$f'''(x)=0$
︡0a92c261-fa6c-47fc-85ba-f5060f1160fa︡{"done":true,"md":"$f'''(x)=0$"}
︠d58f941a-15b2-48a3-921a-3502acdd30ae︠
show(derivative(g(x),x,5)) #fifth derivative
︡ed2e2278-749b-4ecf-833c-a32f18a5a6f5︡{"tex":{"tex":"-32 \\, x^{8} e^{\\left(-x^{2}\\right)} + 400 \\, x^{6} e^{\\left(-x^{2}\\right)} - 1320 \\, x^{4} e^{\\left(-x^{2}\\right)} + 1140 \\, x^{2} e^{\\left(-x^{2}\\right)} - 120 \\, e^{\\left(-x^{2}\\right)}","display":true}}︡
︠de780489-2d57-44d7-9252-f69487ac867ei︠
%md
$g^{(5)}(x)=-32 \, x^{8} e^{\left(-x^{2}\right)} + 400 \, x^{6} e^{\left(-x^{2}\right)} - 1320 \, x^{4} e^{\left(-x^{2}\right)} + 1140 \, x^{2} e^{\left(-x^{2}\right)} - 120 \, e^{\left(-x^{2}\right)}$
︡d6bd5cb2-3f7c-4072-8899-2120d083b296︡{"done":true,"md":"$g^{(5)}(x)=-32 \\, x^{8} e^{\\left(-x^{2}\\right)} + 400 \\, x^{6} e^{\\left(-x^{2}\\right)} - 1320 \\, x^{4} e^{\\left(-x^{2}\\right)} + 1140 \\, x^{2} e^{\\left(-x^{2}\\right)} - 120 \\, e^{\\left(-x^{2}\\right)}$"}
︠9398a046-e915-44ea-b749-02fa48dd4c9e︠
derivative(F(x),x,4) #fourth derivative
︡5a897464-5668-453e-b81b-819cd34ec5a2︡{"stdout":"0\n"}︡
︠d7ed65f9-363d-4c39-b8f7-0f3c48fc85dai︠
%md
$F^{(4)}(x)=0$
︡1029050a-93a5-4ca1-8ea2-d3eeb7d3361c︡{"done":true,"md":"$F^{(4)}(x)=0$"}
︠fb540ddb-ab10-4d25-958e-dfc46299e9c6i︠
%md
## Example 10

Find $g^{(10)}(7)$.

Method 1:
︡fce51c8c-7f0b-4e04-aaf8-8232f6c65dcf︡{"done":true,"md":"## Example 10\n\nFind $g^{(10)}(7)$.\n\nMethod 1:"}
︠4855bb92-71eb-4329-9430-eca79d72ccd9s︠
d10g(x)=derivative(g(x),x,10) #define the derivative function first
d10g(7)
N(d10g(7))
︡3e096c9d-0326-4440-82e8-dada1d1aecc6︡{"stdout":"41459781162688*e^(-49)\n"}︡{"stdout":"2.17368892264044e-8\n"}︡{"done":true}︡
︠6d34798d-c012-486b-ac5c-77f5dc1fb1b6i︠
%md
Notice the scientific notation again: $g^{(10)}(7)\approx 2.17\times 10^{-8}=0.0000000217.$
︡5604cfe5-3e22-4508-b910-a2f7f978e341︡{"md":"Notice the scientific notation again: $g^{(10)}(7)\\approx 2.17\\times 10^{-8}=0.0000000217.$\n"}︡
︠e68026c9-b4ca-4b51-a01e-e9866b38accdi︠
%md
Method 2:
︡8001b872-6dcc-4218-bcfd-42f11e008b61︡{"done":true,"md":"Method 2:"}
︠90c7c842-9549-4396-84d4-402fa78b15cfs︠
derivative(g(x),x,10)(7)
︡45618cba-e992-4aca-a6e8-93f384aacf97︡{"stdout":"41459781162688*e^(-49)\n"}︡{"done":true}︡
︠8b8ac774-7760-4783-90d9-b13f5c0c1fa2i︠
%md
## Applied Example

Acceleration is the rate of change of velocity. In other words, acceleration is the second derivative of the position function.

## Example 11

The position (in feet) of an object moving in a straight line after $t$ minutes is given by the function $p(t)=-3t^2+40t+5$.

What is the object's acceleration at $t=10$ minutes?
︡d719b33e-07d7-419d-bcbb-2f57b61bf81a︡{"done":true,"md":"## Applied Example\n\nAcceleration is the rate of change of velocity. In other words, acceleration is the second derivative of the position function.\n\n## Example 11\n\nThe position (in feet) of an object moving in a straight line after $t$ minutes is given by the function $p(t)=-3t^2+40t+5$.\n\nWhat is the object's acceleration at $t=10$ minutes?"}
︠d3d5373c-1ba7-4875-a331-60aaaa22772fs︠
%var t
p(t)=-3*t^2+40*t+5
a(t)=derivative(p(t),t,2) #I will call this function a for acceleration.
a(10)
︡ffc8eda1-841b-42f6-82ee-8c3b1ad86cf5︡{"stdout":"-6\n"}︡{"done":true}︡
︠569a1c76-1578-4501-9fbc-81bb9edd8fafi︠
%md
The acceleration is $-6$ ft/min/min = $-6$ ft/min$^2$.
︡8b3aada4-c72d-491f-9da5-65f1d291842f︡{"md":"The acceleration is $-6$ ft/min/min = $-6$ ft/min$^2$.\n"}︡
︠5daa0ff0-795f-465b-b8a2-e9dceec9e967i︠
%md
## Graphs of Derivatives

We are going to graph a function and its derivative and compare.

## Example 12

Let's start with a simple example and look at the graphs of $f(x)=x^2$ and its derivative.
︡b452d4c7-1aa8-4278-b55f-9386da9b8d38︡{"done":true,"md":"## Graphs of Derivatives\n\nWe are going to graph a function and its derivative and compare.\n\n## Example 12\n\nLet's start with a simple example and look at the graphs of $f(x)=x^2$ and its derivative."}
︠7bbeeed9-187d-4e15-aaf4-3109def7fbf0s︠
f(x)=x^2
df(x)=derivative(f(x),x)
plot(f,xmin=-4,xmax=4,legend_label='f')+plot(df,xmin=-4,xmax=4,color='red',legend_label='f\'')
︡3a96a9a0-e0f9-4b94-9d6a-1ba6fa804048︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/11878/tmp_VvQZxA.svg","show":true,"text":null,"uuid":"db9e4d3a-d1e6-497d-a124-13b2ac7543dd"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠28ff453e-b503-4d1b-81f5-1242c3e44cbdi︠
%md
Notice:
* When the original function $f$ is increasing, the derivative $f'$ is positive.
* When $f$ is decreasing, $f'$ is negative.
* $f$ has a local minimum at $x=0$, and $f'(0)=0$.

Caution: There is no relationship between the direction (increasing/decreasing) of $f$ and the direction of $f'$. The relationship is between the direction of $f$ and the sign (positive/negative) of $f'$.
︡590713e2-b8bd-49b6-80a5-f674f73d9f97︡{"done":true,"md":"Notice:\n* When the original function $f$ is increasing, the derivative $f'$ is positive.\n* When $f$ is decreasing, $f'$ is negative.\n* $f$ has a local minimum at $x=0$, and $f'(0)=0$.\n\nCaution: There is no relationship between the direction (increasing/decreasing) of $f$ and the direction of $f'$. The relationship is between the direction of $f$ and the sign (positive/negative) of $f'$."}
︠2205d91c-417e-4599-894a-d46b1c4a0552i︠
%md
## Example 13

Now let's look at $g(x)=x^3e^{-x^2}$ and its derivative.
︡a5f582fa-9b8c-4e96-b32f-1e13b502dd53︡{"done":true,"md":"## Example 13\n\nNow let's look at $g(x)=x^3e^{-x^2}$ and its derivative."}
︠643f0afb-b142-40fe-9178-1241c58572d7s︠
g(x)=x^3*e^(-x^2)
dg(x)=derivative(g(x),x)
plot(g,xmin=-4,xmax=4,legend_label='g')+plot(dg,xmin=-4,xmax=4, color='red',legend_label='g\'')
︡bace68de-62b1-46c5-9189-7b006666f252︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/11878/tmp_8qMt3H.svg","show":true,"text":null,"uuid":"7a88a763-2343-456f-837e-4eda78671510"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠472f8e85-d407-4f0f-bf4c-5ae381690e80i︠
%md
Again we observe the same relationship:
* When the original function $g$ is increasing, the derivative $g'$ is positive.
* When $g$ is decreasing, $g'$ is negative.
* When $g$ has a local minimum or maximum, $g'$ is $0$.

Also observe the following:
* When $g$ is concave up, $g'$ is increasing.
* When $g$ is concave down, $g'$ is decreasing.
* When $g$ has an inflection point, $g'$ has a local minimum or maximum.
︡f1843c67-5724-4c33-af52-b38cd6ce7b5f︡{"done":true,"md":"Again we observe the same relationship:\n* When the original function $g$ is increasing, the derivative $g'$ is positive.\n* When $g$ is decreasing, $g'$ is negative.\n* When $g$ has a local minimum or maximum, $g'$ is $0$.\n\nAlso observe the following:\n* When $g$ is concave up, $g'$ is increasing.\n* When $g$ is concave down, $g'$ is decreasing.\n* When $g$ has an inflection point, $g'$ has a local minimum or maximum."}
︠7926d805-ad46-49c0-af0f-0aa546a73815i︠
%md
## Tangent Lines

Last time we used limits to find the slopes of tangent lines. Now we can use the derivative to find the slope.

In general, the tangent line to $f$ at $x = x_0$ has equation $y=f(x_0)+f'(x_0)(x-x_0)$.

## Example 14

Suppose we want the tangent line to the function $g(x)=x^3e^{-x^2}$ when $x=2$.

An equation for the line is $y=g(2)+g'(2)(x-2)$.
︡810ce208-2881-4361-816f-c00857b85428︡{"done":true,"md":"## Tangent Lines\n\nLast time we used limits to find the slopes of tangent lines. Now we can use the derivative to find the slope.\n\nIn general, the tangent line to $f$ at $x = x_0$ has equation $y=f(x_0)+f'(x_0)(x-x_0)$.\n\n## Example 14\n\nSuppose we want the tangent line to the function $g(x)=x^3e^{-x^2}$ when $x=2$.\n\nAn equation for the line is $y=g(2)+g'(2)(x-2)$."}
︠605ea537-05e3-4508-b9e7-2c8b72c33a35︠
g(x)=x^3*e^(-x^2)         #First define g
dg(x)=derivative(g(x),x)  #Then define the derivative function
TL(x)=g(2)+dg(2)*(x-2)    #Now define the tangent line
show('$y=$',TL(x))
plot(g,xmin=0,xmax=4)+plot(TL,xmin=0,xmax=4,color='red')+point((2,g(2)),color='black',size=25)
︡526c5e8b-7458-4bc3-9fd0-620d1741834f︡{"html":"<div align='center'>$y=$ $\\displaystyle -20 \\, {\\left(x - 2\\right)} e^{\\left(-4\\right)} + 8 \\, e^{\\left(-4\\right)}$</div>"}︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/11878/tmp_NI4Cz5.svg","show":true,"text":null,"uuid":"1f6c2a85-88bc-470a-a78b-ff293c06fde9"},"once":false}︡{"html":"<div align='center'></div>"}︡{"done":true}︡
︠c8f9e6bf-9f80-4044-843a-fbb2047e36f0︠









