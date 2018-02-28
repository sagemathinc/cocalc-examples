︠79e4ce54-fe6f-45d8-b842-f2d9703a2c87i︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡5b8d66b4-c164-4a6c-87ad-2b2ac8a709e5︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠e079fe3b-73cb-4183-acf0-3c6328def199i︠
%md
# Introduction to Sage

Sage is a powerful set of computational tools that allow you to use the computer for various applications in

* Precalculus (e.g., functions, graphing),
* Calculus (e.g., limits, derivatives, integrals),
* and beyond (e.g., Differential Equations, Linear Algebra).

This semester, we will just begin to learn some of the many features of Sage, and we will use Sage to help us understand calculus better.

This tutorial will introduce you to the basics of Sage.
︡6f12f426-c377-4b78-88ee-de60eb2a3c89︡{"md":"# Introduction to Sage\n\nSage is a powerful set of computational tools that allow you to use the computer for various applications in\n\n* Precalculus (e.g., functions, graphing),\n* Calculus (e.g., limits, derivatives, integrals),\n* and beyond (e.g., Differential Equations, Linear Algebra).\n\nThis semester, we will just begin to learn some of the many features of Sage, and we will use Sage to help us understand calculus better.\n\nThis tutorial will introduce you to the basics of Sage.\n"}︡
︠568e23f3-beb8-4ca3-aad3-904fb3f31365i︠
%md
## Input and Output

There are two regions in a Sage worksheet: input cells and output cells.

Output cells have a green, vertical line next to them, while input cells do not. You type commands in an input cell, and you run them by pressing [SHIFT]-[ENTER] (or press the play button [with the triangle] at the top of the page). To get a new input cell, move your cursor to the gray horizontal line above or below any other input cell. A blue highlight will appear. Click and another input cell will be inserted. Try it now.

An output cell will appear when you press [SHIFT]-[ENTER]. If any commands you have typed in the input cell produce an output, this will appear right below the input cell. If you click and drag, you can highlight multiple output cells and run them all by pressing [SHIFT]-[ENTER] once.

If an input cell has been run in the current session, then a small portion of the gray horizontal line above it will be blue. While input code is running, part of the horizontal line above it will flash green. If input code is waiting to run, part of the line will flash red.
︡989061c2-16f2-4fb3-8e4e-0d8bfe4f3777︡{"done":true,"md":"## Input and Output\n\nThere are two regions in a Sage worksheet: input cells and output cells.\n\nOutput cells have a green, vertical line next to them, while input cells do not. You type commands in an input cell, and you run them by pressing [SHIFT]-[ENTER] (or press the play button [with the triangle] at the top of the page). To get a new input cell, move your cursor to the gray horizontal line above or below any other input cell. A blue highlight will appear. Click and another input cell will be inserted. Try it now.\n\nAn output cell will appear when you press [SHIFT]-[ENTER]. If any commands you have typed in the input cell produce an output, this will appear right below the input cell. If you click and drag, you can highlight multiple output cells and run them all by pressing [SHIFT]-[ENTER] once.\n\nIf an input cell has been run in the current session, then a small portion of the gray horizontal line above it will be blue. While input code is running, part of the horizontal line above it will flash green. If input code is waiting to run, part of the line will flash red."}
︠1c1d9493-b0a9-4af4-ab34-6678b11076a8i︠
%md
## Basic Arithmetic

Sage can be used very much like your graphing calculator to do computations. Simply type an arithmetic expression in an input cell and press [SHIFT]-[ENTER]. Here are some examples.
︡9808c106-d2b0-4e86-9c2e-37b19a1c1d3e︡{"done":true,"md":"## Basic Arithmetic\n\nSage can be used very much like your graphing calculator to do computations. Simply type an arithmetic expression in an input cell and press [SHIFT]-[ENTER]. Here are some examples."}
︠7e2f0553-f903-4915-a144-0242f6872846s︠
1+1
︡8a0b2e4a-9fae-40c8-abc1-e2935a1ef7ff︡{"stdout":"2\n"}︡{"done":true}︡
︠e9c70061-337b-4288-8f44-8364cfaf2ac3︠
109-87
︡47246a98-10d8-448f-a338-f5758d7f4929︡︡{"stdout":"22\n","done":false}︡{"done":true}
︠3c086679-e4af-4e34-931c-e3962f343d73︠
22*93
︡6ec1360f-5343-4158-a898-2a47342f3297︡{"stdout": "2046"}︡
︠aa6d74b0-f581-4f9d-bd4c-aad49776218f︠
88/22
︡f62d752a-e8a6-4f59-863e-e7851b34f862︡{"stdout": "4"}︡
︠18bcf9c6-bff7-4aae-98d4-3e0318e1368di︠
%md
Exponents:
︡e4fc6117-8c90-43a7-8f6f-8b7f33b9f7d2︡{"md":"Exponents:\n"}︡
︠0d373313-b643-4e12-93a7-20232ffaeac1︠
4^3
︡bea65cf3-2f5a-440a-a4ff-c7c6b30b3eaa︡{"stdout": "64"}︡
︠b6fec420-0dc1-4af6-97ef-3f474447c577︠
4^(1/2)
︡33ac75b5-787b-4fc8-9e05-c26ee08aec59︡{"stdout":"2\n"}︡
︠280f2a59-d3cc-448c-8954-3bc63b8ae36fi︠
%html
<p>The same symbol is used for subtraction and negative numbers:</p>

︡c8c91523-c726-4ce9-a2df-262c55ecb18e︡{"html": "<p>The same symbol is used for subtraction and negative numbers:</p>"}︡
︠535f1699-586f-455c-b607-2a73fcae0daf︠
-9+22
︡8b6766b8-a20e-4fe0-928f-9b0b4d2a6491︡{"stdout": "13"}︡
︠aa356973-93af-4fca-b50f-26feec93cb4a︠
3*-6
︡fb195643-c574-41c5-b4f0-e2a2c3421b93︡{"stdout": "-18"}︡
︠eb81b8e8-6cac-43b1-94c9-ab97adf5d849i︠
%md
You can type multiple inputs before running.

