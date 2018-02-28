︠dfa89eea-130a-4532-a066-25d3f37e2e98ai︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡edebe1cf-b97c-49cb-9419-23fdbeb7a3c3︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠608884e6-ada5-4403-a421-5ef257e3c8f5i︠
%md
### Prerequisites:

* Intro to Sage
* Graphing and Solving Equations
* Differentiation
* Function Analysis, Part 1
︡e83a3da6-fe7f-4dfb-9fe3-39a62ace9e33︡{"done":true,"md":"### Prerequisites:\n\n* Intro to Sage\n* Graphing and Solving Equations\n* Differentiation\n* Function Analysis, Part 1"}
︠694b0a5a-97a4-4f98-83b6-4f7140c1a651i︠
%md
# Function Analysis, Part 2

We continue to try to understand the key features of a function using calculus, rather than depending on a graph alone. In part 1, we only had functions with domain $\mathbb{R}$. In this lab, we'll consider functions where the function (or its derivative) has domain restrictions.
︡e41fdf67-b46b-4f86-ace0-f4491cc93baf︡{"done":true,"md":"# Function Analysis, Part 2\n\nWe continue to try to understand the key features of a function using calculus, rather than depending on a graph alone. In part 1, we only had functions with domain $\\mathbb{R}$. In this lab, we'll consider functions where the function (or its derivative) has domain restrictions."}
︠f13d2573-d5ef-46d1-906f-d788d0bd2ed5i︠
%md
## Example 1

Analyze and graph $\displaystyle f(x)=\frac{x^3 - x^2 - 14x + 24}{x^4 + 9x^3 + 18x^2 - 32x - 96}$.
︡b85be410-d4ee-442d-a204-12cd5d1e2eed︡{"done":true,"md":"## Example 1\n\nAnalyze and graph $\\displaystyle f(x)=\\frac{x^3 - x^2 - 14x + 24}{x^4 + 9x^3 + 18x^2 - 32x - 96}$."}
︠32ddec80-1783-4472-99e7-8ac9e3e6322ci︠
%md
**Step 1** Find the domain. Discuss vertical asymptotes and holes.

For a rational function, the domain is all real numbers such that the denominator is not $0$. So let's find out when the denominator is $0$.
︡76d71a64-c369-4f64-9584-0076d480faa7︡{"done":true,"md":"**Step 1** Find the domain. Discuss vertical asymptotes and holes.\n\nFor a rational function, the domain is all real numbers such that the denominator is not $0$. So let's find out when the denominator is $0$."}
︠8c664a4a-22de-48c6-b9cf-d9c14d61a4a8︠
solve(x^4 + 9*x^3 + 18*x^2 - 32*x - 96==0,x)
︡faed359e-0c4a-471c-8396-40211d6b340c︡{"stdout":"[x == -3, x == 2, x == -4]"}︡{"stdout":"\n"}︡
︠c7367b0c-5343-4f79-8c4e-05d2458aa6abi︠
%md
The denominator is $0$ when $x=-4$, $x=-3$, or $x=2$. So the domain is all real numbers except $-4$, $-3$, and $2$, in other words, $\mathbb{R}\setminus\{-4,-3,2\}$.

We need to determine what happens near these holes in the domain, so we will take limits.
︡d2fcf411-7a70-4569-8103-684fa75258ba︡{"md":"The denominator is $0$ when $x=-4$, $x=-3$, or $x=2$. So the domain is all real numbers except $-4$, $-3$, and $2$, in other words, $\\mathbb{R}\\setminus\\{-4,-3,2\\}$.\n\nWe need to determine what happens near these holes in the domain, so we will take limits.\n"}︡
︠0395aef0-4b87-40e3-a80e-1b6ee7df9bc5︠
f(x)=(x^3 - x^2 - 14*x + 24)/(x^4 + 9*x^3 + 18*x^2 - 32*x - 96)
limit(f(x),x=-4)
limit(f(x),x=-3)
limit(f(x),x=2)
︡9b35a4a5-50fe-4b73-83d9-f469f1bc5e62︡{"stdout":"Infinity"}︡{"stdout":"\n"}︡{"stdout":"Infinity\n"}︡{"stdout":"-1/30\n"}︡
︠05e3ad92-66cb-4e3f-bc4e-4f59551c1aabi︠
%md
Based on these limits, we know that $f$ has vertical asymptotes at $x=-4$ and $x=-3$, and $f$ has a hole at the point $\left(2,-\frac{1}{30}\right)$.
︡cd02fe57-a493-4e38-a46d-8430c0f55890︡{"md":"Based on these limits, we know that $f$ has vertical asymptotes at $x=-4$ and $x=-3$, and $f$ has a hole at the point $\\left(2,-\\frac{1}{30}\\right)$.\n"}︡
︠b22b6ccc-6f6a-4e40-a82f-5babad4ffe62i︠

%md
**Step 2** Find the derivative.
︡40ff5094-e2dc-474b-9a6f-a5a6dd7cf263︡{"md":"**Step 2** Find the derivative."}︡
︠fa00b5dd-2b62-46f6-bdd3-8b846aa92f4a︠
df(x)=derivative(f,x);show(df(x))
︡08b2c74c-122e-4a5f-9228-e760a93835ad︡{"html":"<div align='center'>$\\displaystyle -\\frac{{\\left(4 \\, x^{3} + 27 \\, x^{2} + 36 \\, x - 32\\right)} {\\left(x^{3} - x^{2} - 14 \\, x + 24\\right)}}{{\\left(x^{4} + 9 \\, x^{3} + 18 \\, x^{2} - 32 \\, x - 96\\right)}^{2}} + \\frac{3 \\, x^{2} - 2 \\, x - 14}{x^{4} + 9 \\, x^{3} + 18 \\, x^{2} - 32 \\, x - 96}$</div>"}︡
︠275f3f3d-5abb-45b4-8381-6ec70ecf0924i︠
%md
**Step 3** Find the critical points of $f$.

We need to know where the derivative $f'$ is $0$ or undefined. Notice that the derivative has the same denominator as $f$, so it has the same gaps in the domain ($-4$, $-3$, and $2$).

Now let's find where the derivative is $0$.
︡8ba6d1da-91d4-4e11-9aaf-f845267fee6d︡{"md":"**Step 3** Find the critical points of $f$.\n\nWe need to know where the derivative $f'$ is $0$ or undefined. Notice that the derivative has the same denominator as $f$, so it has the same gaps in the domain ($-4$, $-3$, and $2$).\n\nNow let's find where the derivative is $0$.\n"}︡
︠593148d2-642a-4752-b6f1-15fa7dd7b86a︠
solve(df(x)==0,x)
︡faa00dc9-6d5f-4313-8601-99f0407fc1f5︡{"stdout":"[x == -sqrt(42) + 3, x == sqrt(42) + 3]"}︡{"stdout":"\n"}︡
︠3380e42e-b93e-460c-8763-6963cb42e618︠
N(-sqrt(42) + 3)
N(sqrt(42) + 3)
︡0c6d4557-84c0-4ad4-8bf2-1ea507c788d3︡{"stdout":"-3.48074069840786\n"}︡{"stdout":"9.48074069840786\n"}︡
︠40e0a356-efaa-446b-8460-df58ee0f4c1bi︠
%md
So $f'$ is $0$ at $x\approx-3.48$ and $x\approx9.48$.
︡6c767f9e-9162-4309-9ee4-127e1d668f4a︡{"md":"So $f'$ is $0$ at $x\\approx-3.48$ and $x\\approx9.48$.\n"}︡
︠02b70ea3-9418-45ff-9f46-ec42fe5544cei︠
%md
**Step 4** See if the sign of $f'$ actually changes at the critical points of $f$, and determine whether $f$ has a local maximum or local minimum at these points.

