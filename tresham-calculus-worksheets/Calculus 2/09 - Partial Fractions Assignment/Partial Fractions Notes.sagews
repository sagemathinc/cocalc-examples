︠e5e391b3-3c01-48fc-9da0-88b281301679i︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡d4eae194-1276-49c3-8299-0fa6e1fedb40︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠92bf0a1f-84fd-4a74-9161-52c08ddcbc5di︠
%md
### Prerequisites:

* Intro to Sage
* Symbolic Integration
︡6f1b5908-a0a7-431b-b904-cc113ae5d2d2︡{"done":true,"md":"### Prerequisites:\n\n* Intro to Sage\n* Symbolic Integration"}
︠f9c490aa-222d-44ad-971b-fde8c5952024i︠
%md
# Partial Fractions

Partial fraction decomposition is a tool to help us integrate rational functions (quotients of polynomials). It allows us to "decompose" a complicated rational function into a sum of simpler rational functions.

It is the reverse of fraction addition. For example, consider this addition:

$$\frac{1}{x+1}+\frac{-1}{x+3}=\frac{2}{(x+3)(x+1)}$$

Partial fraction decomposition undoes the addition.

So if you wanted to find the antiderivative of $\displaystyle\frac{2}{(x+3)(x+1)}$, you could find the antiderivatives of $\displaystyle\frac{1}{x+1}$ and $\displaystyle\frac{-1}{x+3}$ and add them together.

Of course, in terms of practice, it is silly to use the computer to do partial fraction decomposition in order to integrate, since the computer can already integrate the original rational function. So the goal of this lab is to explore the different kinds of decompositions and the kind of antiderivatives you get out of the process.

︡377e7574-30ce-4df9-86cb-2a6cd4a0472b︡{"done":true,"md":"# Partial Fractions\n\nPartial fraction decomposition is a tool to help us integrate rational functions (quotients of polynomials). It allows us to \"decompose\" a complicated rational function into a sum of simpler rational functions.\n\nIt is the reverse of fraction addition. For example, consider this addition:\n\n$$\\frac{1}{x+1}+\\frac{-1}{x+3}=\\frac{2}{(x+3)(x+1)}$$\n\nPartial fraction decomposition undoes the addition.\n\nSo if you wanted to find the antiderivative of $\\displaystyle\\frac{2}{(x+3)(x+1)}$, you could find the antiderivatives of $\\displaystyle\\frac{1}{x+1}$ and $\\displaystyle\\frac{-1}{x+3}$ and add them together.\n\nOf course, in terms of practice, it is silly to use the computer to do partial fraction decomposition in order to integrate, since the computer can already integrate the original rational function. So the goal of this lab is to explore the different kinds of decompositions and the kind of antiderivatives you get out of the process."}
︠287f95a4-fa5d-46e0-8748-0aa8865dbe0bi︠
%md
## Example 1

Here is an example of computing a partial fraction decomposition in Sage:
︡76d76289-f75e-4a39-91c8-d53d6fd68065︡{"done":true,"md":"## Example 1\n\nHere is an example of computing a partial fraction decomposition in Sage:"}
︠68582a6b-ce17-49b1-8a00-ce892e8529a2︠
f(x)=2/(x^2 + 4*x + 3)
f(x).partial_fraction()
show(_)
︡d97a16a8-32ce-4a70-8f3d-4636e24f196c︡{"stdout":"-1/(x + 3) + 1/(x + 1)"}︡{"stdout":"\n"}︡{"html":"<div align='center'>$\\displaystyle -\\frac{1}{x + 3} + \\frac{1}{x + 1}$</div>"}︡
︠f74b17e2-86f6-460a-9aba-ad723e6d6e37i︠
%md
## Example 2

Find the antiderivative of $\displaystyle f(x)=\frac{x}{x^2+4x+3}$.

First, we'll integrate with Sage, then we'll find the partial fraction decomposition and integrate term by term.
︡4190cae5-90b0-4e88-a124-71bfd2c8fd92︡{"md":"## Example 2\n\nFind the antiderivative of $\\displaystyle f(x)=\\frac{x}{x^2+4x+3}$.\n\nFirst, we'll integrate with Sage, then we'll find the partial fraction decomposition and integrate term by term.\n"}︡
︠6b6a7f04-419e-4501-81e4-5f5a20581dab︠
f(x)=x/(x^2+4*x+3)
integral(f(x),x)
show(_)
︡38400e4f-0ff1-48fb-95e2-4069fb9b0301︡{"stdout":"3/2*log(x + 3) - 1/2*log(x + 1)\n"}︡{"html":"<div align='center'>$\\displaystyle \\frac{3}{2} \\, \\log\\left(x + 3\\right) - \\frac{1}{2} \\, \\log\\left(x + 1\\right)$</div>"}︡
︠9055e55d-4f33-47be-b044-f611e6541ec2i︠
%md
Note: We would normally write this as follows: $$\int\frac{x}{x^2+4x+3}\, dx=\frac{3}{2}\ln(|x+3|)-\frac{1}{2}\ln(|x+1|)+C$$

(notice the absolute values and the $+C$).

︡fdd156f3-9e67-4bf2-b1cf-8d74d74b1ad5︡{"md":"Note: We would normally write this as follows: $$\\int\\frac{x}{x^2+4x+3}\\, dx=\\frac{3}{2}\\ln(|x+3|)-\\frac{1}{2}\\ln(|x+1|)+C$$\n\n(notice the absolute values and the $+C$).\n\n"}︡
︠819b26f6-740d-4b24-8851-0a1f948de916i︠
%md
Now let's try partial fractions:
︡cd0978c1-a169-4410-aedf-8956fbffed04︡{"md":"Now let's try partial fractions:\n"}︡
︠c06138af-a54a-4ae4-9d94-f5caf2196099︠
f(x).partial_fraction()
show(_)
︡9c8594ab-72f5-492a-ba11-ebe289539175︡{"stdout":"3/2/(x + 3) - 1/2/(x + 1)\n"}︡{"html":"<div align='center'>$\\displaystyle \\frac{3}{2 \\, {\\left(x + 3\\right)}} - \\frac{1}{2 \\, {\\left(x + 1\\right)}}$</div>"}︡
︠0af35e2e-383f-49da-b718-e69131d544a5i︠
%md
So $$\frac{x}{x^2+4x+3}=\frac{3/2}{x+3}+\frac{-1/2}{x+1}$$