One way to do this is to hit [ENTER] after each line.
︡630c0e99-9b70-45f9-beb7-5fa075dddbf6︡{"done":true,"md":"You can type multiple inputs before running.\n\nOne way to do this is to hit [ENTER] after each line."}
︠8821ea0d-c52f-4b22-96de-27fac6ade372︠
1+8
2-5
4*6
︡c683d69e-230a-44c2-945b-0fa478ec0f00︡{"stdout":"9\n"}︡{"stdout":"-3\n"}︡{"stdout":"24\n"}︡
︠026b932c-fede-47d8-a86e-d4dbc71bc6f2i︠
%md
The outputs are produced in the same order as the inputs.
︡3e15db00-2e30-4af1-b90a-d590f7b86ff8︡{"md":"The outputs are produced in the same order as the inputs.\n"}︡
︠66a1d277-a413-441f-83f1-8f225a759ca6i︠
%md
Another way to do this is to put a semicolon between different inputs.
︡8de2c23e-9a10-4814-8701-9b68f0745d6f︡{"done":true,"md":"Another way to do this is to put a semicolon between different inputs."}
︠6d7262f9-62b1-4cd0-a955-2cc27b03d26es︠
1+8; 2-5; 4*6
︡b08ad650-7ad8-4d54-a927-d4ec4364e97b︡{"stdout":"9\n-3\n24\n"}︡{"done":true}︡
︠86833f62-0d98-4cfe-b2e3-4e06d603ff93i︠
%md
If you want to access the last output, use _
︡2496d696-6777-4695-9646-082f9a06fba8︡{"md":"If you want to access the last output, use _\n"}︡
︠8ab30114-c94d-4cd3-a3ec-e49579a70302︠
3*4
_+5
︡1f32c7f8-6565-4099-b5bd-1f8963428d9d︡{"stdout":"12\n"}︡{"stdout":"17\n"}︡
︠4a0ae57d-9950-407a-aedb-bf67b0f1b602i︠
%md
In the example above, _ $=12$, since that was the last output.
︡b6f15d70-115a-46d9-a1cc-73c35baa7d83︡{"md":"In the example above, _ $=12$, since that was the last output.\n"}︡
︠b02de81a-f601-4b7b-be4e-214097d9c803︠
12-10
7*_
︡233ffa62-e30a-409c-9531-6470836049b4︡{"stdout":"2\n"}︡{"stdout":"14\n"}︡
︠48a5f838-2e1a-4fd2-a490-97d040a249fdi︠
%md
In this example, _ $=2$, since that was the last output.
︡d30d4339-4227-440d-a191-09a8303dd72e︡{"md":"In this example, _ $=2$, since that was the last output.\n"}︡
︠1aa73faf-dac8-49fe-8d70-ada73d1511c8i︠
%md
## Order of Operations

<p>Like a calculator, Sage uses the standard order of operations, often called PEMDAS (parentheses, exponents, multiplication, division, addition, subtraction). Compare the following:</p>

︡828fcae2-7638-495a-aac5-fa6629898c34︡{"md":"## Order of Operations\n\n<p>Like a calculator, Sage uses the standard order of operations, often called PEMDAS (parentheses, exponents, multiplication, division, addition, subtraction). Compare the following:</p>\n\n"}︡
︠9ae9b042-b5c0-4817-98a9-1fbfb62f9356︠
2*4^5+3
︡0420873e-5d32-4e4a-8153-bf48eb394c46︡{"stdout": "2051"}︡
︠2c8d4888-5ce4-450e-8659-a2829512a3ffi︠
%html
<p>$2\cdot4^5+3=2\cdot1024+3=2048+3=2051$</p>

︡c0c43025-f98c-4a58-84a7-819a812cfb87︡{"html":"<p>$2\\cdot4^5+3=2\\cdot1024+3=2048+3=2051$</p>\n\n"}︡
︠e31a18c0-e8ba-49f2-9e68-ced0644b0e30︠
(2*4)^5+3
︡f6709e07-3185-4f7a-a921-349f5602fd79︡{"stdout": "32771"}︡
︠481610c6-e045-4400-beee-8bd14398436ai︠
%html
<p>$(2\cdot4)^5+3=8^5+3=32768+3=32771$</p>

︡f9c197fd-0cab-4853-89bd-4e35a903b3a3︡{"html":"<p>$(2\\cdot4)^5+3=8^5+3=32768+3=32771$</p>\n\n"}︡
︠6a69a5b6-d927-4af8-a762-e515be500be0︠
2*(4^5+3)
︡81a1ddf2-d211-4993-a2db-1cd801564f9f︡{"stdout": "2054"}︡
︠b4efb2d6-4738-46b7-bc8b-eefd62993badi︠
%html
<p>$2\cdot(4^5+3)=2\cdot(1024+3)=2\cdot1027=2054$</p>

︡31bcf195-6cd3-4987-8a09-1d178870d985︡{"html":"<p>$2\\cdot(4^5+3)=2\\cdot(1024+3)=2\\cdot1027=2054$</p>\n\n"}︡
︠5c8321d4-0173-40e6-9dc5-0f098f260288︠
2*4^(5+3)
︡548a1b66-0ff6-41fe-88ef-de058d2cd135︡{"stdout": "131072"}︡
︠394454ab-137b-4992-80bf-51909bf1357bi︠
%html
<p>$2\cdot4^{5+3}=2\cdot4^8=2\cdot65536=131072$</p>
︡844d313d-c691-4f28-9a97-041d629dee6d︡{"done":true,"html":"<p>$2\\cdot4^{5+3}=2\\cdot4^8=2\\cdot65536=131072$</p>"}
︠52dbd1ad-4d82-483e-ba39-b095962958abi︠
%md
Be careful with fractions:
︡a8dcd325-5c4d-4c5e-8053-e04b1ac430db︡{"done":true,"md":"Be careful with fractions:"}
︠856a19c8-93c7-4ef1-8803-b6702907e99f︠
12/3+5
︡3caf091f-5e73-400b-b655-fa573272b73b︡{"stdout": "9"}︡
︠2b88f548-20b6-40b8-aad7-6aab2cab9604i︠
%md
$\displaystyle\frac{12}{3}+5=9$

︡a79de408-7933-41a3-94aa-ebad8ed12ec3︡{"done":true,"md":"$\\displaystyle\\frac{12}{3}+5=9$"}
︠b1ee92c3-a02a-4cb6-9187-f20dc23c4133︠
12/(3+5)
︡dac282d2-44e5-493a-9ae9-11d32c96bcec︡{"stdout": "3/2"}︡
︠23cbf1da-63d2-4a77-9a1c-882a914089e7i︠
%md
$\displaystyle\frac{12}{3+5}=\frac{3}{2}$

︡2f6c9a37-9df8-49ea-be1f-7a2aae8aa18d︡{"done":true,"md":"$\\displaystyle\\frac{12}{3+5}=\\frac{3}{2}$"}
︠51bcd955-b5ef-48dc-8d9b-1e77188bdb48i︠
%md
<font size='4'> **Complete Question 1 of the assignment.** </font>
︡3d2b5e18-1869-4288-9818-4d91d8a1fd66︡{"md":"<font size='4'> **Complete Question 1 of the assignment.** </font>\n"}︡
︠b01f77c1-7a6f-47f7-bf03-6bc4a2c5fdd1i︠
%md
## Decimal Approximations