First, we'll check x-values near $-3.48$.
︡b7c8b04d-0e58-49fe-8e4c-6efbf83df8a3︡︡{"done":true,"md":"**Step 4** See if the sign of $f'$ actually changes at the critical points of $f$, and determine whether $f$ has a local maximum or local minimum at these points.\n\nFirst, we'll check x-values near $-3.48$."}
︠2e3da9fe-4b52-4b7f-a8dc-07ec266e76c9︠
df(-3.5)
df(-3.4)
︡e9aa343b-c0fc-4a57-9f13-bf48e80dd5fb︡{"stdout":"-4.00000000000000\n"}︡{"stdout":"18.0555555555558\n"}︡
︠38f388d0-d078-4360-b8b4-2e9f5f57b0aci︠
%md
Since $f'$ changes sign from negative to positive, $f$ has a local min at $x\approx -3.48$.

<br>

Now check x-values near $9.48$.
︡2e485f0c-c179-4219-a985-4a49b2e544ff︡{"md":"Since $f'$ changes sign from negative to positive, $f$ has a local min at $x\\approx -3.48$.\n\n<br>\n\nNow check x-values near $9.48$.\n"}︡
︠f5703969-d3b8-4a1f-8927-b208435c32ca︠
df(9)
df(10)
︡a0e8e214-fe50-4be0-be8e-4685dd260e6e︡{"stdout":"1/4056\n"}︡{"stdout":"-1/4732\n"}︡
︠3f4ce772-d500-417e-868a-d5c61ab2cc48i︠
%md
Since $f'$ changes sign from positive to negative, $f$ has a local max at $x\approx9.48$.
︡2bfa0181-9f37-4f6a-99ba-d2078280e7f9︡{"md":"Since $f'$ changes sign from positive to negative, $f$ has a local max at $x\\approx9.48$.\n"}︡
︠dad24309-c584-4c1e-8d5f-75b40595e76ci︠

%md
**Step 5** Find $f''$.
︡576c04ff-ac50-496e-b6d2-2aa9b529b57a︡{"md":"**Step 5** Find $f''$.\n"}︡
︠a9d83cb8-694b-4d58-a6d9-20f223af0c04︠
d2f(x)=derivative(f,x,2);show(d2f(x))
︡f2686218-6c61-401e-92f1-087e9fe91c9b︡{"html":"<div align='center'>$\\displaystyle \\frac{2 \\, {\\left(4 \\, x^{3} + 27 \\, x^{2} + 36 \\, x - 32\\right)}^{2} {\\left(x^{3} - x^{2} - 14 \\, x + 24\\right)}}{{\\left(x^{4} + 9 \\, x^{3} + 18 \\, x^{2} - 32 \\, x - 96\\right)}^{3}} - \\frac{2 \\, {\\left(4 \\, x^{3} + 27 \\, x^{2} + 36 \\, x - 32\\right)} {\\left(3 \\, x^{2} - 2 \\, x - 14\\right)}}{{\\left(x^{4} + 9 \\, x^{3} + 18 \\, x^{2} - 32 \\, x - 96\\right)}^{2}} - \\frac{6 \\, {\\left(x^{3} - x^{2} - 14 \\, x + 24\\right)} {\\left(2 \\, x^{2} + 9 \\, x + 6\\right)}}{{\\left(x^{4} + 9 \\, x^{3} + 18 \\, x^{2} - 32 \\, x - 96\\right)}^{2}} + \\frac{2 \\, {\\left(3 \\, x - 1\\right)}}{x^{4} + 9 \\, x^{3} + 18 \\, x^{2} - 32 \\, x - 96}$</div>"}︡
︠1541e898-e462-44dc-b42e-12273d412f2di︠
%md
**Step 6** Find the critical points of $f'$.

Once again, $f''$ is undefined at the same x-values as $f'$ and $f$ ($-4$, $-3$, and $2$).

Now we'll find where $f''$ is $0$.
︡bbcc9260-6893-4f39-a6b4-8502afb58d4a︡{"md":"**Step 6** Find the critical points of $f'$.\n\nOnce again, $f''$ is undefined at the same x-values as $f'$ and $f$ ($-4$, $-3$, and $2$).\n\nNow we'll find where $f''$ is $0$.\n"}︡
︠8c55b930-7a7c-4cab-af47-d18cb6c90853︠
solve(d2f(x)==0,x)
︡97174d4e-8ff9-423c-b940-7d263efe4e5e︡{"stdout":"[x == 1/294*294^(2/3)*(21*I*sqrt(3) - 21) - 1/2*294^(1/3)*(I*sqrt(3) + 1) + 3, x == 1/294*294^(2/3)*(-21*I*sqrt(3) - 21) - 1/2*294^(1/3)*(-I*sqrt(3) + 1) + 3, x == 1/7*294^(2/3) + 294^(1/3) + 3]\n"}︡
︠414c1a31-c5d2-4e9b-b03c-93b5ba556609︠
N(1/294*294^(2/3)*(21*I*sqrt(3) - 21) - 1/2*294^(1/3)*(I*sqrt(3) + 1) + 3)
N(1/294*294^(2/3)*(-21*I*sqrt(3) - 21) - 1/2*294^(1/3)*(-I*sqrt(3) + 1) + 3)
N(1/7*294^(2/3) + 294^(1/3) + 3)
︡cf1551d0-3f0e-4224-9423-ac7bd6aa82de︡{"stdout":"-3.48287967940368 - 0.288421242066844*I\n"}︡{"stdout":"-3.48287967940368 + 0.288421242066844*I\n"}︡{"stdout":"15.9657593588074\n"}︡
︠de251928-4813-4cf7-96da-1ab605593fe4i︠
%md
We have one real solution, so $f''$ is $0$ at $x\approx15.97$.
︡63f87e9b-0b80-496d-977c-0e27d6bbc1bf︡{"md":"We have one real solution, so $f''$ is $0$ at $x\\approx15.97$.\n"}︡
︠1b439818-4edd-4193-bf4f-fe57f4864d82i︠
%md
**Step 7** See if the sign of $f''$ actually changes at the critical points of $f'$, and determine whether $f$ has an inflection point at these points.

Check the sign of $f''$ near $x=15.97$.
︡0ed25f91-9bea-436e-892a-44a9b4fa3e01︡︡{"done":true,"md":"**Step 7** See if the sign of $f''$ actually changes at the critical points of $f'$, and determine whether $f$ has an inflection point at these points.\n\nCheck the sign of $f''$ near $x=15.97$."}
︠9a870f4a-39e4-4ca1-bc82-fa49c468ead9︠
d2f(15)
d2f(16)
︡760b800e-201a-4c23-a148-f07775421e70︡{"stdout":"-55/3333474\n"}︡{"stdout":"13/27436000\n"}︡
︠58484d55-1592-46b4-a6d7-c7501d92b8d6i︠
%md
Since $f''$ changes sign from negative to postive, $f$ changes from concave down to concave up at $x\approx15.97$, so $f$ has an inflection point here.
︡39249de0-048a-420b-967f-fbc79d3560cc︡︡{"done":true,"md":"Since $f''$ changes sign from negative to postive, $f$ changes from concave down to concave up at $x\\approx15.97$, so $f$ has an inflection point here."}
︠728280cf-effe-46a1-bd73-ecdab1cc2a96i︠
%md
**Step 8** Find the x- and y-intercepts.
︡6dd5954d-4a5d-43a8-a9e4-0d71914bc940︡{"md":"**Step 8** Find the x- and y-intercepts.\n"}︡
︠8b155e10-1723-435f-a10e-92d01c857969︠
solve(f(x)==0,x)  #find x-intercepts
︡d8171390-322e-4c20-b5ff-713110319b08︡{"stdout":"[x == 3]\n"}︡
︠9bf7f0eb-e796-43ed-ac8a-550e819f4e60︠
f(0)  #find y-intercept
︡59a1d508-248d-45d4-b61a-d39296a4acd0︡{"stdout":"-1/4\n"}︡
︠4b111aed-d3b7-4fad-9444-a92e2064d3efi︠
%md
**Step 9** Determine the end behavior.