This means $$\int\frac{x}{x^2+4x+3}\, dx=\int\frac{3/2}{x+3}+\frac{-1/2}{x+1}\, dx=\frac{3}{2}\int\frac{1}{x+3}\, dx-\frac{1}{2}\int\frac{1}{x+1}\, dx$$
︡56e5b0e1-16cf-4c14-a98e-94a7f76726f6︡{"md":"So $$\\frac{x}{x^2+4x+3}=\\frac{3/2}{x+3}+\\frac{-1/2}{x+1}$$\n\nThis means $$\\int\\frac{x}{x^2+4x+3}\\, dx=\\int\\frac{3/2}{x+3}+\\frac{-1/2}{x+1}\\, dx=\\frac{3}{2}\\int\\frac{1}{x+3}\\, dx-\\frac{1}{2}\\int\\frac{1}{x+1}\\, dx$$\n"}︡
︠36d84c56-dc50-41bd-9389-eacf19b8c2b1s︠
integral(3/2/(x + 3),x)
integral(- 1/2/(x + 1),x)
︡0284be1a-f2a5-4c7e-8313-e7c253da577f︡{"stdout":"3/2*log(x + 3)"}︡{"stdout":"\n"}︡{"stdout":"-1/2*log(x + 1)\n"}︡{"done":true}︡
︠43d9fa51-eaaa-401a-bdd5-5ddd0db547eai︠
%md
## Non-repeated Linear Factors

In general, a rational function whose denominator has distinct linear factors will decompose similar to the last example.

Suppose $R(x)$ is a rational function which may be written as $$R(x)=\frac{P(x)}{(x-r_1)(x-r_2)\cdots(x-r_n)}$$

where $P(x)$ is a polynomial of degree less than $n$ and all the $r_i$ are distinct (note: $n$ is the degree of the denominator).

Then there exists constants $a_i$ (i.e., real numbers) such that:

$$R(x)=\frac{a_1}{x-r_1}+\frac{a_2}{x-r_2}+\cdots+\frac{a_n}{x-r_n}$$

Then $$\int R(x)\, dx=a_1\int\frac{1}{x-r_1}\, dx+a_2\int\frac{1}{x-r_2}\, dx+\cdots+a_n\int\frac{1}{x-r_n}\, dx$$

$$=a_1\ln(|x-r_1|)+a_2\ln(|x-r_2|)+\cdots+a_n\ln(|x-r_n|)+C$$
︡ef794e5d-8447-4624-b9ae-057fde151230︡{"done":true,"md":"## Non-repeated Linear Factors\n\nIn general, a rational function whose denominator has distinct linear factors will decompose similar to the last example.\n\nSuppose $R(x)$ is a rational function which may be written as $$R(x)=\\frac{P(x)}{(x-r_1)(x-r_2)\\cdots(x-r_n)}$$\n\nwhere $P(x)$ is a polynomial of degree less than $n$ and all the $r_i$ are distinct (note: $n$ is the degree of the denominator).\n\nThen there exists constants $a_i$ (i.e., real numbers) such that:\n\n$$R(x)=\\frac{a_1}{x-r_1}+\\frac{a_2}{x-r_2}+\\cdots+\\frac{a_n}{x-r_n}$$\n\nThen $$\\int R(x)\\, dx=a_1\\int\\frac{1}{x-r_1}\\, dx+a_2\\int\\frac{1}{x-r_2}\\, dx+\\cdots+a_n\\int\\frac{1}{x-r_n}\\, dx$$\n\n$$=a_1\\ln(|x-r_1|)+a_2\\ln(|x-r_2|)+\\cdots+a_n\\ln(|x-r_n|)+C$$"}
︠751758be-0f33-4034-81cd-0bda06b10c94i︠
%md
## Example 3

Find $\displaystyle\int\frac{2x^2+4x+3}{(x+3)(x+2)(x-1)}\, dx.$