Unlike calculators, Sage tries to return exact answers instead of decimal approximations. If the input involves only integers, then Sage tries to keep integers in the output as well. For example, since 11 divided by 4 is not a whole number, Sage doesn't do anything:
︡6d193a5a-d965-45fb-a736-7ac056cea1a2︡{"md":"## Decimal Approximations\n\nUnlike calculators, Sage tries to return exact answers instead of decimal approximations. If the input involves only integers, then Sage tries to keep integers in the output as well. For example, since 11 divided by 4 is not a whole number, Sage doesn't do anything:\n"}︡
︠f5e2571d-0af5-4da1-8e3d-001f4b933b97︠
11/4
︡b4c0511e-914a-40de-9c02-92cb05123dec︡{"stdout": "11/4"}︡
︠7db7dcec-0ab5-4516-88b3-09eebf000297i︠
%md
Since 11 and 4 are both integers, Sage tries to keep everything as integers, so it returns the fraction $\frac{11}{4}$. If you want a decimal instead, Sage has a decimal approximation function called "N" (short for "numerical_approximation").

︡1d20c64c-3bf4-46e5-8fc9-6d05c5a28067︡{"md":"Since 11 and 4 are both integers, Sage tries to keep everything as integers, so it returns the fraction $\\frac{11}{4}$. If you want a decimal instead, Sage has a decimal approximation function called \"N\" (short for \"numerical_approximation\").\n\n"}︡
︠be19eb2b-133e-46d0-8ce0-754451fa93c0︠
N(11/4)
︡d75f64b6-1dc4-48ea-97b4-5a52791a5e55︡{"stdout":"2.75000000000000\n"}︡
︠13033058-8c16-4a1d-a834-ca1f541aa355i︠
%md
Compare the following:
︡33576ba6-1fec-4809-b8ec-4f70ce2bddba︡{"md":"Compare the following:\n"}︡
︠6d670353-75db-4c47-8393-5550fb837355︠
17/5
N(17/5)
︡a26766b0-c6be-4db2-9aa0-f6897a72b6b6︡{"stdout":"17/5\n"}︡{"stdout":"3.40000000000000\n"}︡
︠ecadb771-251c-4643-a3fa-87b756b71d25i︠
%md
This issue does not arise if you don't start with integers. For example 3.1/4.6 returns a decimal approximation:
︡e2553fdd-f390-4c6f-8cf6-363439326888︡{"md":"This issue does not arise if you don't start with integers. For example 3.1/4.6 returns a decimal approximation:\n"}︡
︠d8fbcd13-02c1-4fa1-a009-593ade0d8005︠
3.1/4.6
︡76c69d16-793c-43f5-9a72-fa58844b7bf5︡{"stdout":"0.673913043478261\n"}︡
︠6f58dca9-3b54-4381-b0cd-e4e46fe26058i︠
%md
## Scientific Notation

For numbers that are very large or very close to $0$, Sage employs scientific notation.

Recall, for example, $1.5\times10^4=15000$ and $1.5\times10^{-4}=0.00015$.

In Sage, scientific notation is indicated using the letter "e" (for "exponent"). This is similar to graphing calculators that use "E."

Here we'll see the examples of $1.5\times10^{25}$ and $1.5\times10^{-25}$.
︡9308c380-c0c5-435b-8cf4-602178be72ca︡{"md":"## Scientific Notation\n\nFor numbers that are very large or very close to $0$, Sage employs scientific notation.\n\nRecall, for example, $1.5\\times10^4=15000$ and $1.5\\times10^{-4}=0.00015$.\n\nIn Sage, scientific notation is indicated using the letter \"e\" (for \"exponent\"). This is similar to graphing calculators that use \"E.\"\n\nHere we'll see the examples of $1.5\\times10^{25}$ and $1.5\\times10^{-25}$.\n"}︡
︠86194041-ba66-4424-8f25-8acfcee13659︠
1.5*10^(25)
︡2e1bf617-8dd7-4162-8762-c3b04d3c9440︡{"stdout":"1.50000000000000e25\n"}︡
︠3d704624-0bf7-47bf-a199-ba8d85f469f7︠
1.5*10^(-25)
︡fb76fcd6-dff2-47ce-8918-5ddddd489e90︡{"stdout":"1.50000000000000e-25\n"}︡
︠a9be21ec-9e5e-4310-8b85-c2e47fbd2b13i︠
%md
This notation is similar to many graphing calculators.

When the number after the "e" is *postive*, move the decimal point that many spots to the *right* (adding extra zeros as necessary).

When the number after the "e" is *negative*, move the decimal point that many spots to the *left* (adding extra zeros as necessary).

Consider the example below.
︡e4709274-24c0-4620-80d7-0ca5968a9288︡{"md":"This notation is similar to many graphing calculators.\n\nWhen the number after the \"e\" is *postive*, move the decimal point that many spots to the *right* (adding extra zeros as necessary).\n\nWhen the number after the \"e\" is *negative*, move the decimal point that many spots to the *left* (adding extra zeros as necessary).\n\nConsider the example below.\n"}︡
︠3f8655c4-806c-447a-8d2e-a35db2019c18i︠
%hide
7.^(-20)
︡3fb73271-3d69-47e2-ae1f-d2a09ed7891f︡{"stdout":"1.25325428941968e-17\n"}︡
︠b07ac061-a5ed-4942-a52c-cce58b85c3d7i︠
%md
At first, this looks like a number around $1\frac{1}{4}$. But this is actually a number close to $0$:

$1.25325428941968\textrm{e-}17 =1.25325428941968\times 10^{-17}=0.0000000000000000125325428941968\approx 0$.
︡bb25338c-76dd-4540-9dee-0c27aace6328︡{"md":"At first, this looks like a number around $1\\frac{1}{4}$. But this is actually a number close to $0$:\n\n$1.25325428941968\\textrm{e-}17 =1.25325428941968\\times 10^{-17}=0.0000000000000000125325428941968\\approx 0$.\n"}︡
︠adfdb4ae-3631-4c1d-9767-107c9e5b7f02i︠
%md
Caution: This use of the letter "e" has nothing to do with the number $e\approx2.71828$ (the base of the natural logarithm).
︡2f4c21c2-907f-4071-892a-24d2ebda5c17︡{"md":"Caution: This use of the letter \"e\" has nothing to do with the number $e\\approx2.71828$ (the base of the natural logarithm).\n"}︡
︠f666e9b9-bf53-4bbf-85ac-cd7791cac9e1i︠
%md
## Standard Functions

Sage includes the standard functions you learned in precalculus, including trigonometric, exponential, and logarithmic functions.

### Square root

The Sage command for square root is sqrt.