︡ad5c3446-1dfe-475f-9be8-324328cbc3c4︡{"md":"**Step 9** Determine the end behavior.\n\n\n"}︡
︠fe578da0-db39-473e-a19a-115ff58f7e45︠
limit(f(x),x=-Infinity);limit(f(x),x=+Infinity)
︡b262cb88-65ba-412e-8f96-fdadd2f4fbf6︡{"stdout":"0\n0\n"}︡
︠fdde280a-782e-44c9-aac9-d511bf324305i︠
%md
So the x-axis is a horizontal asymptote for this function.
︡dafba9e2-d929-42dc-9236-226f558265ed︡{"md":"So the x-axis is a horizontal asymptote for this function.\n"}︡
︠b8b6428c-2385-4170-afd9-ef6b6dc7e2f3i︠
%md
**Step 10** Make an informed graph. Mark any $x$- and $y$-intercepts, relative maxima and minima, and inflection points.

First, we'll calculate the function values at the critical points.

︡9cd1708b-ff4e-4a93-b189-f20bf52fcca7︡{"done":true,"md":"**Step 10** Make an informed graph. Mark any $x$- and $y$-intercepts, relative maxima and minima, and inflection points.\n\nFirst, we'll calculate the function values at the critical points."}
︠75deb897-2b55-48b1-8fb4-7e4a7e39a27a︠
f(-3.48074069840786);f(9.48074069840786);f(15.9657593588074)
︡30ed2466-98e4-43bd-b3c6-f393f622bfaa︡{"stdout":"25.9614813968190\n0.0385186031842795\n0.0342406411926452\n"}︡
︠bd468f28-1905-4717-94de-25b421a542dei︠
%md
So, we'll need a graph that covers these three points. We also need to remember the hole, vertical asymptotes, and intercepts.

Here is a first attempt:
︡f5d0fd30-943b-4497-9733-1736905a71b8︡︡{"done":true,"md":"So, we'll need a graph that covers these three points. We also need to remember the hole, vertical asymptotes, and intercepts.\n\nHere is a first attempt:"}
︠be1f2906-0fb2-407a-bada-8ba9056d9871s︠
f(x)=(x^3 - x^2 - 14*x + 24)/(x^4 + 9*x^3 + 18*x^2 - 32*x - 96)
plot(f,xmin=-5,xmax=20,ymin=-10,ymax=30)
︡7a428496-a214-442f-bc3b-376ff742ec19︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/31777/tmp_rwee_i.svg","show":true,"text":null,"uuid":"db0fe2d5-bc40-48fd-a26c-9e21477c3d4f"},"once":false}︡{"done":true}︡
︠b5c9956e-6854-4aa8-93bb-cf5fa012c6d2i︠
%md
So this picture is not very clear. We need to make xmin smaller so we can see more of the branch on the left. It would also be nice to extend the range on the y-axis. The vertical asymptotes at $x=-4$ and $x=-3$ are marked with solid lines, but it would be nice to make them dashed instead. We also should mark the hole at $x=2$.

We can see the local minimum at $x\approx-3.48$, but the local maximum at $x\approx9.48$ is not clear from the graph. We also can't see the inflection point at $x\approx15.97$. The x-intercept at $x=3$ is also not obvious.

If we want to see all these features, we'll need a really big picture (which won't fit on our screen).

So we will have to produce a second graph that reveals the local max, inflection point, and x-intercept.

Here's another graph of the overall picture, and then we'll do a second plot that zooms in on the positive x-axis.
︡1a710d4c-ba12-4474-a721-4e71de8cc5f4︡︡{"done":true,"md":"So this picture is not very clear. We need to make xmin smaller so we can see more of the branch on the left. It would also be nice to extend the range on the y-axis. The vertical asymptotes at $x=-4$ and $x=-3$ are marked with solid lines, but it would be nice to make them dashed instead. We also should mark the hole at $x=2$.\n\nWe can see the local minimum at $x\\approx-3.48$, but the local maximum at $x\\approx9.48$ is not clear from the graph. We also can't see the inflection point at $x\\approx15.97$. The x-intercept at $x=3$ is also not obvious.\n\nIf we want to see all these features, we'll need a really big picture (which won't fit on our screen).\n\nSo we will have to produce a second graph that reveals the local max, inflection point, and x-intercept.\n\nHere's another graph of the overall picture, and then we'll do a second plot that zooms in on the positive x-axis."}
︠e1a3fb80-9ba1-47ef-8f0e-6c998040a8ees︠
plot(f,xmin=-15,xmax=20,ymin=-20,ymax=40,detect_poles=True,figsize=5)+point((2,-1/30),size=15,faceted=True,color='white',markeredgecolor='blue')+line([(-4,-25),(-4,45)],linestyle='dashed')+line([(-3,-25),(-3,45)],linestyle='dashed')+point([(-3.48,25.96),(9.48,0.0385),(15.97,0.0342),(3,0)],color='black',size=20)
︡75fc330a-3ad2-4b70-9b8e-28e19bae52ce︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/31777/tmp_y_f4jP.svg","show":true,"text":null,"uuid":"3bb05651-0d24-41b2-bb3a-da0af6a27967"},"once":false}︡{"done":true}︡
︠b6e281f5-e65b-47f3-970e-f45a3d5e93d0i︠
%md
This is a good picture of the overall shape. **Note: I do not expect you to add dashed lines for the asymptotes or open circles for the holes.**

<br>

Here is a close up so we can see the local max and inflection point:
︡fc08b1cd-4923-47eb-8e11-f4978b7b31e2︡︡{"done":true,"md":"This is a good picture of the overall shape. **Note: I do not expect you to add dashed lines for the asymptotes or open circles for the holes.**\n\n<br>\n\nHere is a close up so we can see the local max and inflection point:"}
︠a0521aed-0046-4a76-a292-9c3c70fc327ds︠
plot(f,xmin=0,xmax=40,ymin=-.05,ymax=.05)+point((2,-1/30),size=15,faceted=True,color='white',markeredgecolor='blue')+point([(9.48,0.0385),(15.97,0.0342),(3,0)],color='black',size=20)
︡cc2eaf8a-66fe-466e-abb0-8106a666fc68︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/31777/tmp_C6NP7Y.svg","show":true,"text":null,"uuid":"f04e6fa3-5ca2-4592-a320-7248461bbf83"},"once":false}︡{"done":true}︡
︠d6f33a43-493a-4f34-9744-63d45d7c57aai︠
%md
This is another good example of why we bother analyzing the function with calculus. A single graph may not show all the important features of a function.
︡957edff6-3194-4751-a055-b4ece4255f83︡{"md":"This is another good example of why we bother analyzing the function with calculus. A single graph may not show all the important features of a function.\n"}︡
︠f3332927-80e0-47ff-8823-cb02d4db5ae8i︠
%md
**Step 11** Discuss absolute max/min, increasing/decreasing, concave up/down.

There is no absolute max or min.

The function is increasing on $[-3.4807,-3)$, $(-3,2)$, and $(2,9.4807]$.

The function is decreasing on $(-\infty,-4)$, $(-4,-3.4807]$, and $[9.4807,\infty)$.

The function is concave up on $(-4,-3)$ and $[15.9658,\infty)$.

The function is concave down on $(-\infty,-4)$, $(-3,2)$, and $(2,15.9658]$.

<br>