Again, we'll use Sage to compute the integral directly, and then we'll compare the partial fraction approach.
︡dcf28dfe-e4b6-46aa-ad8b-2bba462d9056︡{"done":true,"md":"## Example 3\n\nFind $\\displaystyle\\int\\frac{2x^2+4x+3}{(x+3)(x+2)(x-1)}\\, dx.$\n\nAgain, we'll use Sage to compute the integral directly, and then we'll compare the partial fraction approach."}
︠478b12d7-ec3a-4753-91b8-9d4fac25c490︠
f(x)=(2*x^2+4*x+3)/((x+3)*(x+2)*(x-1))
#Make sure you have parentheses around the top and the entire bottom. You must put * between factors.
integral(f(x),x)
show(_)
︡3373d748-61d6-48e2-a1b4-273bed5a8120︡︡{"stdout":"9/4*log(x + 3) - log(x + 2) + 3/4*log(x - 1)","done":false}︡{"stdout":"\n","done":false}︡{"html":"<div align='center'>$\\displaystyle \\frac{9}{4} \\, \\log\\left(x + 3\\right) - \\log\\left(x + 2\\right) + \\frac{3}{4} \\, \\log\\left(x - 1\\right)$</div>","done":false}︡{"done":true}
︠80d7c757-ab9e-45e4-b708-b213b64e1a66s︠
f(x).partial_fraction()
show(_)
︡746c9111-a9ec-43f3-b261-3cee9e3c2348︡︡{"stdout":"9/4/(x + 3) - 1/(x + 2) + 3/4/(x - 1)\n","done":false}︡{"html":"<div align='center'>$\\displaystyle \\frac{9}{4 \\, {\\left(x + 3\\right)}} - \\frac{1}{x + 2} + \\frac{3}{4 \\, {\\left(x - 1\\right)}}$</div>","done":false}︡{"done":true}
︠78003452-e2b3-4204-8fe1-b87d07e5775ds︠
integral(9/4/(x + 3),x)
integral(- 1/(x + 2),x)
integral(3/4/(x - 1),x)
︡a3099674-93d7-42d9-8f2e-58582174a878︡{"stdout":"9/4*log(x + 3)\n"}︡{"stdout":"-log(x + 2)\n"}︡{"stdout":"3/4*log(x - 1)\n"}︡{"done":true}︡
︠007c630d-7fde-43a2-8920-b34ff97a6baei︠
%md
So $$\int\frac{2x^2+4x+3}{x^3+4x^2+x-6}\,dx=\frac{9}{4}\int\frac{1}{x+3}\, dx+(-1)\int\frac{1}{x+2}\, dx+\frac{3}{4}\int\frac{1}{x-1}\,dx$$

$$=\frac{9}{4}\ln(|x+3|)-\ln(|x+2|)+\frac{3}{4}\ln(|x-1|)+C$$
︡38b5d66a-7e8e-408b-8697-301f75333503︡︡{"done":true,"md":"So $$\\int\\frac{2x^2+4x+3}{x^3+4x^2+x-6}\\,dx=\\frac{9}{4}\\int\\frac{1}{x+3}\\, dx+(-1)\\int\\frac{1}{x+2}\\, dx+\\frac{3}{4}\\int\\frac{1}{x-1}\\,dx$$\n\n$$=\\frac{9}{4}\\ln(|x+3|)-\\ln(|x+2|)+\\frac{3}{4}\\ln(|x-1|)+C$$"}
︠300db01a-76e9-48d1-9376-cb0fa0bd2645i︠
%md
Note: To perform the partial fraction decomposition by hand, you have to first factor the denominator (another example where finding roots of polynomials is important), and then you set up a system of equations to solve for the constants (the $a_i$). I'll leave the details to your lecture professor. It's a lot of work, but it's the only way to deal with rational functions by hand.
︡9b7dc713-d37d-46f9-b222-1d89df724b28︡︡{"done":true,"md":"Note: To perform the partial fraction decomposition by hand, you have to first factor the denominator (another example where finding roots of polynomials is important), and then you set up a system of equations to solve for the constants (the $a_i$). I'll leave the details to your lecture professor. It's a lot of work, but it's the only way to deal with rational functions by hand."}
︠0c28b509-5da3-4f9e-8bd8-e0020b7cc49di︠
%md
## Repeated Linear Factors

Let's start with a rational function with only one root with multiplicity greater than 1.

Suppose a rational function $R(x)$ may be written $$R(x)=\frac{P(x)}{(x-r)^n}$$

where $P(x)$ is a polynomial of degree less than $n$ (the degree of the denominator).

Then there exist constants $a_i$ such that $$R(x)=\frac{a_1}{x-r}+\frac{a_2}{(x-r)^2}+\cdots+\frac{a_n}{(x-r)^n}$$

Integrating each of these terms is fairly simple.

$$\int R(x)\, dx=a_1\int\frac{1}{x-r}\,dx+a_2\int\frac{1}{(x-r)^2}\,dx+\cdots+a_n\int\frac{1}{(x-r)^n}\,dx$$

$$=a_1\ln(|x-r|)+a_2\frac{1}{-1}\frac{1}{x-r}+a_3\frac{1}{-2}\frac{1}{(x-r)^2}+\cdots+a_n\frac{1}{-n+1}\frac{1}{(x-r)^{n-1}}+C$$

︡a8852814-0354-4e06-b71c-957782f99acf︡{"done":true,"md":"## Repeated Linear Factors\n\nLet's start with a rational function with only one root with multiplicity greater than 1.\n\nSuppose a rational function $R(x)$ may be written $$R(x)=\\frac{P(x)}{(x-r)^n}$$\n\nwhere $P(x)$ is a polynomial of degree less than $n$ (the degree of the denominator).\n\nThen there exist constants $a_i$ such that $$R(x)=\\frac{a_1}{x-r}+\\frac{a_2}{(x-r)^2}+\\cdots+\\frac{a_n}{(x-r)^n}$$\n\nIntegrating each of these terms is fairly simple.\n\n$$\\int R(x)\\, dx=a_1\\int\\frac{1}{x-r}\\,dx+a_2\\int\\frac{1}{(x-r)^2}\\,dx+\\cdots+a_n\\int\\frac{1}{(x-r)^n}\\,dx$$\n\n$$=a_1\\ln(|x-r|)+a_2\\frac{1}{-1}\\frac{1}{x-r}+a_3\\frac{1}{-2}\\frac{1}{(x-r)^2}+\\cdots+a_n\\frac{1}{-n+1}\\frac{1}{(x-r)^{n-1}}+C$$"}
︠5f460713-cb84-4a05-a04d-3585eba40cd2i︠
%md
Recall, $\displaystyle\int\frac{1}{x}\,dx=\ln(|x|)+C$, and for $n\ne 1$, $\displaystyle\int\frac{1}{x^n}\,dx=\int x^{-n}\,dx=\frac{1}{-n+1}x^{-n+1}+C=\frac{1}{-n+1}\frac{1}{x^{n-1}}+C$.
︡87c66464-36a0-4970-be1a-2eef73bbd53b︡{"done":true,"md":"Recall, $\\displaystyle\\int\\frac{1}{x}\\,dx=\\ln(|x|)+C$, and for $n\\ne 1$, $\\displaystyle\\int\\frac{1}{x^n}\\,dx=\\int x^{-n}\\,dx=\\frac{1}{-n+1}x^{-n+1}+C=\\frac{1}{-n+1}\\frac{1}{x^{n-1}}+C$."}
︠e5a3f4be-59cc-455b-88a3-ae00f0e84459i︠
%md
## Example 4