︡a26a5690-e7b5-422d-8209-ab966d499c26︡{"md":"## Standard Functions\n\nSage includes the standard functions you learned in precalculus, including trigonometric, exponential, and logarithmic functions.\n\n### Square root\n\nThe Sage command for square root is sqrt.\n\n"}︡
︠a02ed192-b4bc-4978-8395-9e72537a78ef︠
sqrt(2)
︡cc1a9884-3fdc-4ecc-81f3-e463acdae3bd︡{"stdout": "sqrt(2)"}︡
︠77ed8095-d906-46de-b4b9-5f3f050403f0i︠
%md
Note that Sage keeps it exact using integers. To convert to a decimal, use N().
︡2acee816-84ad-40cf-b53d-bd96ada08a19︡{"md":"Note that Sage keeps it exact using integers. To convert to a decimal, use N().\n"}︡
︠054072f4-b5d6-4fcf-b8e0-9e0065a91b1c︠
N(sqrt(2))
︡0499dbe2-d852-4919-bc1a-9e69782fadfa︡{"stdout":"1.41421356237310\n"}︡
︠46dbc44c-595b-4379-ba4e-5a7d83c83629i︠
%md
However, notice that if you start with a decimal, Sage will output a decimal.
︡6764d6af-67c5-4d14-815b-392049abfee5︡{"md":"However, notice that if you start with a decimal, Sage will output a decimal.\n"}︡
︠2774916c-efce-4497-bc4c-6914eb3446b4︠
sqrt(2.5)
︡af389230-5c03-4ef0-b137-460817b25d34︡{"stdout":"1.58113883008419\n"}︡
︠2ad3aaaa-b613-4559-bf9a-42f0a2b97bb9i︠
%md
Compare with the following:
︡7d0f72a2-51f0-486c-95c7-7357d537e532︡{"md":"Compare with the following:\n"}︡
︠2875d705-0042-4bf6-b4a2-5b0d1323d972︠
sqrt(5/2)
N(sqrt(5/2))
︡457086fc-4489-4b2b-a06b-29258f1eda71︡{"stdout":"sqrt(5/2)\n"}︡{"stdout":"1.58113883008419\n"}︡
︠cac43cae-486c-47a3-915a-adb71f35bdeei︠
%md
### Other roots

If you want a root other than the square root, use a fractional power. For example, here's a cube root (note the parentheses).

︡b5805f3d-cb19-4365-ba94-d7ff2955b0c6︡{"md":"### Other roots\n\nIf you want a root other than the square root, use a fractional power. For example, here's a cube root (note the parentheses).\n\n"}︡
︠95e46867-0aa9-439e-821b-f747ab729ecc︠
2^(1/3)
N(2^(1/3))
︡f6714018-f612-4bb1-b8d1-2d4fdf0a25f3︡{"stdout":"2^(1/3)\n"}︡{"stdout":"1.25992104989487\n"}︡
︠5a7acfba-0633-40b9-ad0c-eaa52c75d6f5i︠
%md
Don't forget the parentheses around 1/3. This is *not* the same as 2^1/3.
︡bbde7020-0812-4477-90e5-dc999fb1292f︡{"md":"Don't forget the parentheses around 1/3. This is *not* the same as 2^1/3.\n"}︡
︠7e96c558-b0d6-42e8-a454-58922699a017︠
2^1/3
N(2^1/3)
︡e1d880a5-e967-4088-816c-2c572df37023︡{"stdout":"2/3\n"}︡{"stdout":"0.666666666666667\n"}︡
︠f74425df-c39a-45ee-b77b-db1d7b37323fi︠
%md
Here's a fourth root.
︡8a2665ad-0e7f-4e25-9426-fe88233dcdd3︡{"md":"Here's a fourth root.\n"}︡
︠51ad662e-407b-437f-88e4-59b8e5976d14︠
8^(1/4)
N(8^(1/4))
︡5e0be3fc-4d49-4e29-9596-364d87e3f88b︡{"stdout":"8^(1/4)\n"}︡{"stdout":"1.68179283050743\n"}︡
︠d52851f6-8dbd-49d5-b036-419ac0e3bbeai︠
%md
### Trig functions

Notice how Sage keeps it exact again.

Note that pi = $\pi$.

Another note: Sage assumes all angles are measured in radians.

︡70b401d9-871d-4c9a-a957-f7391e8253db︡{"md":"### Trig functions\n\nNotice how Sage keeps it exact again.\n\nNote that pi = $\\pi$.\n\nAnother note: Sage assumes all angles are measured in radians.\n\n"}︡
︠46776ab2-5ec9-445f-88d1-04b9ef3c44bb︠
sin(3)
N(sin(3))
︡0f8f3590-f541-48c2-9fd4-11c1fe5966c5︡{"stdout":"sin(3)\n"}︡{"stdout":"0.141120008059867\n"}︡
︠70d4c51f-fd9d-4562-a0a4-587221a5e249s︠
sin(pi)
sin(-pi/2)
︡65a3db01-d141-45a7-9788-bcf94fba95ba︡{"stdout":"0\n"}︡{"stdout":"-1\n"}︡{"done":true}︡
︠364f4f8b-2e54-4c2d-b119-adcc22f13c04i︠
%md
In the example below, note the 5*pi/4 - the multiplication must be explicit - Sage will not accept 5pi/4.
︡5b244757-d537-4ab4-a09e-5b70660c220c︡{"md":"In the example below, note the 5*pi/4 - the multiplication must be explicit - Sage will not accept 5pi/4.\n"}︡
︠3259c420-45bd-4816-9d2e-e2ea3903a28c︠
sin(5*pi/4)
sin(pi/12)
︡bb1eeb6e-cfd2-46a5-8510-00b5eb66d21a︡{"stdout": "-1/2*sqrt(2)\n-1/12*sqrt(6)*(sqrt(3) - 3)"}︡
︠c2af8714-314d-4b16-a457-6eb6bfbd3f9ai︠
%md
Notice that Sage knows many exact values for the trig functions - even some that you did not memorize in precalc.

These answers are kind of hard to read. You can make them look nicer by using the "show" command.