Comment: Notice where all the endpoints come from: critical points and domain restrictions (don't forget the hole at $x=2$).
︡8f811b50-fd36-4499-9f56-c9cfd306adda︡{"md":"**Step 11** Discuss absolute max/min, increasing/decreasing, concave up/down.\n\nThere is no absolute max or min.\n\nThe function is increasing on $[-3.4807,-3)$, $(-3,2)$, and $(2,9.4807]$.\n\nThe function is decreasing on $(-\\infty,-4)$, $(-4,-3.4807]$, and $[9.4807,\\infty)$.\n\nThe function is concave up on $(-4,-3)$ and $[15.9658,\\infty)$.\n\nThe function is concave down on $(-\\infty,-4)$, $(-3,2)$, and $(2,15.9658]$.\n\n<br>\n\nComment: Notice where all the endpoints come from: critical points and domain restrictions (don't forget the hole at $x=2$).\n"}︡
︠484710e3-86ad-4b1a-be80-150949a85528i︠
%md
## Example 2

Analyze and graph $\displaystyle f(x)=\frac{\ln(x)}{x}$.
︡97f3cb94-5da6-47e9-a067-1199322e9682︡{"done":true,"md":"## Example 2\n\nAnalyze and graph $\\displaystyle f(x)=\\frac{\\ln(x)}{x}$."}
︠2b9a551a-8e3a-4b1f-9758-b13fc64f5ad3i︠
%md
**Step 1** Find the domain. Discuss vertical asymptotes and holes.

The domain of $f$ is $(0,\infty)$.

There is a vertical asymptote or hole at $x=0$. We'll use a limit to determine which it is.
︡2676071b-1ae0-4a99-b878-4f6594e8cb86︡{"done":true,"md":"**Step 1** Find the domain. Discuss vertical asymptotes and holes.\n\nThe domain of $f$ is $(0,\\infty)$.\n\nThere is a vertical asymptote or hole at $x=0$. We'll use a limit to determine which it is."}
︠490899e1-9316-4384-9bd6-ee95996b722bs︠
f(x)=ln(x)/x
limit(f(x),x=0)
︡0e07e085-1b87-4865-879c-362f4293824d︡{"stdout":"-Infinity"}︡{"stdout":"\n"}︡{"done":true}︡
︠f346605b-3279-4794-a38a-5b3355f1a288i︠
%md
Since the limit is infinite, there is a vertical asymptote at $x=0$.

︡0f147c60-a39b-4fd0-bb35-1dbfca23157d︡{"done":true,"md":"Since the limit is infinite, there is a vertical asymptote at $x=0$."}
︠7ebaddef-f292-4e01-aaa8-6a8ea245adf0i︠
%md
**Step 2** Find the derivative.
︡77a68572-4ba8-4867-af54-3a75af78d175︡{"done":true,"md":"**Step 2** Find the derivative."}
︠36f0fd32-8370-4857-bce9-33c840c24d08s︠
df(x)=derivative(f,x);show(df(x))
︡d4e4be5a-bed5-493c-bd85-5184a10b4fcb︡{"html":"<div align='center'>$\\displaystyle -\\frac{\\log\\left(x\\right)}{x^{2}} + \\frac{1}{x^{2}}$</div>"}︡{"done":true}︡
︠04efb2de-722e-4bd4-88d6-6b505d99c3f3i︠
%md
**Step 3** Find the critical points of $f$.

The derivative $f'$ has the same domain as the original $f$, so we just need to find where the derivative is 0.
︡e17f565b-eccb-438e-a288-fde8b813bc32︡{"done":true,"md":"**Step 3** Find the critical points of $f$.\n\nThe derivative $f'$ has the same domain as the original $f$, so we just need to find where the derivative is 0."}
︠41024713-47b3-4af4-a5c1-d37fcd4005a7︠
solve(df(x)==0,x)
︡594762f3-8b57-4354-8073-85763221f2f6︡{"stdout":"[e == x]"}︡{"stdout":"\n"}︡
︠6def573d-1ef4-424c-a67e-755e13a33ea6i︠
%md
Our one critical point is $x=e$.
︡d00d7f64-0c57-4d78-a440-8b30c4fabaf3︡{"done":true,"md":"Our one critical point is $x=e$."}
︠4c2ad976-70ce-4250-8188-58b1b2bb857fi︠
%md
**Step 4** See if the sign of $f'$ actually changes at the critical points of $f$, and determine whether $f$ has a local maximum or local minimum at these points.
︡0fba6973-2cee-4135-9ad9-8d23f6a4e48a︡{"done":true,"md":"**Step 4** See if the sign of $f'$ actually changes at the critical points of $f$, and determine whether $f$ has a local maximum or local minimum at these points."}
︠0eba0586-2189-44fe-bc81-f899119998d3s︠
df(2.5);df(3.0)
︡57f2ee98-2f52-44ea-af05-41c6475691a2︡{"stdout":"0.0133934829001352\n-0.0109569209631233\n"}︡{"done":true}︡
︠95fb6347-2ebe-4e61-82fe-4e22869148d6i︠
%md
Since $f'$ changes sign from positive to negative, $f$ has a local max at $x=e$.
︡463ebc06-fdeb-4654-895d-ecb09e27e745︡{"done":true,"md":"Since $f'$ changes sign from positive to negative, $f$ has a local max at $x=e$."}
︠64f879d8-f20c-4cb0-8579-7cbe0652f6a1i︠
%md
**Step 5** Find $f''$.
︡15ef70ba-ef99-4d23-a81c-09a27be65c84︡{"done":true,"md":"**Step 5** Find $f''$."}
︠00e47b35-000b-4a00-8c31-cd185751d33bs︠
d2f(x)=derivative(f,x,2);show(d2f(x))
︡bded4793-07d9-41e4-8fb8-3744bfbabd5e︡{"html":"<div align='center'>$\\displaystyle \\frac{2 \\, \\log\\left(x\\right)}{x^{3}} - \\frac{3}{x^{3}}$</div>"}︡{"done":true}︡
︠de841d22-c6ae-4603-8680-0a62f2c576a3i︠
%md
**Step 6** Find the critical points of $f'$.

$f''$ has the same domain as $f'$ and $f$, so we need to find where $f''$ is 0.
︡20b1f6c9-3e63-4f1d-ad98-119f80dbe461︡{"done":true,"md":"**Step 6** Find the critical points of $f'$.\n\n$f''$ has the same domain as $f'$ and $f$, so we need to find where $f''$ is 0."}
︠7b416476-54cc-4c90-b1ec-650ffba2b626︠
solve(d2f(x)==0,x)
︡cc09dbc5-4380-49ed-82b6-39d42f278a0f︡{"stdout":"[x == e^(3/2)]\n"}︡
︠dedc42a7-01b4-4e48-a9ec-617109d7e126︠
N(e^(3/2))
︡9fcf4883-0874-406d-a146-92fad896ca5b︡{"stdout":"4.48168907033806\n"}︡
︠1b3f3f6e-dbe9-47d5-b20a-eecbbac60a70i︠
%md
We have $f''(x)=0$ at $x\approx 4.48$.
︡48539b14-3733-4784-998f-82473b7229b7︡{"done":true,"md":"We have $f''(x)=0$ at $x\\approx 4.48$."}
︠a36fa3c2-9362-474f-9c6f-6e57306dfb0di︠
%md
**Step 7** See if the sign of $f''$ actually changes at the critical points of $f'$, and determine whether $f$ has an inflection point at these points.
︡7153b66b-bb13-488a-a2ae-4408c1b050d3︡{"done":true,"md":"**Step 7** See if the sign of $f''$ actually changes at the critical points of $f'$, and determine whether $f$ has an inflection point at these points."}
︠02ab261a-daf7-4603-98fe-7ac48ac0ebd4s︠
d2f(4.4);d2f(4.5)
︡2262a9ce-a1bc-4419-9a49-e6b95736077a︡{"stdout":"-0.000431899396031749\n0.0000894901898770770\n"}︡{"done":true}︡
︠fc6670e5-7e74-4bfc-980e-d4017fe5a0a5i︠
%md
Since $f''$ changes sign, there is an inflection point at $x\approx4.48$.
︡b1ea8a38-5a0b-4036-ba51-e5e7518ff6f9︡{"done":true,"md":"Since $f''$ changes sign, there is an inflection point at $x\\approx4.48$."}
︠b171cb11-8a6d-40db-bef3-2ecc15ec3c39i︠
%md
**Step 8** Find the x- and y-intercepts.
︡75f76cd9-9e3e-4a89-bf2f-400ca6516b1c︡{"done":true,"md":"**Step 8** Find the x- and y-intercepts."}
︠e32b378e-97f1-4882-ae4f-54fd83e80dba︠
solve(f(x)==0,x)  #find x-intercept
︡4fd425a3-6ab2-45ee-82de-a7b1335e17c0︡{"stdout":"[x == 1]\n"}︡
︠9b04e4d2-1bf7-415c-b662-8c19108ee234i︠
%md
There is no y-intercept, since 0 is not in the domain.
︡32497fc4-a673-4b3c-863f-80df0695425d︡{"done":true,"md":"There is no y-intercept, since 0 is not in the domain."}
︠a4fecac2-bc4f-4530-86c0-e91c72254ddfi︠
%md
**Step 9** Determine the end behavior.
︡ffdb9a5a-28a2-4b0d-a441-1b20863450aa︡{"done":true,"md":"**Step 9** Determine the end behavior."}
︠fcf5c742-a77b-42e6-b892-89ad05cb64e9︠
limit(f(x),x=0,dir='right');limit(f(x),x=infinity)
︡68c54139-1e93-43b6-8ae2-1918306fcdfe︡{"stdout":"-Infinity\n0\n"}︡
︠24bc7596-6190-4089-8eee-52418caba2e9i︠
%md
We have a vertical asymptote at $x=0$ (y-axis) and a horizontal asymptote at $y=0$ (x-axis).
︡28383ba2-4d41-4849-9f59-d15295578d7f︡{"done":true,"md":"We have a vertical asymptote at $x=0$ (y-axis) and a horizontal asymptote at $y=0$ (x-axis)."}
︠58eac300-c23c-4c35-98e0-932228a92b57i︠
%md
**Step 10** Make an informed graph. Mark any $x$- and $y$-intercepts, relative maxima and minima, and inflection points.

Our graph needs to include $x=1,\ e,\ e^{3/2}$ and their corresponding y-values.
︡97267b1a-7af6-4c4d-a87d-8426bbb88413︡{"done":true,"md":"**Step 10** Make an informed graph. Mark any $x$- and $y$-intercepts, relative maxima and minima, and inflection points.\n\nOur graph needs to include $x=1,\\ e,\\ e^{3/2}$ and their corresponding y-values."}
︠558226fb-2492-470a-9b4a-96c3e3158282︠
N(f(e));N(f(e^(3/2)))
︡54804fbb-7207-4aa4-b5d7-ae2136469273︡{"stdout":"0.367879441171442\n0.334695240222645\n"}︡
︠b45b4068-6433-45ff-8dce-932a0df1e307i︠
%md
Here is a first attempt. Notice that the inflection point and the horizontal asymptote are not clear.
︡c1df54cd-6657-41be-b100-e0c631fcdaa4︡{"done":true,"md":"Here is a first attempt. Notice that the inflection point and the horizontal asymptote are not clear."}
︠dd553ca2-7f29-4598-a2a3-5be8a89637e4︠
plot(f,xmin=0,xmax=5,ymin=-.5,ymax=.5)
︡541d8ba8-1293-40d2-b29d-9448b7b9dce0︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/10852/tmp_9233Lh.svg","show":true,"text":null,"uuid":"aae5ca88-2285-4048-8eca-28276f097f69"},"once":false}︡{"done":true}︡
︠c057cc5f-ba29-4af7-9d57-eba34f196407i︠
%md
Here is a second attempt, with the important points marked.
︡2e0ec44e-94e0-44e7-b39f-07e27db8fc71︡{"done":true,"md":"Here is a second attempt, with the important points marked."}
︠08441c96-8654-4a5a-888d-3ca043b4171es︠
plot(f,xmin=0,xmax=25,ymin=-.5,ymax=.5)+point([(1,0),(e,f(e)),(e^1.5,f(e^1.5))],color='black',size=20)
︡18124679-9d21-4a10-a685-959ff7fc3975︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/10852/tmp_UcIyGb.svg","show":true,"text":null,"uuid":"5b19865b-53b8-449c-a181-63c82c42c52b"},"once":false}︡{"done":true}︡
︠1457ca53-3abf-4fd9-a197-14d4c6914392i︠
%md
**Step 11** Discuss absolute max/min, increasing/decreasing, concave up/down.

There is no absolute min. The absolute max is $\frac{1}{e}\approx0.3679$ at $x=e\approx 2.7183$.

The function is increasing on $(0,e]$ and decreasing on $[e,\infty)$.

The function is concave up on $[e^{3/2},\infty)$ and concave down on $(0,e^{3/2}]$.
︡2c35b9c1-ae01-44cc-a6be-578a508d8e86︡{"done":true,"md":"**Step 11** Discuss absolute max/min, increasing/decreasing, concave up/down.\n\nThere is no absolute min. The absolute max is $\\frac{1}{e}\\approx0.3679$ at $x=e\\approx 2.7183$.\n\nThe function is increasing on $(0,e]$ and decreasing on $[e,\\infty)$.\n\nThe function is concave up on $[e^{3/2},\\infty)$ and concave down on $(0,e^{3/2}]$."}
︠30f1dd74-61a7-4b30-a70a-d44e954f4806i︠
%md
## Example 3

Analyze and graph $\displaystyle f(x)=\frac{\sqrt[3]{x^2-6x+9}}{\sqrt[5]{x^2+1}}$
︡844f745a-ccb9-423a-95a2-a20c7880372d︡{"done":true,"md":"## Example 3\n\nAnalyze and graph $\\displaystyle f(x)=\\frac{\\sqrt[3]{x^2-6x+9}}{\\sqrt[5]{x^2+1}}$"}
︠ab10d1ae-4a54-4095-94ad-a7f0511aba0ci︠
%md
**Step 1** Find the domain. Discuss vertical asymptotes and holes.

The only potential domain issue is dividing by 0, but since $x^2+1$ is never 0, the domain is $\mathbb{R}$.
︡e87ac77f-77d7-4136-b87a-e7524ff817f9︡{"done":true,"md":"**Step 1** Find the domain. Discuss vertical asymptotes and holes.\n\nThe only potential domain issue is dividing by 0, but since $x^2+1$ is never 0, the domain is $\\mathbb{R}$."}
︠2c0dd235-4ef9-4c6e-bb82-1d72f8f7301ci︠
%md
**Step 2** Find the derivative.
︡6cdd85f0-17c5-436d-bd7a-6d3445908fc7︡{"done":true,"md":"**Step 2** Find the derivative."}
︠05fb7ffc-f0bf-4560-ae0c-db0719da64bas︠
f(x)=(x^2-6*x+9)^(1/3)/(x^2+1)^(1/5)
df(x)=derivative(f,x)
show(df(x))
︡ba33793f-767e-4d09-9e32-18d7053bd2e0︡{"html":"<div align='center'>$\\displaystyle \\frac{2 \\, {\\left(x - 3\\right)}}{3 \\, {\\left(x^{2} - 6 \\, x + 9\\right)}^{\\frac{2}{3}} {\\left(x^{2} + 1\\right)}^{\\frac{1}{5}}} - \\frac{2 \\, {\\left(x^{2} - 6 \\, x + 9\\right)}^{\\frac{1}{3}} x}{5 \\, {\\left(x^{2} + 1\\right)}^{\\frac{6}{5}}}$</div>"}︡{"done":true}︡
︠ce0cf146-7f98-4566-b0bf-20ba997e43f9i︠
%md
**Step 3** Find the critical points of $f$.

First, we'll think about where the derivative is undefined.

Looking back at the formula for $f'(x)$, we see we get division by 0 when $x^2-6x+9=0$.
︡8ad154a0-f9a9-4d94-b9cb-475b4d45d8c1︡{"done":true,"md":"**Step 3** Find the critical points of $f$.\n\nFirst, we'll think about where the derivative is undefined.\n\nLooking back at the formula for $f'(x)$, we see we get division by 0 when $x^2-6x+9=0$."}
︠6076e495-4c24-4c45-adc1-5e2080472e74s︠
solve(x^2-6*x+9==0,x)
︡c141eeff-003f-4a49-85e7-97c4888765ae︡{"stdout":"[x == 3]\n"}︡{"done":true}︡
︠f9196831-6af6-4ead-b7b0-a313e1b1d2a8i︠
%md
So the derivative is undefined at $x=3$, so this is a critical point.
︡fe8e2ef2-14a6-457f-a8b2-70b98cb2f7a2︡{"done":true,"md":"So the derivative is undefined at $x=3$, so this is a critical point."}
︠6c283c3c-0fdd-4302-becf-74cc917f0486i︠
%md
Now we'll find where the derivative is 0.
︡4f273e89-386a-4eab-a022-d4cbf6d39e40︡{"done":true,"md":"Now we'll find where the derivative is 0."}
︠90a5675c-4e71-466e-b010-82f3086f6e83s︠
solve(df(x)==0,x)
︡e5852bc1-7433-4fb1-bf35-0e5a171b1152︡{"stdout":"[x == -1/4*sqrt(41) - 9/4, x == 1/4*sqrt(41) - 9/4, x == 3]"}︡{"stdout":"\n"}︡{"done":true}︡
︠cda7d541-0445-408e-b25c-7b7d5897b5dbi︠
%md
Notice that Sage gives $x=3$ as a solution, even though we know $f'(3)$ does not exist. This is actually a mistake in Sage's solve command.

But the other two numbers are places where the derivative is 0, so they are critical points. Let's convert them to decimals.
︡1ff3abc5-ddb2-4f52-8676-2d9c97658332︡{"done":true,"md":"Notice that Sage gives $x=3$ as a solution, even though we know $f'(3)$ does not exist. This is actually a mistake in Sage's solve command.\n\nBut the other two numbers are places where the derivative is 0, so they are critical points. Let's convert them to decimals."}
︠3ce257fd-c154-4fb5-96b9-80b0a78ab02bs︠
N(-1/4*sqrt(41) - 9/4)
N(1/4*sqrt(41) - 9/4)
︡533ab8a3-1a50-47fa-8a1f-69ec4098d6ee︡{"stdout":"-3.85078105935821\n"}︡{"stdout":"-0.649218940641788\n"}︡{"done":true}︡
︠eb988479-ceef-4fb6-bc66-bb39f3a7d7a7i︠
%md
We have three critical points: $x=3$, $x\approx -3.85$ and $x\approx -0.65$.
︡bfd9c98c-cf2b-4619-80b1-14a8ad1a49ca︡{"done":true,"md":"We have three critical points: $x=3$, $x\\approx -3.85$ and $x\\approx -0.65$."}
︠c4a10b0a-f614-448b-b4ad-4b25c80188d6i︠
%md
**Step 4** See if the sign of $f'$ actually changes at the critical points, and determine whether $f$ has a local maximum or local mininum at these points.
︡ffb59a86-e774-43b8-a13f-6bf880e6e200︡{"done":true,"md":"**Step 4** See if the sign of $f'$ actually changes at the critical points, and determine whether $f$ has a local maximum or local mininum at these points."}
︠7dd5f144-777c-4b40-8649-f61643a1e57as︠
df(2.9)
df(3.1)
︡749f4550-d069-4300-be78-3eae236df3a6︡{"stdout":"-0.934289205592418\n"}︡{"stdout":"0.879868999227662\n"}︡{"done":true}︡
︠82c17fe9-45ce-4250-b733-25f898577297i︠
%md
Since $f'$ changes sign from negative to positive, $f$ has a local min at $x=3$.
︡092b846d-72bd-49c9-bdc6-3bd8b47fd194︡{"done":true,"md":"Since $f'$ changes sign from negative to positive, $f$ has a local min at $x=3$."}
︠2aecd9e0-9ec9-44b1-b3d0-1b8f14bce563s︠
df(-3.9)
df(-3.8)
︡4c95121a-cb51-4b79-902f-ca89ace89e3b︡{"stdout":"-0.000792013772198064\n"}︡{"stdout":"0.000843740680385702\n"}︡{"done":true}︡
︠b1e1106f-7e24-4edf-8475-379eec49bf06i︠
%md
Since $f'$ changes sign from negative to positive, $f$ has a local min at $x\approx -3.85$.
︡fe148dc2-42e7-4ef8-a1c6-9608a6fa442e︡{"done":true,"md":"Since $f'$ changes sign from negative to positive, $f$ has a local min at $x\\approx -3.85$."}
︠558a960f-b894-49b3-ac5a-43b7159e692es︠
df(-.7)
df(-.6)
︡79233fc4-8ef2-409a-a8f9-a21711ffb5c6︡{"stdout":"0.0170948233809796\n"}︡{"stdout":"-0.0192489860586108\n"}︡{"done":true}︡
︠a4eb080c-01e0-416b-b790-20c2f6d94b59i︠
%md
Since $f'$ changes sign from postive to negative, $f$ has a local max at $x\approx -0.65$.
︡b535c62d-e0d8-44a4-ae07-90fbf54fa081︡{"done":true,"md":"Since $f'$ changes sign from postive to negative, $f$ has a local max at $x\\approx -0.65$."}
︠414b2d51-a840-48d0-a080-8abbf0d399b0i︠
%md
**Step 5** Find $f''$.
︡2f06fefa-3448-4690-b0e5-565a49d7506c︡{"done":true,"md":"**Step 5** Find $f''$."}
︠2e3b57ab-26e5-4a3e-a947-fe2d86e6f72fs︠
d2f(x)=derivative(f,x,2)
show(d2f(x))
︡ba5292ec-a439-4449-8d51-5b927334aeb9︡{"html":"<div align='center'>$\\displaystyle -\\frac{8 \\, {\\left(x - 3\\right)}^{2}}{9 \\, {\\left(x^{2} - 6 \\, x + 9\\right)}^{\\frac{5}{3}} {\\left(x^{2} + 1\\right)}^{\\frac{1}{5}}} - \\frac{8 \\, {\\left(x - 3\\right)} x}{15 \\, {\\left(x^{2} - 6 \\, x + 9\\right)}^{\\frac{2}{3}} {\\left(x^{2} + 1\\right)}^{\\frac{6}{5}}} + \\frac{24 \\, {\\left(x^{2} - 6 \\, x + 9\\right)}^{\\frac{1}{3}} x^{2}}{25 \\, {\\left(x^{2} + 1\\right)}^{\\frac{11}{5}}} - \\frac{2 \\, {\\left(x^{2} - 6 \\, x + 9\\right)}^{\\frac{1}{3}}}{5 \\, {\\left(x^{2} + 1\\right)}^{\\frac{6}{5}}} + \\frac{2}{3 \\, {\\left(x^{2} - 6 \\, x + 9\\right)}^{\\frac{2}{3}} {\\left(x^{2} + 1\\right)}^{\\frac{1}{5}}}$</div>"}︡{"done":true}︡
︠f0b0f043-b3c8-4312-ac27-23a1f6789fd0i︠
%md
**Step 6** Find the critical points of $f'$.

Looking at the formula for $f''$, we see the same problem with division by 0 that we saw for $f'$, so $f''(3)$ does not exist.

Now we need to find where $f''(x)=0$.
︡477e8d4d-67b4-40b9-a8e2-5919157d1c47︡{"done":true,"md":"**Step 6** Find the critical points of $f'$.\n\nLooking at the formula for $f''$, we see the same problem with division by 0 that we saw for $f'$, so $f''(3)$ does not exist.\n\nNow we need to find where $f''(x)=0$."}
︠09ba4e93-868e-4fce-a416-1b7f4e0d89a3s︠
solve(d2f(x)==0,x)
︡647f3543-7f22-4f5a-9622-7352ec695fd1︡{"stdout":"[x == -1/132*sqrt((4356*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(2/3) + 142593*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) + 550564)/(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3)) - 1/2*sqrt(-(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) - 137641/1089/(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) + 40905/2/sqrt((4356*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(2/3) + 142593*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) + 550564)/(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3)) + 4321/66) - 9/4, x == -1/132*sqrt((4356*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(2/3) + 142593*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) + 550564)/(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3)) + 1/2*sqrt(-(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) - 137641/1089/(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) + 40905/2/sqrt((4356*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(2/3) + 142593*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) + 550564)/(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3)) + 4321/66) - 9/4, x == 1/132*sqrt((4356*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(2/3) + 142593*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) + 550564)/(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3)) - 1/2*sqrt(-(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) - 137641/1089/(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) - 40905/2/sqrt((4356*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(2/3) + 142593*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) + 550564)/(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3)) + 4321/66) - 9/4, x == 1/132*sqrt((4356*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(2/3) + 142593*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) + 550564)/(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3)) + 1/2*sqrt(-(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) - 137641/1089/(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) - 40905/2/sqrt((4356*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(2/3) + 142593*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) + 550564)/(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3)) + 4321/66) - 9/4, x == 3]"}︡{"stdout":"\n"}︡{"done":true}︡
︠917a6a42-cbe3-44e3-8c9f-5504a7d58098i︠
%md
Notice that Sage incorrectly gives us $x=3$ again.

Let's convert the four remaining solutions to decimals.
︡350722c0-6065-4046-90cd-9658a9531e18︡{"done":true,"md":"Notice that Sage incorrectly gives us $x=3$ again.\n\nLet's convert the four remaining solutions to decimals."}
︠1e3d6255-0774-4a74-97e7-1736ead4b0e1s︠
N(-1/132*sqrt((4356*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(2/3) + 142593*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) + 550564)/(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3)) - 1/2*sqrt(-(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) - 137641/1089/(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) + 40905/2/sqrt((4356*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(2/3) + 142593*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) + 550564)/(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3)) + 4321/66) - 9/4)