Find $\displaystyle\int\frac{x^2-2}{(x-1)^3}\,dx$.
︡b7b50357-a011-4fdb-9496-1f1ade995b13︡{"done":true,"md":"## Example 4\n\nFind $\\displaystyle\\int\\frac{x^2-2}{(x-1)^3}\\,dx$."}
︠d38ee509-8fc7-45a1-8cb3-13662322536bs︠
f(x)=(x^2-2)/(x-1)^3
integral(f(x),x)
show(_)
︡14569e40-a539-4d35-a1ad-334574582a5d︡︡{"stdout":"-1/2*(4*x - 5)/(x^2 - 2*x + 1) + log(x - 1)\n","done":false}︡{"html":"<div align='center'>$\\displaystyle -\\frac{4 \\, x - 5}{2 \\, {\\left(x^{2} - 2 \\, x + 1\\right)}} + \\log\\left(x - 1\\right)$</div>","done":false}︡{"done":true}
︠0e10def4-a4d5-4be8-983a-dbae00b81020︠
f(x).partial_fraction()
show(_)
︡26c4c237-e884-4ef7-8ff1-d0de9fe4a66f︡{"stdout":"1/(x - 1) + 2/(x - 1)^2 - 1/(x - 1)^3\n"}︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{x - 1} + \\frac{2}{{\\left(x - 1\\right)}^{2}} - \\frac{1}{{\\left(x - 1\\right)}^{3}}$</div>"}︡
︠b268631b-a12b-4b44-8112-11e0e9290e98︠
show(integral(1/(x - 1),x))
show(integral(2/(x - 1)^2,x))
show(integral(-1/(x - 1)^3,x))
︡272aa6b4-1151-48ff-8b00-e5f4ea1b3058︡{"html":"<div align='center'>$\\displaystyle \\log\\left(x - 1\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle -\\frac{2}{x - 1}$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{2 \\, {\\left(x - 1\\right)}^{2}}$</div>"}︡
︠e587d2b1-03bf-42cb-8e4c-d45f9f79de75i︠
%md
Our answers look different, but they are the same. In the first integral, Sage has combined the rational pieces into one. In the partial fraction approach we can see the two rational pieces separately. In other words, $\displaystyle-\frac{1}{2}\cdot\frac{4x-5}{x^2-2x+1}=\frac{-2}{x-1}+\frac{1/2}{(x-1)^2}$
︡e530a835-7bfe-423f-9c01-01f3cdab8bcd︡{"md":"Our answers look different, but they are the same. In the first integral, Sage has combined the rational pieces into one. In the partial fraction approach we can see the two rational pieces separately. In other words, $\\displaystyle-\\frac{1}{2}\\cdot\\frac{4x-5}{x^2-2x+1}=\\frac{-2}{x-1}+\\frac{1/2}{(x-1)^2}$\n"}︡
︠da4c6464-43e5-435c-bf46-02f7df1fd04ai︠
%md
Here's an example with more than one repeated linear factor.

## Example 5

Find $\displaystyle\int\frac{2x-1}{(x+2)^2(x-3)^4}$.
︡4ef8f4bf-57b4-4f94-a561-403479f32cbc︡{"md":"Here's an example with more than one repeated linear factor.\n\n## Example 5\n\nFind $\\displaystyle\\int\\frac{2x-1}{(x+2)^2(x-3)^4}$.\n"}︡
︠e445b0c3-23ac-44d3-92d9-f890add53db1︠
f(x)=(2*x-1)/((x+2)^2*(x-3)^4) #Careful with parentheses and multiplication.
integral(f(x),x)
show(_)
︡0918a1e6-7091-4104-af72-d4946129d80a︡{"stdout":"1/375*(6*x^3 - 39*x^2 + 47*x - 77)/(x^4 - 7*x^3 + 9*x^2 + 27*x - 54) - 2/625*log(x + 2) + 2/625*log(x - 3)\n"}︡{"html":"<div align='center'>$\\displaystyle \\frac{6 \\, x^{3} - 39 \\, x^{2} + 47 \\, x - 77}{375 \\, {\\left(x^{4} - 7 \\, x^{3} + 9 \\, x^{2} + 27 \\, x - 54\\right)}} - \\frac{2}{625} \\, \\log\\left(x + 2\\right) + \\frac{2}{625} \\, \\log\\left(x - 3\\right)$</div>"}︡
︠3c4a7423-f71b-41ad-91c4-94c2bc253356︠
f(x).partial_fraction()
show(_)
︡7bacd7ce-bd87-475c-86e9-21afc96130af︡{"stdout":"-2/625/(x + 2) + 2/625/(x - 3) - 1/125/(x + 2)^2 - 1/125/(x - 3)^2 + 1/5/(x - 3)^4\n"}︡{"html":"<div align='center'>$\\displaystyle -\\frac{2}{625 \\, {\\left(x + 2\\right)}} + \\frac{2}{625 \\, {\\left(x - 3\\right)}} - \\frac{1}{125 \\, {\\left(x + 2\\right)}^{2}} - \\frac{1}{125 \\, {\\left(x - 3\\right)}^{2}} + \\frac{1}{5 \\, {\\left(x - 3\\right)}^{4}}$</div>"}︡
︠a61646aa-9a23-4be5-8751-ff9dcd1248ca︠
show(integral(-2/625/(x + 2),x))
show(integral(2/625/(x - 3),x))
show(integral(-1/125/(x + 2)^2,x))
show(integral(-1/125/(x - 3)^2,x))
show(integral(1/5/(x - 3)^4,x))
︡abb6611b-8965-4f45-9517-b00d16d4802a︡{"html":"<div align='center'>$\\displaystyle -\\frac{2}{625} \\, \\log\\left(x + 2\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\frac{2}{625} \\, \\log\\left(x - 3\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{125 \\, {\\left(x + 2\\right)}}$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{125 \\, {\\left(x - 3\\right)}}$</div>"}︡{"html":"<div align='center'>$\\displaystyle -\\frac{1}{15 \\, {\\left(x - 3\\right)}^{3}}$</div>"}︡
︠e363ed45-cd36-43f1-afd6-cd69cd700cfci︠
%md
So our integral is $\displaystyle-\frac{2}{625}\ln(|x+2|)+\frac{2}{625}\ln(|x-3|)+\frac{1}{125}\cdot\frac{1}{x+2}+\frac{1}{125}\cdot\frac{1}{x-3}-\frac{1}{15}\frac{1}{(x-3)^3}+C$.
︡e2416309-e907-497f-90b7-32d8dfd439b2︡{"md":"So our integral is $\\displaystyle-\\frac{2}{625}\\ln(|x+2|)+\\frac{2}{625}\\ln(|x-3|)+\\frac{1}{125}\\cdot\\frac{1}{x+2}+\\frac{1}{125}\\cdot\\frac{1}{x-3}-\\frac{1}{15}\\frac{1}{(x-3)^3}+C$.\n"}︡
︠f16fd31a-cb00-4b82-bc14-1287fa3e8cdci︠
%md
## Non-repeated Irreducible Quadratics