︡f8b22c20-8199-4023-925b-66a69ee6a980︡{"md":"Notice that Sage knows many exact values for the trig functions - even some that you did not memorize in precalc.\n\nThese answers are kind of hard to read. You can make them look nicer by using the \"show\" command.\n\n"}︡
︠263f3a9c-377f-4150-8ec3-5f4fe6aae13f︠
show(sin(5*pi/4))
show(sin(pi/12))
︡877c884f-bc68-4616-82fb-ad55995bccad︡{"html":"<div align='center'>$\\displaystyle -\\frac{1}{2} \\, \\sqrt{2}$</div>"}︡{"html":"<div align='center'>$\\displaystyle -\\frac{1}{12} \\, \\sqrt{6} {\\left(\\sqrt{3} - 3\\right)}$</div>"}︡
︠6b2484bd-2a8d-4c8d-9cb5-a797a0634042︠
cos(pi/7)
N(cos(pi/7))
︡dcf4ee13-85f5-4c9b-95a3-3c71fd44186b︡{"stdout":"cos(1/7*pi)\n"}︡{"stdout":"0.900968867902419\n"}︡
︠f0e90275-09db-4063-84f6-76f67704f22f︠
tan(1/2)
N(tan(1/2))
tan(0.5)
︡b0f1794f-1488-4fc7-894a-7e32c96a583a︡{"stdout":"tan(1/2)\n"}︡{"stdout":"0.546302489843790\n"}︡{"stdout":"0.546302489843790\n"}︡
︠a7a1ac06-aefd-41e2-bb80-341b80e2fb5a︠
sec(2)
N(sec(2))
︡dddd43e2-a3b7-453e-ba19-d71602384c37︡{"stdout":"sec(2)\n"}︡{"stdout":"-2.40299796172238\n"}︡
︠b8485be1-7f0e-4748-95d3-a45ea0f09fdb︠
csc(pi/4)
N(csc(pi/4))
︡162378f3-9e1e-4d84-ad8f-a1dfbdb43992︡{"stdout":"sqrt(2)\n"}︡{"stdout":"1.41421356237310\n"}︡
︠dd2a7e31-e11a-4f71-9bb4-4290f18868c0︠
cot(pi/3)
N(cot(pi/3))
︡586c129e-42db-471e-9c6f-78a48e0bc2d3︡{"stdout":"1/3*sqrt(3)\n"}︡{"stdout":"0.577350269189626\n"}︡
︠42ae52ef-c770-45c8-aa5b-b283db7eae56︠
show(cot(pi/3))
︡eac17235-56c4-4586-b715-b28757d44798︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{3} \\, \\sqrt{3}$</div>"}︡
︠faf38bf5-5c9f-47fc-8b71-b13ae12a522fi︠
%md
### Inverse trig functions

Sage uses arcsin, arccos, and arctan, *not* $\sin^{-1}$, $\cos^{-1}$, and $\tan^{-1}$.
︡27714861-9721-4328-8ebb-0196f2bb9f71︡{"done":true,"md":"### Inverse trig functions\n\nSage uses arcsin, arccos, and arctan, *not* $\\sin^{-1}$, $\\cos^{-1}$, and $\\tan^{-1}$."}
︠57eebef8-c240-4e6d-b976-e2c84dff136b︠
arcsin(.5)
arccos(.25)
arctan(pi/2)
︡36cc55dd-3004-4890-9895-fb3b11f26e4e︡{"stdout":"0.523598775598299\n"}︡{"stdout":"1.31811607165282\n"}︡{"stdout":"arctan(1/2*pi)\n"}︡
︠2dfb6372-37df-423d-a862-a63b2e2eddbdi︠
%md
Let's convert that last one to a decimal. Remember that _ accesses the last output.
︡a64dbaff-c721-4d48-b9bf-9cf432c0249a︡{"md":"Let's convert that last one to a decimal. Remember that _ accesses the last output.\n"}︡
︠f334b0a1-f91b-465b-b8b9-e490e34f43dd︠
N(_)
︡618abdc5-b70e-41f4-a9fa-12d4f3955ef5︡{"stdout":"1.00388482185389\n"}︡
︠c9c1464f-1681-43f3-86f0-461ecc3c2301i︠
%md
### Exponential functions

For exponential functions, just use ^ as we did above.

The built-in function "exp" is the exponential base e; this is equivalent to "e^" (recall, $e\approx2.71828$).

Notice Sage's use of exact values.
︡c66160e2-879f-43c4-b058-70a130e2ec3e︡{"md":"### Exponential functions\n\nFor exponential functions, just use ^ as we did above.\n\nThe built-in function \"exp\" is the exponential base e; this is equivalent to \"e^\" (recall, $e\\approx2.71828$).\n\nNotice Sage's use of exact values.\n"}︡
︠c5a68359-d5bd-4521-b5b9-d0ac13973143︠
e^3
︡d1c86f55-a475-4421-b636-e77f503f0cf7︡{"stdout": "e^3"}︡
︠6740d7db-f32e-4570-a7e5-0f653c1208dd︠
N(e^3)
︡af6af5ea-d5e4-4284-9a8b-fdd11402fcf4︡{"stdout":"20.0855369231877\n"}︡
︠35fb5267-2d2e-4884-85d0-1717bcf59a8b︠
exp(3)
︡cbea6508-5756-48cc-988c-a36f4923e818︡{"stdout": "e^3"}︡
︠f9f03002-ff70-49f4-b779-d64fe6f7ca96︠
10^6
︡d2643cea-008c-4db7-89cd-c79a85c204e1︡{"stdout": "1000000"}︡
︠b73ef2f8-097c-4803-b768-f49acb25d8e1︠
3^(3/5)
N(3^(3/5))
3^0.6
︡65188b0a-b524-496c-86d9-069e7beee7dd︡{"stdout":"3^(3/5)\n"}︡{"stdout":"1.93318204493176\n"}︡{"stdout":"1.93318204493176\n"}︡
︠b77019ff-4af2-47a3-a0fe-c6e105a53b38i︠
%md
### Logarithmic functions

In Sage, the function "log" is the logarithm **base e**, *not* base 10 as on your calculator.

︡7e412475-b2cf-4504-b6d3-1747cfb49aac︡{"md":"### Logarithmic functions\n\nIn Sage, the function \"log\" is the logarithm **base e**, *not* base 10 as on your calculator.\n\n"}︡
︠c7a98165-5082-4421-94d0-fef57789c2bd︠
ln(e^2)
log(e^2)
︡cff608cc-b5a2-4b52-887d-b9e965202c86︡{"stdout":"2\n"}︡{"stdout":"2\n"}︡
︠9fcf7f55-e653-4c55-8e44-230ed105ce30︠
log(10^3)
N(log(10^3))
︡5e091dfe-6dbe-4480-9c48-782313b75fa9︡{"stdout":"log(1000)\n"}︡{"stdout":"6.90775527898214\n"}︡
︠edf4db50-8c8d-4517-9f02-e1bfa836784ei︠
%md
Sage can also handle logarithms with other bases: log(x,b) = $\log_b x$

Here's $\log_{10}10^3=3$

︡e9160f72-58b8-4ca6-860f-0b0c59e57669︡{"md":"Sage can also handle logarithms with other bases: log(x,b) = $\\log_b x$\n\nHere's $\\log_{10}10^3=3$\n\n"}︡
︠819cd7cb-30da-4a82-9e24-f554f9a008e8︠
log(10^3,10)
︡313be30e-f3f0-4a5a-8f0a-daa2d181d8cb︡{"stdout": "3"}︡
︠2a53fa01-bae4-4758-9c60-90cf5480603ci︠
%md
Here's $\log_2 1800\approx 10.81$. Notice Sage gives an exact answer in terms of log unless you ask otherwise.
︡35985c08-b63e-4195-9737-d550fffe9873︡{"md":"Here's $\\log_2 1800\\approx 10.81$. Notice Sage gives an exact answer in terms of log unless you ask otherwise.\n"}︡
︠47866b33-ff7a-499c-ba5b-89ac87dcdefb︠
log(1800,2)
N(log(1800,2))
︡4cfd576b-6cf8-48c7-b2b0-14b2d2218556︡{"stdout":"log(1800)/log(2)\n"}︡{"stdout":"10.8137811912170\n"}︡
︠8255e432-bd1a-458e-a4cc-a58dae54cfc0i︠
%md
## Explicit Multiplication