N(-1/132*sqrt((4356*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(2/3) + 142593*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) + 550564)/(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3)) + 1/2*sqrt(-(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) - 137641/1089/(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) + 40905/2/sqrt((4356*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(2/3) + 142593*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) + 550564)/(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3)) + 4321/66) - 9/4)

N(1/132*sqrt((4356*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(2/3) + 142593*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) + 550564)/(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3)) - 1/2*sqrt(-(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) - 137641/1089/(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) - 40905/2/sqrt((4356*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(2/3) + 142593*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) + 550564)/(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3)) + 4321/66) - 9/4)

N(1/132*sqrt((4356*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(2/3) + 142593*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) + 550564)/(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3)) + 1/2*sqrt(-(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) - 137641/1089/(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) - 40905/2/sqrt((4356*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(2/3) + 142593*(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3) + 550564)/(25/1331*I*sqrt(404272455)*sqrt(11) + 24113314/35937)^(1/3)) + 4321/66) - 9/4)
︡bfa6bb5c-9baa-477e-8c20-71482ea8bbbd︡{"stdout":"-10.5718681539223 + 5.47924906323833e-17*I\n"}︡{"stdout":"-1.26168389059917 + 1.72972993360071e-16*I\n"}︡{"stdout":"0.680639364999719 - 4.18499764306598e-17*I\n"}︡{"stdout":"2.15291267952170 - 1.85915507561795e-16*I\n"}︡{"done":true}︡
︠be82dba1-d8cb-4f39-91b0-2a59c8ad4251i︠
%md
Notice that all four of these solutions have "$\texttt{I}$" in the answer. This is Sage's notation for $i=\sqrt{-1}$, and it usually indicates a complex number (which we will ignore). However, as we can see from the decimal approximation, the imaginary part of these solutions actually cancels out in the end, and all four solutions are real numbers (Notice the scientific notation in each of the decimals above).