We know that some polyomials do not have real roots. Such polynomials cannot be factored into (real) linear factors. However, any polynomial can be factored into linear factors and irreducible quadratic factors (in this context, irreducible means these quadratic functions have no real roots - you may recall that such functions have two complex roots, which are complex conjugates).

We now consider partial fraction decomposition for rational functions that have irreducible quadratic factors in the denominator.

Suppose $R(x)$ is a rational function which may be written

$$R(x)=\frac{P(x)}{(a_1x^2+b_1x+c_1)(a_2x^2+b_2x+c_2)\cdots(a_nx^2+b_nx+c_n)}$$

where all the quadratics factors in the denominator are distinct, and the degree of $P(x)$ is less than $2n$ (the degree of the denominator).

Then there exist constants $d_i$ and $e_i$ such that

$$R(x)=\frac{d_1x+e_1}{a_1x^2+b_1x+c_1}+\frac{d_2x+e_2}{a_2x^2+b_2x+c_2}+\cdots+\frac{d_nx+e_n}{a_nx^2+b_nx+c_n}$$

Integrating this is usually a pain. If you're lucky, some of these terms may be fairly simple substitution problems (when the numerator is a constant multiple of the derivative of the denominator). When you integrate, your answer involves a natural logarithm (ln).

If you're not so lucky, then you have to do some algebra, including completing the square. After integrating, the result may involve a natural logarithm and/or an inverse tangent (arctan).

If that sounds bad, that's because it is!
︡9017000d-a6f6-43e9-99c2-c8d7bb61771b︡{"done":true,"md":"## Non-repeated Irreducible Quadratics\n\nWe know that some polyomials do not have real roots. Such polynomials cannot be factored into (real) linear factors. However, any polynomial can be factored into linear factors and irreducible quadratic factors (in this context, irreducible means these quadratic functions have no real roots - you may recall that such functions have two complex roots, which are complex conjugates).\n\nWe now consider partial fraction decomposition for rational functions that have irreducible quadratic factors in the denominator.\n\nSuppose $R(x)$ is a rational function which may be written\n\n$$R(x)=\\frac{P(x)}{(a_1x^2+b_1x+c_1)(a_2x^2+b_2x+c_2)\\cdots(a_nx^2+b_nx+c_n)}$$\n\nwhere all the quadratics factors in the denominator are distinct, and the degree of $P(x)$ is less than $2n$ (the degree of the denominator).\n\nThen there exist constants $d_i$ and $e_i$ such that\n\n$$R(x)=\\frac{d_1x+e_1}{a_1x^2+b_1x+c_1}+\\frac{d_2x+e_2}{a_2x^2+b_2x+c_2}+\\cdots+\\frac{d_nx+e_n}{a_nx^2+b_nx+c_n}$$\n\nIntegrating this is usually a pain. If you're lucky, some of these terms may be fairly simple substitution problems (when the numerator is a constant multiple of the derivative of the denominator). When you integrate, your answer involves a natural logarithm (ln).\n\nIf you're not so lucky, then you have to do some algebra, including completing the square. After integrating, the result may involve a natural logarithm and/or an inverse tangent (arctan).\n\nIf that sounds bad, that's because it is!"}
︠629df213-fbfb-48d3-8d64-34eb10fd54e2i︠
%md
## Example 6

Find $\displaystyle\int\frac{3x^3+4x-1}{(x^2+1)(x^2+x+2)}$.