When we write mathematical expressions, we often omit the multiplication symbol. For example, when we write $10\cos(2)$ we mean $10\cdot\cos(2)$.

When we write $3(4+8)$ we mean $3\cdot(4+8)$.

Implicit multiplication like in the above examples is **not allowed** in Sage. Every multiplication must be explicitly typed using the asterisk * (Shift-8).

If we try to run 10cos(2) we get a "SyntaxError." [When you see lots of red in the output, that's an error of some sort. You can ignore everything at the beginning. The nature of the error is in the last line.]
︡cbbd1e6e-656a-4d4c-a6a7-37ea64d9dbbc︡{"md":"## Explicit Multiplication\n\nWhen we write mathematical expressions, we often omit the multiplication symbol. For example, when we write $10\\cos(2)$ we mean $10\\cdot\\cos(2)$.\n\nWhen we write $3(4+8)$ we mean $3\\cdot(4+8)$.\n\nImplicit multiplication like in the above examples is **not allowed** in Sage. Every multiplication must be explicitly typed using the asterisk * (Shift-8).\n\nIf we try to run 10cos(2) we get a \"SyntaxError.\" [When you see lots of red in the output, that's an error of some sort. You can ignore everything at the beginning. The nature of the error is in the last line.]\n"}︡
︠4e1ee18c-b276-431c-977e-65a07a8505b3︠
10cos(2)
︡f575b0aa-9718-4fcd-9733-c29e4f8b24b8︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sagemathcloud/sage_server.py\", line 879, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"<string>\", line 1\n    10cos(Integer(2))\n        ^\nSyntaxError: invalid syntax\n"}︡
︠bca8598b-9971-4eb2-8c59-72a71d21dc37i︠
%md
We get an error if we try 3(4+8) as well. Sage thinks we are using function notation, but "3" can't be the name of a function, so we get a "TypeError."
︡c37d3835-6801-4b6b-b1d3-0cf6a92958bd︡{"md":"We get an error if we try 3(4+8) as well. Sage thinks we are using function notation, but \"3\" can't be the name of a function, so we get a \"TypeError.\"\n"}︡
︠45d1405b-3ceb-4912-982a-31bb17b039ff︠
3(4+8)
︡8d990da1-3d51-42a7-b093-0ca0d44841d9︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sagemathcloud/sage_server.py\", line 879, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\nTypeError: 'sage.rings.integer.Integer' object is not callable\n"}︡
︠fccebbbe-f65f-4043-bed6-0de6a1fea593i︠
%md
Explicit multiplication is extremely important when you are multiplying binomials. Sage may not give you an error, but it will not give you the correct answer. Compare the following two examples:
︡5f944ca4-5bdc-47fd-80ba-99d28ba85c77︡︡{"done":true,"md":"Explicit multiplication is extremely important when you are multiplying binomials. Sage may not give you an error, but it will not give you the correct answer. Compare the following two examples:"}
︠28656b9b-e0fa-4a7c-a214-6013c9171449︠
(x+2)(x+1)
︡68c770b1-0b43-4b94-a478-05840198eea6︡︡{"stdout":"x + 3\n","done":false}︡{"done":true}
︠7f91fbe6-d794-47e5-9731-90b6b5094da4︠
(x+2)*(x+1)
︡f893318f-2d36-42e1-a928-63229bb16f3f︡︡{"stdout":"(x + 2)*(x + 1)\n","done":false}︡{"done":true}
︠8cbc4355-15a8-4fb5-b9d7-ab8968d06307i︠
%md
Notice that Sage does something in the first example (no error indicated), but what it does is wrong (or, at least, not what we expect)! [When you do (x+2)(x+1) Sage actually substitutes x+1 for x in x+2.]

We know $(x+2)(x+1)=x^2+3x+2$, which is definitely not $x+3$.
︡b8f4957c-138b-47ad-a878-342648686815︡{"done":true,"md":"Notice that Sage does something in the first example (no error indicated), but what it does is wrong (or, at least, not what we expect)! [When you do (x+2)(x+1) Sage actually substitutes x+1 for x in x+2.]\n\nWe know $(x+2)(x+1)=x^2+3x+2$, which is definitely not $x+3$."}
︠04c11624-139f-4dc0-86e2-367d7764dd19i︠
%md
The moral is:

<font size='4'>**Make sure you explicitly type every multiplication, every time - no exceptions!**</font>

<br>
On the other hand, don't put multiplication where it doesn't belong. For example, there is no multiplication involved in log(4). This is **not** log*(4) - log is a function, and $\log(4)$ is function notation, just like $\sin(4)$ or $f(4)$ [for some function $f$].
︡5ad93739-0afb-41ae-8892-fe93eeb339a9︡︡{"done":true,"md":"The moral is:\n\n<font size='4'>**Make sure you explicitly type every multiplication, every time - no exceptions!**</font>\n\n<br>\nOn the other hand, don't put multiplication where it doesn't belong. For example, there is no multiplication involved in log(4). This is **not** log*(4) - log is a function, and $\\log(4)$ is function notation, just like $\\sin(4)$ or $f(4)$ [for some function $f$]."}
︠d9a9b5a5-2c2a-48b9-88b3-fd45833ab7eei︠
%md
<font size='4'> **Complete Question 2 of the assignment.** </font>
︡29fb38ad-77b7-4488-85e0-c177427b3e61︡{"md":"<font size='4'> **Complete Question 2 of the assignment.** </font>\n"}︡
︠4103a961-bfaa-42a3-9d4e-6a7365d7b308i︠
%md
## Defining your own functions

You can define new functions with whatever name you want (some characters are not allowed) by typing a function name followed by a variable name in parentheses, then an equal sign, then the formula for the function, and finally pressing [SHIFT]-[ENTER].

For example, let's define $f(x)=5x^2+5$.

Caution: Don't forget to type 5*x^2 - the multiplication must be explicit.