We conclude that $f'$ has five critical points: $x=3$, $x\approx -10.57$, $x\approx -1.26$, $x\approx 0.68$, and $x\approx 2.15$.
︡3e580a99-a2df-4872-84ff-c6f98a35e14b︡{"done":true,"md":"Notice that all four of these solutions have \"$\\texttt{I}$\" in the answer. This is Sage's notation for $i=\\sqrt{-1}$, and it usually indicates a complex number (which we will ignore). However, as we can see from the decimal approximation, the imaginary part of these solutions actually cancels out in the end, and all four solutions are real numbers (Notice the scientific notation in each of the decimals above).\n\nWe conclude that $f'$ has five critical points: $x=3$, $x\\approx -10.57$, $x\\approx -1.26$, $x\\approx 0.68$, and $x\\approx 2.15$."}
︠44020487-ac83-4818-803c-9e87e3bfa12ai︠
%md
**Step 7** See if the sign of $f''$ actually changes at the critical points of $f'$, and determine whether $f$ has an inflection point at these points.
︡25f506a6-aece-43b8-819a-3f95258d12fa︡{"done":true,"md":"**Step 7** See if the sign of $f''$ actually changes at the critical points of $f'$, and determine whether $f$ has an inflection point at these points."}
︠74ab3f44-2810-4ee6-8b0f-d497ece22a1as︠
d2f(2.9)
d2f(3.1)
︡14ba09e3-95a5-4160-9af2-159f92e898ce︡{"stdout":"-2.82489609113212\n"}︡{"stdout":"-3.18861678816105\n"}︡{"done":true}︡
︠b4aa6bd6-090c-4e79-840b-863a2c4fe619i︠
%md
Since $f''$ does not change sign at $x=3$, $f$ does not have an inflection point here.
︡929c90df-3ed6-4e17-8a94-fea14271a0af︡{"done":true,"md":"Since $f''$ does not change sign at $x=3$, $f$ does not have an inflection point here."}
︠b8792705-0260-45c7-a9d1-6b53887a4918s︠
d2f(-10.6)
d2f(-10.5)
︡5b57a577-0cc7-4dc0-80f7-fe5af8adddc8︡{"stdout":"-6.87833320245357e-6\n"}︡{"stdout":"0.0000179922253477384\n"}︡{"done":true}︡
︠24934495-5354-44f0-83e8-032f62ad8d1fi︠
%md
Since the sign changes, $f$ has an inflection point at $x\approx -10.57$.
︡b4657c29-f94b-444b-bd57-556c6d953bb4︡{"done":true,"md":"Since the sign changes, $f$ has an inflection point at $x\\approx -10.57$."}
︠3998f5c5-5bd4-444e-804f-0a229e4b57b9s︠
d2f(-1.3)
d2f(-1.2)
︡cf11726d-9d34-455d-a9df-0fb6024cb154︡{"stdout":"0.00770424683905568\n"}︡{"stdout":"-0.0147822036307242\n"}︡{"done":true}︡
︠11f5b4e9-6a81-4f05-ad44-ad7a19eb00abi︠
%md
Since the sign changes, $f$ has an inflection point at $x\approx -1.26$.
︡7a1bcc6c-75dc-447a-b6ec-0553f55f4c31︡{"done":true,"md":"Since the sign changes, $f$ has an inflection point at $x\\approx -1.26$."}
︠02e7f43f-f5a5-4b2f-a08f-93a3330576des︠
d2f(.6)
d2f(.7)
︡2f03226f-fa04-47be-9f5c-c3fe9c8635d9︡{"stdout":"-0.0805864668319887\n"}︡{"stdout":"0.0166625176968990\n"}︡{"done":true}︡
︠37316b9f-60b0-49eb-846b-10f03db8ebe6i︠
%md
Since the sign changes, $f$ has an inflection point at $x\approx 0.68$.
︡b167427d-8f64-4f84-98a6-bab016ae6308︡{"done":true,"md":"Since the sign changes, $f$ has an inflection point at $x\\approx 0.68$."}
︠77647e0b-6e91-4cb1-a4de-bca47c164510s︠
d2f(2.1)
d2f(2.2)
︡e03e677b-b177-4f06-a22e-dcf50e67f11c︡{"stdout":"0.0175507707028564\n"}︡{"stdout":"-0.0171586030217367\n"}︡{"done":true}︡
︠e1350dc1-db93-4c73-8990-0842162214bei︠
%md
Since the sign changes, $f$ has an inflection point at $x\approx 2.15$.
︡15a086e4-f23a-4810-b790-e1980d91c429︡{"done":true,"md":"Since the sign changes, $f$ has an inflection point at $x\\approx 2.15$."}
︠a65c3e90-8060-43e1-bccd-155226ed72ebi︠
%md
**Step 8** Find the x- and y-intercepts.
︡8510bbec-6486-4e8e-af0e-39cbd50ad11e︡{"done":true,"md":"**Step 8** Find the x- and y-intercepts."}
︠6a305987-a213-44e8-bd6d-3c5ef3723a98︠
solve(f(x)==0,x)  #find x-intercept
︡b0f02776-df1d-4903-835e-3ae3e4a386f9︡{"stdout":"[x == 3]\n"}︡{"done":true}︡
︠72362f06-24e2-4290-9c91-3dbba1ea71fb︠
f(0)  #find y-intercept
︡36beda20-5813-4f9c-8178-5a6a8856efe2︡{"stdout":"9^(1/3)\n"}︡{"done":true}︡
︠33cfa719-b07d-42d8-a0ed-239f41c6d240s︠
N(_)
︡9ea2b35c-7b62-4d26-b8c2-5f74915c994f︡{"stdout":"2.08008382305190\n"}︡{"done":true}︡
︠cfde2910-a693-40ca-9bf4-e0906c2f72f7i︠
%md
The x-intercept is $3$, and the y-intercept is $\approx 2.08$.
︡ea237951-e091-4e58-a2c5-322093db6e21︡{"done":true,"md":"The x-intercept is $3$, and the y-intercept is $\\approx 2.08$."}
︠5702faec-7c3b-4b2d-9ef9-bbcaf113b1eci︠
%md
**Step 9** Determine the end behavior.
︡037761de-5374-42f5-98d8-86f4e3ad97b5︡{"done":true,"md":"**Step 9** Determine the end behavior."}
︠b9c37801-712f-4eea-96ad-9d7b101ad285s︠
limit(f(x),x=+infinity)
limit(f(x),x=-infinity)
︡e9378e61-16d6-40e7-b748-8e1afa189d20︡{"stdout":"+Infinity\n"}︡{"stdout":"+Infinity\n"}︡{"done":true}︡
︠224dbdad-d991-4aff-ac2b-107f7887b9a1i︠
%md
This function has no horizontal asymptote.
︡cbbc578b-8a7f-4e86-ae31-385e9d4ddd2b︡{"done":true,"md":"This function has no horizontal asymptote."}
︠0dc69191-0cf0-495b-b73c-d6cdd95d47b5i︠
%md
**Step 10** Make an informed graph. Mark any $x$- and $y$-intercepts, relative maxima and minima, and inflection points.