Note: the quadratics in the denominator are irreducible.
︡a4f2ee2e-0568-4baa-9429-7de2f984b92b︡{"done":true,"md":"## Example 6\n\nFind $\\displaystyle\\int\\frac{3x^3+4x-1}{(x^2+1)(x^2+x+2)}$.\n\nNote: the quadratics in the denominator are irreducible."}
︠4a77b12e-21d9-4e58-84bf-4cadf3768a67︠
f(x)=(3*x^3+4*x-1)/((x^2+1)*(x^2+x+2))  #Don't forget the () around the bottom and the * between factors.
integral(f(x),x)
show(_)
︡9f9655fd-1f56-45cc-a98c-42de72dbdfe0︡{"stdout":"-4/7*sqrt(7)*arctan(1/7*sqrt(7)*(2*x + 1)) + log(x^2 + x + 2) + 1/2*log(x^2 + 1)\n"}︡{"html":"<div align='center'>$\\displaystyle -\\frac{4}{7} \\, \\sqrt{7} \\arctan\\left(\\frac{1}{7} \\, \\sqrt{7} {\\left(2 \\, x + 1\\right)}\\right) + \\log\\left(x^{2} + x + 2\\right) + \\frac{1}{2} \\, \\log\\left(x^{2} + 1\\right)$</div>"}︡
︠a8108af3-4ebd-432e-b638-2d4762a3bd68i︠
%md
Our answer involves three terms: two natural logs and one arctan. Let's use partial fractions to see where these come from.
︡0402826c-f6c4-4096-b437-30e1cab0b2ff︡{"md":"Our answer involves three terms: two natural logs and one arctan. Let's use partial fractions to see where these come from.\n"}︡
︠0759c06c-26d7-449d-9fbb-8093dfabf512︠
f(x).partial_fraction()
show(_)
︡38d1de81-3ef5-4076-915e-79fa2304a8ac︡{"stdout":"(2*x - 1)/(x^2 + x + 2) + x/(x^2 + 1)\n"}︡{"html":"<div align='center'>$\\displaystyle \\frac{2 \\, x - 1}{x^{2} + x + 2} + \\frac{x}{x^{2} + 1}$</div>"}︡
︠b91e246d-2c75-47ee-9d95-05bb197e1279i︠
%md
Integrating the first term gives the arctan and one log:
︡41222472-2cab-49ca-9fe5-f843aa332664︡{"md":"Integrating the first term gives the arctan and one log:\n"}︡
︠36d6ab0f-3f98-4e5e-b03f-b17b42ae1c52︠
integral((2*x - 1)/(x^2 + x + 2),x)
show(_)
︡e66078e2-a8f3-4ca0-954f-b73ec39693ca︡{"stdout":"-4/7*sqrt(7)*arctan(1/7*sqrt(7)*(2*x + 1)) + log(x^2 + x + 2)\n"}︡{"html":"<div align='center'>$\\displaystyle -\\frac{4}{7} \\, \\sqrt{7} \\arctan\\left(\\frac{1}{7} \\, \\sqrt{7} {\\left(2 \\, x + 1\\right)}\\right) + \\log\\left(x^{2} + x + 2\\right)$</div>"}︡
︠4bd112fc-6225-4da9-9f8f-e5124035041ci︠
%md
Integrating the second terms gives the other log:
︡ad11a381-18b6-4e0f-ad68-246f91857252︡{"md":"Integrating the second terms gives the other log:\n"}︡
︠0d9882ca-7191-4d6a-8c5e-d50db74f6c77︠
integral(x/(x^2 + 1),x)
show(_)
︡d420a822-95ef-422c-8b96-1146fe57f312︡{"stdout":"1/2*log(x^2 + 1)\n"}︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{2} \\, \\log\\left(x^{2} + 1\\right)$</div>"}︡
︠d2e812e2-7f8f-43ee-8bfc-a1280b8a6e54i︠
%md
The last piece is a simple substitution. Let $u=x^2+1$. Then $du=2x\, dx$, so $$\int\frac{x}{x^2+1}\,dx=\int\frac{1}{2}\cdot\frac{1}{u}\,du=\frac{1}{2}\ln(|u|)+C=\frac{1}{2}\ln(x^2+1)+C$$