︡d9863a29-5702-44eb-a65d-06ac22f2b431︡{"done":true,"md":"## Defining your own functions\n\nYou can define new functions with whatever name you want (some characters are not allowed) by typing a function name followed by a variable name in parentheses, then an equal sign, then the formula for the function, and finally pressing [SHIFT]-[ENTER].\n\nFor example, let's define $f(x)=5x^2+5$.\n\nCaution: Don't forget to type 5*x^2 - the multiplication must be explicit."}
︠a9d713ef-6039-4a17-ab3b-31015f050cc9︠
f(x)=5*x^2+5
︡a6862058-8538-4608-99af-7e6df1a4ecca︡
︠079d118d-ab5c-4776-945c-11d1ce27537di︠
%html
<p>Once a function has been defined (make sure you run it), then you can use that function in other cells.</p>
<p>Note: If you close a worksheet and return to it later, you may have to run the function definition again before using it.

︡f903721c-40ee-42d1-9f07-fc0a30f00ede︡{"done":true,"html":"<p>Once a function has been defined (make sure you run it), then you can use that function in other cells.</p>\n<p>Note: If you close a worksheet and return to it later, you may have to run the function definition again before using it."}
︠410950a7-9821-446d-92f1-9a887efacfc3︠
f(2)
︡0126c324-f867-4a9e-aca2-6be788a49eb6︡{"stdout":"25\n"}︡
︠a47f9c90-247c-4c2a-8596-b8f268b61a0e︠
f(14)
︡2c5e6b87-be6c-4f36-94af-eb7f0a87f714︡{"stdout":"985\n"}︡
︠23c1c514-1209-4aa1-bdb2-eee3b36eed52︠
f(a+1)
︡e1e8e54c-1d3e-431f-b4d2-692e9aaba13e︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sagemathcloud/sage_server.py\", line 865, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\nNameError: name 'a' is not defined\n"}︡
︠bf575c59-dc12-49bf-9145-1ae49a6eff96i︠
%md
Oops, we got an error: "name 'a' is not defined."

Sage automatically defines one variable called "x." If you want to use another variable, you have to declare it using the "var" command.
︡2bcaf1a3-3daf-4532-8884-0a68b18442df︡{"done":true,"md":"Oops, we got an error: \"name 'a' is not defined.\"\n\nSage automatically defines one variable called \"x.\" If you want to use another variable, you have to declare it using the \"var\" command."}
︠2073d6bc-d680-4f07-9154-e437ea773adai︠
%md
## Declaring Variables

To declare a variable called "a," type %var a and press [SHIFT]-[ENTER]. You can now use the variable "a" anywhere in the worksheet.
︡8c8d8d5a-8aa5-423b-88ee-fd0db788575e︡{"done":true,"md":"## Declaring Variables\n\nTo declare a variable called \"a,\" type %var a and press [SHIFT]-[ENTER]. You can now use the variable \"a\" anywhere in the worksheet."}
︠fbd9215f-bc7c-4ff1-92f6-e1456dd63dfd︠
%var a
f(a+1)
︡b9400010-8f14-4e5a-81ef-9bf10ff414bb︡{"stdout":"5*(a + 1)^2 + 5\n"}︡
︠109de8f0-5b7e-4ac0-98e0-d4f44a44dc90i︠
%md
Here we use a variable called "b."
︡375161ef-cb82-41ed-af08-36c151c15bb2︡{"md":"Here we use a variable called \"b.\"\n"}︡
︠ad6c83b4-cf55-4a7a-b2a9-e5d1c884bfd5︠
%var b
f(b)
︡3588c118-9483-47ab-8738-5aa9f84e800d︡{"stdout":"5*b^2 + 5\n"}︡
︠219d23bb-7669-4caf-b890-f1a3529ca5eai︠
%md
You can use new variables in function definitions without declaring them.

︡dfb88f02-df5f-409c-89e3-58eb21cadd60︡{"md":"You can use new variables in function definitions without declaring them.\n\n"}︡
︠5a661036-3b3d-4547-9bcd-d82f260e3673︠
g(t)=t^3-2*t+4
g(3)
︡99802c1a-c7fb-4ded-b717-01ba0ce18233︡{"stdout":"25\n"}︡
︠379c5061-145a-4364-a487-9cc37ddc2034︠
h(w)=sqrt(w)-w^2
h(4)
︡64f111e2-a18a-4a04-b0d2-6a6a7c6b2901︡{"stdout":"-14\n"}︡
︠ba5e1bf6-796f-40a3-9ab5-bb69372e8aaai︠
%md
You do not have to declare variables that are set equal to a number.
︡6b698e78-7702-4f84-983d-3118bc363459︡{"md":"You do not have to declare variables that are set equal to a number.\n"}︡
︠5eb29dd9-d695-4cf0-b5a5-47273740aa11︠
z=22
f(z)
︡dfb7f7bf-74c3-4d9d-9882-b20c559af273︡{"stdout":"2425\n"}︡
︠6a9baf12-db52-4f30-b73c-8b4f272d37c9i︠
%md
In the example above, we do not have to declare z, since z is not really a variable at all, it's just a different way of writing 22.

<br>

You also don't have to declare a variable that is set equal to other variables.
︡e9d27a26-9707-410c-b384-7f5fe39e2b87︡{"md":"In the example above, we do not have to declare z, since z is not really a variable at all, it's just a different way of writing 22.\n\n<br>\n\nYou also don't have to declare a variable that is set equal to other variables.\n"}︡
︠1bced690-76f7-4b2d-9d60-20a7e0dcb754︠
xyz=a+b
f(xyz)
︡77f43a0b-1040-4795-bacd-1d30449c3bd9︡{"stdout":"5*(a + b)^2 + 5\n"}︡
︠0e158275-16a2-4208-bbf6-21daf9737646i︠
%md
Here xyz is just another name for a+b, and we already declared a and b above.
︡609d6ad9-8576-4303-99d6-ab7df24cc87f︡{"md":"Here xyz is just another name for a+b, and we already declared a and b above.\n"}︡
︠17717615-e304-40dc-9689-00e66007b05bi︠
%md
If we later declare xyz to be a variable, it will erase the previous assignment.
︡650dad49-fdd9-4f16-bad7-15e0eb9bb1e7︡{"md":"If we later declare xyz to be a variable, it will erase the previous assignment.\n"}︡
︠56f73e3e-3481-4015-b85d-5fcc645a9fe5︠
%var xyz
f(xyz)
︡bef0143e-a760-47f6-af3f-b3112edf54f9︡{"stdout":"5*xyz^2 + 5\n"}︡
︠44e466f0-8a99-40cb-bd93-80416a2be1fai︠
%html
<p>You can also declare multiple variables at once - just separate with commas:</p>