Our graph needs to include the following x-values with their corresponding y-values:

$3,\ -3.85,\ -0.65,\ -10.57,\ -1.26,\ 0.68,\ 2.15$
︡ec7c1a95-2e1e-4bd9-983c-3c5d8b09ff28︡{"done":true,"md":"**Step 10** Make an informed graph. Mark any $x$- and $y$-intercepts, relative maxima and minima, and inflection points.\n\nOur graph needs to include the following x-values with their corresponding y-values:\n\n$3,\\ -3.85,\\ -0.65,\\ -10.57,\\ -1.26,\\ 0.68,\\ 2.15$"}
︠0cba2025-bd58-4f55-bb28-a3bc5be86d5ds︠
f(3);f(-3.85);f(-.65);f(-10.57);f(-1.26);f(.68);f(2.15)
︡8d243f10-564f-4783-865b-c56310343ef0︡{"stdout":"0\n2.07621357743516\n2.20928352836990\n2.21130811676451\n2.17283611390427\n1.62422212052417\n0.635272502740562\n"}︡{"done":true}︡
︠45a9ea4a-afb4-45a0-9584-14ebfd6f7913i︠
%md
We don't want the inflection point at $x\approx -10.57$ to be right on the edge of the graph, so let's try $-20\le x\le 5$ and $0\le y \le 3$.
︡4e197145-0497-44de-b9ad-1e6af508fc04︡{"done":true,"md":"We don't want the inflection point at $x\\approx -10.57$ to be right on the edge of the graph, so let's try $-20\\le x\\le 5$ and $0\\le y \\le 3$."}
︠fe7315cf-73ad-4267-853e-93e72945cabbs︠
plot((x^2-6*x+9)^(1/3)/(x^2+1)^(1/5),xmin=-20,xmax=5,ymin=0,ymax=3)+point([(3,0),(-3.85,2.08),(-.65,2.21),(-10.57,2.21),(-1.26,2.17),(.68,1.62),(2.15,.64),(0,2.08)],color='black',size=20)
︡22a27553-b04b-4057-b368-1cccba027f97︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/10499/tmp_PF3byw.svg","show":true,"text":null,"uuid":"9f3aecc4-b6db-4ac6-8996-f5b20ad6a976"},"once":false}︡{"done":true}︡
︠c114b0c8-3e46-49bf-a559-4f354b70fa49i︠
%md
It's hard to see that the function is concave down on the left side, but if we went far enough in the negative direction to see that, we would obscure the rest of the graph.
︡09714db0-9f66-4ed4-8342-e0364126975e︡{"done":true,"md":"It's hard to see that the function is concave down on the left side, but if we went far enough in the negative direction to see that, we would obscure the rest of the graph."}
︠80f7a09c-351b-4727-90af-e00bdab9caf9i︠
%md
**Step 11** Discuss absolute max/min, increasing/decreasing, concave up/down.