(Note: $x^2+1$ is positive, so you don't need the absolute value.)
︡f65e89fe-99d9-41c6-a1d9-c3bc154b53eb︡{"md":"The last piece is a simple substitution. Let $u=x^2+1$. Then $du=2x\\, dx$, so $$\\int\\frac{x}{x^2+1}\\,dx=\\int\\frac{1}{2}\\cdot\\frac{1}{u}\\,du=\\frac{1}{2}\\ln(|u|)+C=\\frac{1}{2}\\ln(x^2+1)+C$$\n\n(Note: $x^2+1$ is positive, so you don't need the absolute value.)\n"}︡
︠a8914b12-5c67-4a30-b32c-8b5a62f015b8i︠
%md
The first piece is more complicated (as you can see by the result).

Notice, if you tried to substitute $u=x^2+x+2$, then you get $du=2x+1\, dx$, which is not what you have in the numerator. But we can force it into the numerator and then adjust by adding another term:

$$\frac{2x-1}{x^2+x+2}=\frac{2x+1}{x^2+x+2}+\frac{-2}{x^2+x+2}$$

When you integrate the first term, you get $\ln(x^2+x+2)$.
︡ebd6a866-b77e-4fab-a77d-183dc34c447c︡{"done":true,"md":"The first piece is more complicated (as you can see by the result).\n\nNotice, if you tried to substitute $u=x^2+x+2$, then you get $du=2x+1\\, dx$, which is not what you have in the numerator. But we can force it into the numerator and then adjust by adding another term:\n\n$$\\frac{2x-1}{x^2+x+2}=\\frac{2x+1}{x^2+x+2}+\\frac{-2}{x^2+x+2}$$\n\nWhen you integrate the first term, you get $\\ln(x^2+x+2)$."}
︠e452ce48-60de-4f85-b868-e00883be9284i︠
%md
The second term is where the arctan comes from, but the algebra is messy. First, you complete the square in the denominator.

$$\frac{-2}{x^2+x+2}=\frac{-2}{\left(x+\frac{1}{2}\right)^2+\frac{7}{4}}$$

Now you have to factor $7/4$ out of the denominator.

$$\frac{-2}{\left(x+\frac{1}{2}\right)^2+\frac{7}{4}}=\frac{-2}{\frac{7}{4}\left[\left(\frac{2}{\sqrt{7}}x+\frac{1}{\sqrt{7}}\right)^2+1\right]}=\frac{-8}{7}\cdot\frac{1}{\left(\frac{2}{\sqrt{7}}x+\frac{1}{\sqrt{7}}\right)^2+1}$$

Now substitute $u=\frac{2}{\sqrt{7}}x+\frac{1}{\sqrt{7}}$ to get

$$\int\frac{-8}{7}\cdot\frac{1}{\left(\frac{2}{\sqrt{7}}x+\frac{1}{\sqrt{7}}\right)^2+1}\,dx=\frac{-4\sqrt{7}}{7}\int\frac{1}{u^2+1}\,du=\frac{-4\sqrt{7}}{7}\arctan(u)+C=\frac{-4\sqrt{7}}{7}\arctan\left(\frac{2}{\sqrt{7}}x+\frac{1}{\sqrt{7}}\right)+C$$

Aren't you glad to have Sage?
︡c6908b8f-105b-4674-a4a9-d2c3994bd913︡{"done":true,"md":"The second term is where the arctan comes from, but the algebra is messy. First, you complete the square in the denominator.\n\n$$\\frac{-2}{x^2+x+2}=\\frac{-2}{\\left(x+\\frac{1}{2}\\right)^2+\\frac{7}{4}}$$\n\nNow you have to factor $7/4$ out of the denominator.\n\n$$\\frac{-2}{\\left(x+\\frac{1}{2}\\right)^2+\\frac{7}{4}}=\\frac{-2}{\\frac{7}{4}\\left[\\left(\\frac{2}{\\sqrt{7}}x+\\frac{1}{\\sqrt{7}}\\right)^2+1\\right]}=\\frac{-8}{7}\\cdot\\frac{1}{\\left(\\frac{2}{\\sqrt{7}}x+\\frac{1}{\\sqrt{7}}\\right)^2+1}$$\n\nNow substitute $u=\\frac{2}{\\sqrt{7}}x+\\frac{1}{\\sqrt{7}}$ to get\n\n$$\\int\\frac{-8}{7}\\cdot\\frac{1}{\\left(\\frac{2}{\\sqrt{7}}x+\\frac{1}{\\sqrt{7}}\\right)^2+1}\\,dx=\\frac{-4\\sqrt{7}}{7}\\int\\frac{1}{u^2+1}\\,du=\\frac{-4\\sqrt{7}}{7}\\arctan(u)+C=\\frac{-4\\sqrt{7}}{7}\\arctan\\left(\\frac{2}{\\sqrt{7}}x+\\frac{1}{\\sqrt{7}}\\right)+C$$\n\nAren't you glad to have Sage?"}
︠b4f30e24-9ffc-4bc1-b4ce-7bc7b28e5882i︠
%md
## Repeated Irreducible Quadratics

If the irreducible quadratic factors are repeated, you get something similar to what happened with the repeated linear factors.

Suppose $R(x)$ is a rational function which may be written

$$R(x)=\frac{P(x)}{(ax^2+bx+c)^n}$$

where the quadratic is irreducible, and the degree of $P(x)$ is less than $2n$ (the degree of the denominator).

Then there exist constants $d_i$ and $e_i$ such that

$$R(x)=\frac{d_1x+e_1}{ax^2+bx+c}+\frac{d_2x+e_2}{(ax^2+bx+c)^2}+\cdots+\frac{d_nx+e_n}{(ax^2+bx+c)^n}$$
︡9627a1bd-30b7-443e-85a0-b8368d8156bf︡{"done":true,"md":"## Repeated Irreducible Quadratics\n\nIf the irreducible quadratic factors are repeated, you get something similar to what happened with the repeated linear factors.\n\nSuppose $R(x)$ is a rational function which may be written\n\n$$R(x)=\\frac{P(x)}{(ax^2+bx+c)^n}$$\n\nwhere the quadratic is irreducible, and the degree of $P(x)$ is less than $2n$ (the degree of the denominator).\n\nThen there exist constants $d_i$ and $e_i$ such that\n\n$$R(x)=\\frac{d_1x+e_1}{ax^2+bx+c}+\\frac{d_2x+e_2}{(ax^2+bx+c)^2}+\\cdots+\\frac{d_nx+e_n}{(ax^2+bx+c)^n}$$"}
︠7253267b-f445-4d53-8859-5813940c3179i︠
%md
## Example 7

Find $\displaystyle\int\frac{x^3+2}{(x^2+1)^2}$.
︡17867815-4d66-4bb0-bf21-37bf71d280a9︡{"done":true,"md":"## Example 7\n\nFind $\\displaystyle\\int\\frac{x^3+2}{(x^2+1)^2}$."}
︠ac463f10-eddb-477a-858c-45b9863fe64c︠
f(x)=(x^3+2)/(x^2+1)^2
integral(f(x),x)
show(_)
︡f028c310-6d4a-4ce7-846f-298cb6eecd89︡{"stdout":"1/2*(2*x + 1)/(x^2 + 1) + arctan(x) + 1/2*log(x^2 + 1)\n"}︡{"html":"<div align='center'>$\\displaystyle \\frac{2 \\, x + 1}{2 \\, {\\left(x^{2} + 1\\right)}} + \\arctan\\left(x\\right) + \\frac{1}{2} \\, \\log\\left(x^{2} + 1\\right)$</div>"}︡
︠a5b04dd3-126a-4f4c-b7b8-9b3fb8b20255︠
f(x).partial_fraction()
show(_)
︡3861e813-9c19-4fe6-9eaa-618a23f8e996︡{"stdout":"x/(x^2 + 1) - (x - 2)/(x^2 + 1)^2\n"}︡{"html":"<div align='center'>$\\displaystyle \\frac{x}{x^{2} + 1} - \\frac{x - 2}{{\\left(x^{2} + 1\\right)}^{2}}$</div>"}︡
︠82dede0f-0884-4f96-a315-9bc2fc443722︠
integral(x/(x^2 + 1),x)
show(_)
︡34c3d5e0-4778-4173-ad89-b1127e844309︡{"stdout":"1/2*log(x^2 + 1)\n"}︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{2} \\, \\log\\left(x^{2} + 1\\right)$</div>"}︡
︠ee0c5f9d-0427-40b0-9d4a-366f8d25b385︠
integral(-(x - 2)/(x^2 + 1)^2,x)
show(_)
︡d847e7c7-34ce-42d3-a44a-3ebfa600affc︡{"stdout":"1/2*(2*x + 1)/(x^2 + 1) + arctan(x)\n"}︡{"html":"<div align='center'>$\\displaystyle \\frac{2 \\, x + 1}{2 \\, {\\left(x^{2} + 1\\right)}} + \\arctan\\left(x\\right)$</div>"}︡
︠dc0173fd-b2ca-4e09-b5c4-91e540d4813di︠
%md
This last integral can be computed using trig substitution. I'll spare you the gory details.
︡d8b20639-0059-4332-ac92-7b7437f85359︡{"md":"This last integral can be computed using trig substitution. I'll spare you the gory details.\n"}︡
︠72305103-6cf1-41bb-abbd-4be8b5843658i︠
%md
## What if the degree of the denominator is not greater than the degree of the numerator?

We have only considered examples where the degree of the numerator is less than the degree of the denominator. If this is not the case, then you must first use long division of polynomials to rewrite your rational function as a polynomial plus a new rational function for which the degree of the numerator is smaller.

In general, if $R(x)=\frac{P(x)}{Q(x)}$ and the degree of $P$ $\ge$ degree of $Q$, then there exist polynomials $S$ and $T$, with degree of $T$ < degree of $Q$, such that $$R(x)=S(x)+\frac{T(x)}{Q(x)}$$

Integrating $S(x)$ is easy (it's a polynomial), and integrating $\frac{T(x)}{Q(x)}$ is accomplished as above.
︡6be059fb-7c65-41f8-a69e-3ebe9c845c86︡{"done":true,"md":"## What if the degree of the denominator is not greater than the degree of the numerator?\n\nWe have only considered examples where the degree of the numerator is less than the degree of the denominator. If this is not the case, then you must first use long division of polynomials to rewrite your rational function as a polynomial plus a new rational function for which the degree of the numerator is smaller.\n\nIn general, if $R(x)=\\frac{P(x)}{Q(x)}$ and the degree of $P$ $\\ge$ degree of $Q$, then there exist polynomials $S$ and $T$, with degree of $T$ < degree of $Q$, such that $$R(x)=S(x)+\\frac{T(x)}{Q(x)}$$\n\nIntegrating $S(x)$ is easy (it's a polynomial), and integrating $\\frac{T(x)}{Q(x)}$ is accomplished as above."}
︠eac4a387-3154-4f91-9a2b-9194e6a9358ci︠
%md
## Example 8

Find $\displaystyle\int\frac{x^3+x+1}{x-2}\,dx$.

First, we divide to find that $$\frac{x^3+x+1}{x-2}=x^2+2x+5+\frac{11}{x-2} $$

Thus, $$\int\frac{x^3+x+1}{x-2}\,dx=\int x^2+2x+5+\frac{11}{x-2}\,dx=\frac{1}{3}x^3+x^2+5x+11\ln(|x-2|)+C$$
︡cb1399e0-987b-4985-9b06-e1e75f8393d5︡{"done":true,"md":"## Example 8\n\nFind $\\displaystyle\\int\\frac{x^3+x+1}{x-2}\\,dx$.\n\nFirst, we divide to find that $$\\frac{x^3+x+1}{x-2}=x^2+2x+5+\\frac{11}{x-2} $$\n\nThus, $$\\int\\frac{x^3+x+1}{x-2}\\,dx=\\int x^2+2x+5+\\frac{11}{x-2}\\,dx=\\frac{1}{3}x^3+x^2+5x+11\\ln(|x-2|)+C$$"}
︠0ddf9233-0423-47d5-8b28-3d7cc10a9787i︠
%md
There is a command in Sage to find the quotient and remainder from polynomial long division, but it's somewhat cumbersome to use. Fortunately, we don't have to worry about this, since the partial_fraction command will deal with this situation with no problems.
︡006a2175-e6b7-4e1e-8ec7-9c90188d4ab4︡{"md":"There is a command in Sage to find the quotient and remainder from polynomial long division, but it's somewhat cumbersome to use. Fortunately, we don't have to worry about this, since the partial_fraction command will deal with this situation with no problems.\n"}︡
︠5a1688e5-0e44-4f5b-b6d9-7565d5b21b5b︠
f(x)=(x^3+x+1)/(x-2)
f(x).partial_fraction()
show(_)
︡fe541c37-0872-4dc9-80bb-dc0243562927︡{"stdout":"x^2 + 2*x + 11/(x - 2) + 5\n"}︡{"html":"<div align='center'>$\\displaystyle x^{2} + 2 \\, x + \\frac{11}{x - 2} + 5$</div>"}︡
︠88784749-bfc6-4e4d-84df-e769b5aae44fs︠
integral(x^2 + 2*x + 5,x)
integral(11/(x - 2),x)
︡df47758d-081b-4aab-aa06-a389d54b849c︡{"stdout":"1/3*x^3 + x^2 + 5*x\n"}︡{"stdout":"11*log(x - 2)\n"}︡{"done":true}︡
︠0352b20f-2eba-449a-95d4-ad2df461d666︠