︡cc5d13e5-2432-4e25-accb-1bb479427d93︡{"html":"<p>You can also declare multiple variables at once - just separate with commas:</p>\n\n"}︡
︠8b5df4e1-658a-4955-9c90-b30c76f7e2b1︠
%var x1, x2, x3
f(x1)
g(x2)
h(x3)
︡30446c8a-4cbf-411f-a9c2-2c59003b12f8︡{"stdout":"5*x1^2 + 5\n"}︡{"stdout":"x2^3 - 2*x2 + 4\n"}︡{"stdout":"-x3^2 + sqrt(x3)\n"}︡
︠769e7207-d3e3-4168-85e4-2a39490dca16︠
%var u, v, w
f(u)*g(v)/h(w)
︡2d8ea82f-af0d-431d-ad73-1df450fe332b︡{"stdout":"-5*(v^3 - 2*v + 4)*(u^2 + 1)/(w^2 - sqrt(w))\n"}︡
︠5782f49e-9af9-44b7-b209-1994e7956c8ai︠
%md
<font size='4'> **Complete Question 3 of the assignment.** </font>
︡576559f7-7740-4edd-b457-029c57731016︡{"md":"<font size='4'> **Complete Question 3 of the assignment.** </font>\n"}︡
︠031caefb-960c-4208-8198-cfedf4b4e791i︠
%md
## Adding Comments

If you want to add a comment to your input code, then type #. Anything after the # will be ignored when the input is run.
︡311d9fa0-74c6-4fcd-8785-147e82d27f8d︡{"md":"## Adding Comments\n\nIf you want to add a comment to your input code, then type #. Anything after the # will be ignored when the input is run.\n"}︡
︠2fa749d3-824c-4ac2-bc43-48739a077516︠
#This line will be ignored.
1+5-8
#If I leave off the # sign, Sage will return an error. It would try to interpret this text as a command.
︡a1927f2e-8a2f-4cc4-b757-166756100dcf︡{"stdout":"-2\n"}︡
︠ded367bb-a7a0-4e23-a60f-42bcb6d7f4a4︠
This line will not be ignored.
1+5-8
︡a6ded4c1-f50b-4730-94cb-1d6169f2d4da︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sagemathcloud/sage_server.py\", line 879, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"<string>\", line 1\n    This line will not be ignored.\n            ^\nSyntaxError: invalid syntax\n"}︡
︠45f515ce-4715-4b03-94ae-38e21fcd5a30i︠
%md
## Dividing Input Cells

If you want to divide a single input cell into multiple cells (i.e., add a horizontal gray line between them), then put your cursor at the place you want to divide the cell and hit [CTRL]-[;]. A horizontal gray line will be inserted above the line with the cursor.

Try splitting the input cell below.
︡9e03c996-a223-46c4-acc0-0ea32237d68d︡︡{"done":true,"md":"## Dividing Input Cells\n\nIf you want to divide a single input cell into multiple cells (i.e., add a horizontal gray line between them), then put your cursor at the place you want to divide the cell and hit [CTRL]-[;]. A horizontal gray line will be inserted above the line with the cursor.\n\nTry splitting the input cell below."}
︠949409e3-2374-48d4-b819-6b4a9d321e43︠
33+1

22-9
︡c67471e5-d84e-4be6-98aa-8cfe5adacc8c︡{"stdout":"34\n"}︡{"stdout":"13\n"}︡
︠da0c49d4-7ca9-4774-bc43-76e4ab5d5215i︠
%md
## Dealing with Sage Worksheets

* If you want to **download, delete, or rename** a Sage worksheet, click on the check box to the left of the worksheet name in the "Files" list. These options will appear right above the list of files. Or, if the worksheet is open, click on the blue box with a blue "i" in a white circle (it's on the left side of the page), and you will see these options.

* If you want to **create** a new Sage worksheet, click on the button with a + sign that says "New." Type the name you want in the box, and click the button that says "SageMath Worksheet."

* If you want to **print** a worksheet, open it and click on the white button with a printer-shaped icon (it's next to the green "Save" button). This will produce an HTML file that you can open in any web browser for printing.

* If you want to **split your screen** (so you can view two parts of a worksheet at the same time), click on the split view button: it's between the button with the two arrows and the button with the letter "A." If you click once, it splits the screen horizontally; if you click twice, it splits the screen vertically; if you click a third time, it returns to normal.

* **When you are finished with Sage**, click on your name or email address (top right next to a gear icon), and then click "Sign Out."

︡b7fcdefd-c19e-4d6d-a39c-42f334dea1a8︡{"done":true,"md":"## Dealing with Sage Worksheets\n\n* If you want to **download, delete, or rename** a Sage worksheet, click on the check box to the left of the worksheet name in the \"Files\" list. These options will appear right above the list of files. Or, if the worksheet is open, click on the blue box with a blue \"i\" in a white circle (it's on the left side of the page), and you will see these options.\n\n* If you want to **create** a new Sage worksheet, click on the button with a + sign that says \"New.\" Type the name you want in the box, and click the button that says \"SageMath Worksheet.\"\n\n* If you want to **print** a worksheet, open it and click on the white button with a printer-shaped icon (it's next to the green \"Save\" button). This will produce an HTML file that you can open in any web browser for printing.\n\n* If you want to **split your screen** (so you can view two parts of a worksheet at the same time), click on the split view button: it's between the button with the two arrows and the button with the letter \"A.\" If you click once, it splits the screen horizontally; if you click twice, it splits the screen vertically; if you click a third time, it returns to normal.\n\n* **When you are finished with Sage**, click on your name or email address (top right next to a gear icon), and then click \"Sign Out.\""}
︠4c4e8960-8277-47b3-b461-91c56ac48405i︠
%md
## Auto Close Brackets

By default, when you type an open parenthesis or other bracket, Sage automatically inserts a matching close bracket.

However, when you already have a close bracket, if you try to insert another one before it, then it will not insert another bracket (it will assume you are typing the one that is already there). So if you want a second close bracket, you have to put it after the existing one.

Personally, I get so irritated by this, that I have disabled auto close brackets. To do this, open the general settings by clicking on the gear icon with your name next to it (upper right). [Note: this is not the same as the project settings, which has a wrench icon in the upper left.] Then you can uncheck the box with "auto close brackets." The next time you open a Sage worksheet, it will not automatically close brackets.

P.S. I also disable the "Extra button bar," since I never use it and it just takes up space on my screen.
︡69813b01-6c0e-4cce-b165-b50c147c4573︡{"done":true,"md":"## Auto Close Brackets\n\nBy default, when you type an open parenthesis or other bracket, Sage automatically inserts a matching close bracket.\n\nHowever, when you already have a close bracket, if you try to insert another one before it, then it will not insert another bracket (it will assume you are typing the one that is already there). So if you want a second close bracket, you have to put it after the existing one.\n\nPersonally, I get so irritated by this, that I have disabled auto close brackets. To do this, open the general settings by clicking on the gear icon with your name next to it (upper right). [Note: this is not the same as the project settings, which has a wrench icon in the upper left.] Then you can uncheck the box with \"auto close brackets.\" The next time you open a Sage worksheet, it will not automatically close brackets.\n\nP.S. I also disable the \"Extra button bar,\" since I never use it and it just takes up space on my screen."}
︠db192a81-576e-46e8-a272-bda7b01e2406︠