There is no absolute maximum.

The absolute minimum is 0 at $x=3$.

The function is increasing on $[-3.85,-0.65]$ and $[3,\infty)$.

The function is decreasing on $(-\infty,-3.85]$ and $[-0.65,3]$.

The function is concave up on $[-10.57,-1.26]$ and $[0.68,2.15]$

The function is concave down on $(-\infty,-10.57]$, $[-1.26,0.68]$, $[2.15,3]$, and $[3,\infty)$.
︡6d5fef33-cc1d-4e2f-99cb-d35dbfbca88f︡{"done":true,"md":"**Step 11** Discuss absolute max/min, increasing/decreasing, concave up/down.\n\nThere is no absolute maximum.\n\nThe absolute minimum is 0 at $x=3$.\n\nThe function is increasing on $[-3.85,-0.65]$ and $[3,\\infty)$.\n\nThe function is decreasing on $(-\\infty,-3.85]$ and $[-0.65,3]$.\n\nThe function is concave up on $[-10.57,-1.26]$ and $[0.68,2.15]$\n\nThe function is concave down on $(-\\infty,-10.57]$, $[-1.26,0.68]$, $[2.15,3]$, and $[3,\\infty)$."}
︠c938814d-4b1d-40f7-a121-ccc7a94c872d︠









