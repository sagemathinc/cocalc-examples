︠8be3ffb3-89cb-4806-9f75-71ec45f60cdai︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡fa68d004-ee28-479c-988c-8bb33d100460︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠7d07018a-6847-4d30-9746-0ff8e895a568i︠
%md
# Writing in Sage

We want to write text that includes specialized mathematical symbols. For this purpose, Sage utilizes $\LaTeX$, a free program for typesetting technical documents. It is common in scientific fields in general and mathematics in particular. For more information about $\LaTeX$ click [here](http://latex-project.org/).

There are two ways to use Sage and $\LaTeX$: (1) Use $\LaTeX$ commands in a Sage worksheet to make things look nicer; (2) Use Sage commands within a $\LaTeX$ document.

We will look at the first way today. In Math 206 (Calculus 2), we will explore the second option. The advantage of option (2) is that hard copies look nicer.
︡01c06b35-f818-499a-a227-c4d7dcc1c158︡{"done":true,"md":"# Writing in Sage\n\nWe want to write text that includes specialized mathematical symbols. For this purpose, Sage utilizes $\\LaTeX$, a free program for typesetting technical documents. It is common in scientific fields in general and mathematics in particular. For more information about $\\LaTeX$ click [here](http://latex-project.org/).\n\nThere are two ways to use Sage and $\\LaTeX$: (1) Use $\\LaTeX$ commands in a Sage worksheet to make things look nicer; (2) Use Sage commands within a $\\LaTeX$ document.\n\nWe will look at the first way today. In Math 206 (Calculus 2), we will explore the second option. The advantage of option (2) is that hard copies look nicer."}
︠7c0d96ea-3349-4676-a0f6-289810874516i︠
%md
## Producing Text Output
To write plain text without any special characters, simply begin an input cell with %md, hit [ENTER], and then type whatever you want.

When you're done, press the green "Run" button. This will produce text output. To hide the input, click on the small triangle next to the line number to the left.

Try to produce some text in the blank input cell below.

The %md tells Sage to interpret the cell using Markdown. Markdown was designed for writing web pages - it's a shortcut for html (which Sage uses for text).

For more about Markdown click [here](http://daringfireball.net/projects/markdown/basics).
︡0a8af901-b74a-4662-a3f5-9bdaadf00e46︡{"done":true,"md":"## Producing Text Output\nTo write plain text without any special characters, simply begin an input cell with %md, hit [ENTER], and then type whatever you want.\n\nWhen you're done, press the green \"Run\" button. This will produce text output. To hide the input, click on the small triangle next to the line number to the left.\n\nTry to produce some text in the blank input cell below.\n\nThe %md tells Sage to interpret the cell using Markdown. Markdown was designed for writing web pages - it's a shortcut for html (which Sage uses for text).\n\nFor more about Markdown click [here](http://daringfireball.net/projects/markdown/basics)."}
︠15a44b1f-0952-4949-9cb1-7317566a52ac︠

︡5bc6479e-d530-4e02-8e59-e45c87c1a69c︡
︠55b0d7af-6213-4ac6-a7b3-d8e128e619b0i︠
%md
## Basics of Markdown

I will review a few of the high points from the web page cited above.

### Headings

To make different levels of headings, precede the heading with one or more pound signs (\#). The more pound signs, the lower the level of heading. [Note: for some reason the Markdown page calles these "headers" rather than "headings."]

For example, typing

\# Heading Level 1

results in

# Heading Level 1

while

\#\#\#\# Heading Level 4

results in

#### Heading Level 4

Note: There needs to be a space after the pound signs.
︡1c41efa5-9184-448f-937e-666a17947e32︡{"done":true,"md":"## Basics of Markdown\n\nI will review a few of the high points from the web page cited above.\n\n### Headings\n\nTo make different levels of headings, precede the heading with one or more pound signs (\\#). The more pound signs, the lower the level of heading. [Note: for some reason the Markdown page calles these \"headers\" rather than \"headings.\"]\n\nFor example, typing\n\n\\# Heading Level 1\n\nresults in\n\n# Heading Level 1\n\nwhile\n\n\\#\\#\\#\\# Heading Level 4\n\nresults in\n\n#### Heading Level 4\n\nNote: There needs to be a space after the pound signs."}
︠52b1e318-edbe-4aaa-bf10-a48edb0a97a5i︠
%md
### Emphasis

If you want to emphasize something (italics), use asterisks:

Input: I want to \*emphasize\* this.

Output: I want to *emphasize* this.

For stronger emphasis (bold), double the asterisks:

Input: I want to \*\*emphasize\*\* this.

Output: I want to **emphasize** this.
︡8bc7398f-81df-461e-98a6-ce38a9fc3c75︡{"done":true,"md":"### Emphasis\n\nIf you want to emphasize something (italics), use asterisks:\n\nInput: I want to \\*emphasize\\* this.\n\nOutput: I want to *emphasize* this.\n\nFor stronger emphasis (bold), double the asterisks:\n\nInput: I want to \\*\\*emphasize\\*\\* this.\n\nOutput: I want to **emphasize** this."}
︠c0bc0083-0db8-4942-8c6a-e97603102f4ai︠
%md
### Lists

To make a bulleted list, use an asterisk for each item (followed by a space):

\* Item 1

\* Item 2

\* Item 3

becomes

* Item 1

* Item 2

* Item 3

To make a numbered list, use numbers followed by periods:

1. Item 1

2. Item 2

3. Item 3
︡2001d499-62fc-4ae9-a913-2b30ef1a00ba︡{"done":true,"md":"### Lists\n\nTo make a bulleted list, use an asterisk for each item (followed by a space):\n\n\\* Item 1\n\n\\* Item 2\n\n\\* Item 3\n\nbecomes\n\n* Item 1\n\n* Item 2\n\n* Item 3\n\nTo make a numbered list, use numbers followed by periods:\n\n1. Item 1\n\n2. Item 2\n\n3. Item 3"}
︠2b605cb4-69b6-45f2-8bfb-cc3551dce678i︠
%md
## Editing Text

If you want to edit text output, and the input is hidden, then click on the arrow to the left of the line just above the text. This will open the input that produced the text, which you can then edit. Try it with the text below.

When you're finished, hit the "Run" button to produce the output again.
︡67e983bc-29cc-426d-ab99-8b21b1d88206︡{"done":true,"md":"## Editing Text\n\nIf you want to edit text output, and the input is hidden, then click on the arrow to the left of the line just above the text. This will open the input that produced the text, which you can then edit. Try it with the text below.\n\nWhen you're finished, hit the \"Run\" button to produce the output again."}
︠26727c82-8afb-4203-b2c8-5d35143b95d4i︠
%md
Try to edit this text.
︡8101eb54-c56f-4674-8d52-bfd4093e7bab︡{"md":"Try to edit this text.\n"}︡
︠e7f09ef3-a7b7-4faf-9834-df6eb143ad22i︠
%md
## Deleting Text Cells

If you want to delete an entire text cell, position the cursor before it and hit [DELETE] until it's gone (this will delete both the ouput and the hidden input that produced it).

You may have to create a new input cell in order to position the cursor. Try to delete the text output below.

**Be careful when you delete!** When you delete the horizontal gray line right before text output, Sage will delete the input that produced the text, along with the output.

If you want to delete the output and keep the input, then click on the arrow to open the input, position the cursor before the output, and hit [DELETE]. (This may merge the current input cell with the following input cell, so watch out.)
︡2c519347-abce-4c93-808a-4f4b653b9964︡{"done":true,"md":"## Deleting Text Cells\n\nIf you want to delete an entire text cell, position the cursor before it and hit [DELETE] until it's gone (this will delete both the ouput and the hidden input that produced it).\n\nYou may have to create a new input cell in order to position the cursor. Try to delete the text output below.\n\n**Be careful when you delete!** When you delete the horizontal gray line right before text output, Sage will delete the input that produced the text, along with the output.\n\nIf you want to delete the output and keep the input, then click on the arrow to open the input, position the cursor before the output, and hit [DELETE]. (This may merge the current input cell with the following input cell, so watch out.)"}
︠757db63f-0f46-488f-a7dc-bf22c0663970i︠
%md
Delete this text.
︡e9695e17-e241-4f81-b063-6b60300ccbe8︡{"done":true,"md":"Delete this text."}
︠4e13a36d-d8dc-4536-b9ff-af04dc82c444i︠
%md
## Basics of $\LaTeX$

Now we're ready to type some math.

Whatever you want Sage to interpret using $\LaTeX$ should be enclosed by dollar signs (\$).

Compare f(x)=x^2+3x+2 with $f(x)=x^2+3x+2$.

The first is what you get if you just type plain text. The second is what you get if you type \$f(x)=x^2+3x+2\$.

The dollar signs tell Sage to use $\LaTeX$, which typesets the formula in a much more appealing way.

Using single dollar signs produces typeset math inline. If you have an equation or formula that you want set off from the rest of the text, enclose it in double dollar signs (display mode).

For example, typing \$\$f(x)=x^2+3x+2\$\$ produces $$f(x)=x^2+3x+2$$
︡7bb4db43-7bcf-4852-a8a4-cababca95f9f︡{"md":"## Basics of $\\LaTeX$\n\nNow we're ready to type some math.\n\nWhatever you want Sage to interpret using $\\LaTeX$ should be enclosed by dollar signs (\\$).\n\nCompare f(x)=x^2+3x+2 with $f(x)=x^2+3x+2$.\n\nThe first is what you get if you just type plain text. The second is what you get if you type \\$f(x)=x^2+3x+2\\$.\n\nThe dollar signs tell Sage to use $\\LaTeX$, which typesets the formula in a much more appealing way.\n\nUsing single dollar signs produces typeset math inline. If you have an equation or formula that you want set off from the rest of the text, enclose it in double dollar signs (display mode).\n\nFor example, typing \\$\\$f(x)=x^2+3x+2\\$\\$ produces $$f(x)=x^2+3x+2$$\n"}︡
︠2d2f1905-7696-4fbf-a9e0-98400cd5cd0bi︠
%md
## Miscellaneous Symbols

Here are various symbols that may be useful in math. Notice the common theme: $\LaTeX$ commands are preceded by a backslash (\\).

To get "approximately equal to," use \approx. For example, \$x\approx 20\$ produces $x\approx20$.

To get the plus or minus symbol, use \pm. For example, \$\pm 3\$ produces $\pm3$.

To get a Greek letter, type a backslash and write out the name of the letter. For example, \$\\pi\$ produces $\pi$ and \$\\alpha\$ produces $\alpha$.

For the capital Greek letters, capitalize the first letter: \$\\Pi\$ produces $\Pi$ and \$\\Sigma\$ produces $\Sigma$.

[Note: If the capital Greek letter is the same as the Latin capital, then the Greek won't work. For example, \$\\Alpha\$ will produce an error, since capital alpha is $A$.]

To get $\ge$ and $\le$, type \$\\ge\$ or \$\\le\$. To get < or >, simply use the keyboard.

︡4e6ce43c-4d02-4d0b-bb8d-e2b26e3538ea︡{"done":true,"md":"## Miscellaneous Symbols\n\nHere are various symbols that may be useful in math. Notice the common theme: $\\LaTeX$ commands are preceded by a backslash (\\\\).\n\nTo get \"approximately equal to,\" use \\approx. For example, \\$x\\approx 20\\$ produces $x\\approx20$.\n\nTo get the plus or minus symbol, use \\pm. For example, \\$\\pm 3\\$ produces $\\pm3$.\n\nTo get a Greek letter, type a backslash and write out the name of the letter. For example, \\$\\\\pi\\$ produces $\\pi$ and \\$\\\\alpha\\$ produces $\\alpha$.\n\nFor the capital Greek letters, capitalize the first letter: \\$\\\\Pi\\$ produces $\\Pi$ and \\$\\\\Sigma\\$ produces $\\Sigma$.\n\n[Note: If the capital Greek letter is the same as the Latin capital, then the Greek won't work. For example, \\$\\\\Alpha\\$ will produce an error, since capital alpha is $A$.]\n\nTo get $\\ge$ and $\\le$, type \\$\\\\ge\\$ or \\$\\\\le\\$. To get < or >, simply use the keyboard."}
︠ef5457de-0e22-4a8a-a511-1cf98ba55672i︠
%md
To display fractions, square roots, etc., you need to know the $\LaTeX$ commands for producing these. Some of these are similar to Sage commands, but there are often important differences.
︡55d90ab0-91c4-43ce-a1a9-69d5ff4f9770︡{"done":true,"md":"To display fractions, square roots, etc., you need to know the $\\LaTeX$ commands for producing these. Some of these are similar to Sage commands, but there are often important differences."}
︠587991d6-6d04-436c-a8e0-2c18085f0fd0i︠
%md
## Fractions

To produce a fraction, type \$\frac{numerator}{denominator}\$.

For example, typing \$\frac{3}{7}\$ produces $\frac{3}{7}$.

Typing \$\frac{x^2+3x+9}{2x-4}\$ produces $\frac{x^2+3x+9}{2x-4}$.

If these fractions are too small, you can make them larger by typing \displaystyle at the beginning:

Typing \$\displaystyle\frac{x^2+3x+9}{2x-4}\$ produces $\displaystyle\frac{x^2+3x+9}{2x-4}$.

Note that \displaystyle is not required when you use double dollar signs (display mode).

Typing \$\$\frac{x^2+3x+9}{2x-4}\$\$ produces $$\frac{x^2+3x+9}{2x-4}$$
︡10d52752-8a25-4625-b3a9-09eb3e1438f6︡{"md":"## Fractions\n\nTo produce a fraction, type \\$\\frac{numerator}{denominator}\\$.\n\nFor example, typing \\$\\frac{3}{7}\\$ produces $\\frac{3}{7}$.\n\nTyping \\$\\frac{x^2+3x+9}{2x-4}\\$ produces $\\frac{x^2+3x+9}{2x-4}$.\n\nIf these fractions are too small, you can make them larger by typing \\displaystyle at the beginning:\n\nTyping \\$\\displaystyle\\frac{x^2+3x+9}{2x-4}\\$ produces $\\displaystyle\\frac{x^2+3x+9}{2x-4}$.\n\nNote that \\displaystyle is not required when you use double dollar signs (display mode).\n\nTyping \\$\\$\\frac{x^2+3x+9}{2x-4}\\$\\$ produces $$\\frac{x^2+3x+9}{2x-4}$$\n"}︡
︠5619999d-9db8-49a1-8dfb-a5c55878a819i︠
%md
## Powers

If you have an exponent that is only one character, you can simply type a caret. For example, typing \$x^2\$ produces $x^2$.

If your exponent has more than one character (whether it's $-1$, $25$, or $x^2-3x+2$), enclose the exponent in curly brackets.

Compare what happens with \$3^-2\$ and \$3^{-2}\$:

$3^-2$ versus $3^{-2}$ [in the first case, only the negative symbol is in the exponent]

Here's another example. To get $3^{x^2-8x+6}$ you type \$3^{x^2-8x+6}\$.

It may be safer to get in the habit of always using curly brackets after the caret.
︡6383e8d3-8d2a-46fc-a8af-e0bd05dded67︡{"done":true,"md":"## Powers\n\nIf you have an exponent that is only one character, you can simply type a caret. For example, typing \\$x^2\\$ produces $x^2$.\n\nIf your exponent has more than one character (whether it's $-1$, $25$, or $x^2-3x+2$), enclose the exponent in curly brackets.\n\nCompare what happens with \\$3^-2\\$ and \\$3^{-2}\\$:\n\n$3^-2$ versus $3^{-2}$ [in the first case, only the negative symbol is in the exponent]\n\nHere's another example. To get $3^{x^2-8x+6}$ you type \\$3^{x^2-8x+6}\\$.\n\nIt may be safer to get in the habit of always using curly brackets after the caret."}
︠39bbc748-9416-4267-b8a8-21b4400131e4i︠
%md
## Roots

To get a square root, use \sqrt{}.

For example, \$\sqrt{2}\$ produces $\sqrt{2}$.

And \$\sqrt{3x^2-5x+1}\$ produces $\sqrt{3x^2-5x+1}$.

<br>
If you want a cube root, 4th root, etc., enclose the root number in square brackets after \sqrt.

For example, \$\sqrt[3]{2}\$ produces $\sqrt[3]{2}$.

And \$\sqrt[8]{\frac{3x+1}{9x+2}}\$ produces $\sqrt[8]{\frac{3x+1}{9x+2}}$.

Or \$\displaystyle\sqrt[8]{\frac{3x+1}{9x+2}}\$ produces $\displaystyle\sqrt[8]{\frac{3x+1}{9x+2}}$.
︡9100237e-1428-4360-bf24-7f9ec2697999︡{"done":true,"md":"## Roots\n\nTo get a square root, use \\sqrt{}.\n\nFor example, \\$\\sqrt{2}\\$ produces $\\sqrt{2}$.\n\nAnd \\$\\sqrt{3x^2-5x+1}\\$ produces $\\sqrt{3x^2-5x+1}$.\n\n<br>\nIf you want a cube root, 4th root, etc., enclose the root number in square brackets after \\sqrt.\n\nFor example, \\$\\sqrt[3]{2}\\$ produces $\\sqrt[3]{2}$.\n\nAnd \\$\\sqrt[8]{\\frac{3x+1}{9x+2}}\\$ produces $\\sqrt[8]{\\frac{3x+1}{9x+2}}$.\n\nOr \\$\\displaystyle\\sqrt[8]{\\frac{3x+1}{9x+2}}\\$ produces $\\displaystyle\\sqrt[8]{\\frac{3x+1}{9x+2}}$."}
︠0f381c55-1cf4-4150-a779-c06a60f8f459i︠
%md
## Limits

To display a limit symbol, you type \lim. To get text below the limit symbol, use an underscore followed by curly brackets.

Here's an example:

\$\lim_{x\to 1}f(x)\$ produces $\lim_{x\to 1}f(x)$. [Notice that \to produces the arrow.]

This usually looks better using \displaystyle:

\$\displaystyle\lim_{x\to 1}f(x)\$ produces $\displaystyle\lim_{x\to 1}f(x)$.

Here's another example:

\$\displaystyle\lim_{h\to 0}\frac{f(x+h)-f(x)}{h}\$ produces $\displaystyle\lim_{h\to 0}\frac{f(x+h)-f(x)}{h}$.

<br>
To get a limit at infinity, use \infty:

Typing \$\displaystyle\lim_{x\to\infty}f(x)\$ produces $\displaystyle\lim_{x\to\infty}f(x)$.

Or typing \$\displaystyle\lim_{x\to -\infty}f(x)\$ produces $\displaystyle\lim_{x\to -\infty}f(x)$.

<br>
For left and right limits, use the caret (^) to put a plus or minus sign in the right spot:

For example, \$\displaystyle\lim_{x\to 1^+}f(x)\$ produces $\displaystyle\lim_{x\to 1^+}f(x)$.

And \$\displaystyle\lim_{x\to 1^-}f(x)\$ produces $\displaystyle\lim_{x\to 1^-}f(x)$.
︡264e2511-d469-48b2-8caa-a66d146c72ec︡{"md":"## Limits\n\nTo display a limit symbol, you type \\lim. To get text below the limit symbol, use an underscore followed by curly brackets.\n\nHere's an example:\n\n\\$\\lim_{x\\to 1}f(x)\\$ produces $\\lim_{x\\to 1}f(x)$. [Notice that \\to produces the arrow.]\n\nThis usually looks better using \\displaystyle:\n\n\\$\\displaystyle\\lim_{x\\to 1}f(x)\\$ produces $\\displaystyle\\lim_{x\\to 1}f(x)$.\n\nHere's another example:\n\n\\$\\displaystyle\\lim_{h\\to 0}\\frac{f(x+h)-f(x)}{h}\\$ produces $\\displaystyle\\lim_{h\\to 0}\\frac{f(x+h)-f(x)}{h}$.\n\n<br>\nTo get a limit at infinity, use \\infty:\n\nTyping \\$\\displaystyle\\lim_{x\\to\\infty}f(x)\\$ produces $\\displaystyle\\lim_{x\\to\\infty}f(x)$.\n\nOr typing \\$\\displaystyle\\lim_{x\\to -\\infty}f(x)\\$ produces $\\displaystyle\\lim_{x\\to -\\infty}f(x)$.\n\n<br>\nFor left and right limits, use the caret (^) to put a plus or minus sign in the right spot:\n\nFor example, \\$\\displaystyle\\lim_{x\\to 1^+}f(x)\\$ produces $\\displaystyle\\lim_{x\\to 1^+}f(x)$.\n\nAnd \\$\\displaystyle\\lim_{x\\to 1^-}f(x)\\$ produces $\\displaystyle\\lim_{x\\to 1^-}f(x)$.\n"}︡
︠0e4ebe4f-6f6a-46cb-ae1a-e36020a71781i︠
%md
## Derivatives

There is no problem using prime notation for derivatives.

For example, type \$f'(x)\$ to get $f'(x)$. [There's an apostrophe after the f - it's hard to see.]

For the second derivative, type \$f''(x)\$ to get $f''(x)$.

For the third derivative, type \$f'''(x)\$ to get $f'''(x)$.

[Caution: If "auto brackets" is checked in your Sage settings, then Sage may produce two single quote marks when you type the apostrophe (one to begin the quote and one to end the quote - Sage assumes you're trying to enclose something in quote marks). Make sure you have the number of "primes" you want.]

For higher order derivatives, use the caret (^).

For example, \$f^{(5)}(x)\$ produces $f^{(5)}(x)$. [Don't forget the curly brackets around the exponent.]

If you want to use Leibniz's notation, type $\frac{d}{dx}$ just like a regular fraction.

For example, \$\frac{d}{dx}f(x)\$ produces $\frac{d}{dx}f(x)$.

Here is an example for the 3rd derivative: \$\frac{d^3}{dx^3}f(x)\$ produces $\frac{d^3}{dx^3}f(x)$.
︡0eaca49d-fd89-4109-a7a9-7c7ab1d49d52︡{"md":"## Derivatives\n\nThere is no problem using prime notation for derivatives.\n\nFor example, type \\$f'(x)\\$ to get $f'(x)$. [There's an apostrophe after the f - it's hard to see.]\n\nFor the second derivative, type \\$f''(x)\\$ to get $f''(x)$.\n\nFor the third derivative, type \\$f'''(x)\\$ to get $f'''(x)$.\n\n[Caution: If \"auto brackets\" is checked in your Sage settings, then Sage may produce two single quote marks when you type the apostrophe (one to begin the quote and one to end the quote - Sage assumes you're trying to enclose something in quote marks). Make sure you have the number of \"primes\" you want.]\n\nFor higher order derivatives, use the caret (^).\n\nFor example, \\$f^{(5)}(x)\\$ produces $f^{(5)}(x)$. [Don't forget the curly brackets around the exponent.]\n\nIf you want to use Leibniz's notation, type $\\frac{d}{dx}$ just like a regular fraction.\n\nFor example, \\$\\frac{d}{dx}f(x)\\$ produces $\\frac{d}{dx}f(x)$.\n\nHere is an example for the 3rd derivative: \\$\\frac{d^3}{dx^3}f(x)\\$ produces $\\frac{d^3}{dx^3}f(x)$.\n"}︡
︠ff5ab84f-ac13-4f3f-b3e4-c3800ddacedfi︠
%md
## Summation Notation

We won't need this until later, but I'll include it here for reference.

To get a summation symbol, type \sum.

For example, \$\sum i^2\$ produces $\sum i^2$.

To add a range of values for the sum, use _ and ^.

For example, \$\sum_{i=0}^{10} i^2\$ produces $\sum_{i=0}^{10} i^2$. [Note the curly brackets around i=0 and 10.]

This will look better with \displaystyle or double dollar signs:

$\displaystyle\sum_{i=0}^{10}i^2$ from \$\displaystyle\sum_{i=0}^{10}i^2\$, or

$$\sum_{i=0}^{10}i^2$$ from \$\$\sum_{i=0}^{10}i^2\$\$
︡59563c68-f1ee-47be-99ec-9d4c4610df9c︡{"md":"## Summation Notation\n\nWe won't need this until later, but I'll include it here for reference.\n\nTo get a summation symbol, type \\sum.\n\nFor example, \\$\\sum i^2\\$ produces $\\sum i^2$.\n\nTo add a range of values for the sum, use _ and ^.\n\nFor example, \\$\\sum_{i=0}^{10} i^2\\$ produces $\\sum_{i=0}^{10} i^2$. [Note the curly brackets around i=0 and 10.]\n\nThis will look better with \\displaystyle or double dollar signs:\n\n$\\displaystyle\\sum_{i=0}^{10}i^2$ from \\$\\displaystyle\\sum_{i=0}^{10}i^2\\$, or\n\n$$\\sum_{i=0}^{10}i^2$$ from \\$\\$\\sum_{i=0}^{10}i^2\\$\\$\n"}︡
︠8309538d-d619-425d-a96e-ac6028ad6f06i︠
%md
## Integrals

To get the integral symbol, type \int.

For example, \$\int f(x)\$ produces $\int f(x)$.

If you want to add the dx, you should add an extra space by typing \, before dx:

\$\int f(x)\,dx\$ produces $\int f(x)\,dx$. [Without \, you get $\int f(x) dx$ - no space between f(x) and dx]

Here's what you get if you add \displaystyle: $\displaystyle\int f(x)\,dx$.

If you want a definite integral, you add a lower limit after an underscore and an upper limit after a caret.

For example, typing \$\int_a^b f(x)\,dx\$ produces $\int_a^b f(x)\,dx$.

Or, with displaystyle you get $\displaystyle\int_a^b f(x)\,dx$.

If a limit of integration is more than one character, then enclose it in curly brackets:

Typing \$\displaystyle\int_{-2}^{18}f(x)\,dx\$ produces $\displaystyle\int_{-2}^{18} f(x)\, dx$.

Here's what the same integral looks like in display mode (double dollar signs): $$\int_{-2}^{18} f(x)\, dx$$
︡526fd37d-a3c8-4459-8579-51233769589c︡{"done":true,"md":"## Integrals\n\nTo get the integral symbol, type \\int.\n\nFor example, \\$\\int f(x)\\$ produces $\\int f(x)$.\n\nIf you want to add the dx, you should add an extra space by typing \\, before dx:\n\n\\$\\int f(x)\\,dx\\$ produces $\\int f(x)\\,dx$. [Without \\, you get $\\int f(x) dx$ - no space between f(x) and dx]\n\nHere's what you get if you add \\displaystyle: $\\displaystyle\\int f(x)\\,dx$.\n\nIf you want a definite integral, you add a lower limit after an underscore and an upper limit after a caret.\n\nFor example, typing \\$\\int_a^b f(x)\\,dx\\$ produces $\\int_a^b f(x)\\,dx$.\n\nOr, with displaystyle you get $\\displaystyle\\int_a^b f(x)\\,dx$.\n\nIf a limit of integration is more than one character, then enclose it in curly brackets:\n\nTyping \\$\\displaystyle\\int_{-2}^{18}f(x)\\,dx\\$ produces $\\displaystyle\\int_{-2}^{18} f(x)\\, dx$.\n\nHere's what the same integral looks like in display mode (double dollar signs): $$\\int_{-2}^{18} f(x)\\, dx$$"}
︠e9f0953b-0e48-49b7-bebd-76539ed21824i︠
%md
## Text within $\LaTeX$

If you put text within dollar signs, all spaces are ignored and everything is placed in italics.

To avoid this, use \text. Compare the following:

\$f(x) and g(x)\$ produces $f(x) and g(x)$

\$f(x) \text{ and } g(x)\$ produces $f(x) \text{ and } g(x)$ [Notice the spaces around "and"]

[Note: you can see that "and" is not the same size as other text. You may want to avoid have "and" within $\LaTeX$ entirely. You could type instead: \$f(x)\$ and \$g(x)\$]
︡4691506e-75cd-4a98-88a4-121093715412︡{"done":true,"md":"## Text within $\\LaTeX$\n\nIf you put text within dollar signs, all spaces are ignored and everything is placed in italics.\n\nTo avoid this, use \\text. Compare the following:\n\n\\$f(x) and g(x)\\$ produces $f(x) and g(x)$\n\n\\$f(x) \\text{ and } g(x)\\$ produces $f(x) \\text{ and } g(x)$ [Notice the spaces around \"and\"]\n\n[Note: you can see that \"and\" is not the same size as other text. You may want to avoid have \"and\" within $\\LaTeX$ entirely. You could type instead: \\$f(x)\\$ and \\$g(x)\\$]"}
︠1c125de1-8513-4d14-8a6d-47de8c0d34abi︠
%md
## Getting $\LaTeX$ Code from Sage

If you have a mathematical expression in Sage, you can convert it to $\LaTeX$ code using the latex(...) command.

For example, in a Sage worksheet type latex(3/4) and hit "Run." The output will be \frac{3}{4}.

Or suppose you run derivative(cos(1/x^5)) in a Sage worksheet, which produces the output 5\*sin(x^(-5))/x^6.

If you want to convert this answer to $\LaTeX$, simply type latex(\_) in the next cell and hit "Run" [remember, \_ recalls the last output; you could also copy and paste to do latex(5\*sin(x^(-5))/x^6)].

Then Sage produces the output \frac{5 \, \sin\left(\frac{1}{x^{5}}\right)}{x^{6}}

[You may notice that the $\LaTeX$ code produced by Sage is more complicated than your own, but it shouldn't be a problem.]
︡28292afc-8729-4b8b-92f8-7c613a13c09b︡{"done":true,"md":"## Getting $\\LaTeX$ Code from Sage\n\nIf you have a mathematical expression in Sage, you can convert it to $\\LaTeX$ code using the latex(...) command.\n\nFor example, in a Sage worksheet type latex(3/4) and hit \"Run.\" The output will be \\frac{3}{4}.\n\nOr suppose you run derivative(cos(1/x^5)) in a Sage worksheet, which produces the output 5\\*sin(x^(-5))/x^6.\n\nIf you want to convert this answer to $\\LaTeX$, simply type latex(\\_) in the next cell and hit \"Run\" [remember, \\_ recalls the last output; you could also copy and paste to do latex(5\\*sin(x^(-5))/x^6)].\n\nThen Sage produces the output \\frac{5 \\, \\sin\\left(\\frac{1}{x^{5}}\\right)}{x^{6}}\n\n[You may notice that the $\\LaTeX$ code produced by Sage is more complicated than your own, but it shouldn't be a problem.]"}
︠b465a0d5-0fd8-49f5-be2d-05f9a6b579f0i︠
%md
Please let me know if I've left off any important symbols, or if you need help with something specialized.

Of course, extensive documentation and examples are available online.

Note: If you click on the arrows next to any of the text cells in the lecture notes, you can see the code that produced it. Feel free to mimic my text.
︡8140b80f-04ac-4b01-a58a-43f9783f4bcd︡{"done":true,"md":"Please let me know if I've left off any important symbols, or if you need help with something specialized.\n\nOf course, extensive documentation and examples are available online.\n\nNote: If you click on the arrows next to any of the text cells in the lecture notes, you can see the code that produced it. Feel free to mimic my text."}
︠46611518-50bf-4e93-9910-49f5067b6d35i︠
%md
A final remark: If you have several mathematical things together, you only need one set of dollar signs around the whole thing; you don't need dollar signs around each individual item.

For example, \$f(x)=\frac{(x+1)(x+2)}{x+1}=x+2\$ [just one set of dollar signs].

You **do not** have to type \$f(x)\$=\$\frac{(x+1)(x+2)}{x+1}\$=$x+2\$
︡0ca4e3f7-bed6-46e1-9195-8f13646b01e9︡{"done":true,"md":"A final remark: If you have several mathematical things together, you only need one set of dollar signs around the whole thing; you don't need dollar signs around each individual item.\n\nFor example, \\$f(x)=\\frac{(x+1)(x+2)}{x+1}=x+2\\$ [just one set of dollar signs].\n\nYou **do not** have to type \\$f(x)\\$=\\$\\frac{(x+1)(x+2)}{x+1}\\$=$x+2\\$"}
︠289a25c5-6666-4008-9dbd-552d63b8fd07︠









