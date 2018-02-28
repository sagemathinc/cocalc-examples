︠fe7e83d7-5799-4f6d-aacc-951e68b8cfbci︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡7c4a53ea-c2f8-4b0c-9133-96dee3ae5cde︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠8cdb1890-23c8-479f-baad-4b75df8df2c0i︠
%md
### Prerequisites:

* Intro to Sage
︡25ba8692-96f8-43d9-a768-4e9713198f06︡{"done":true,"md":"### Prerequisites:\n\n* Intro to Sage"}
︠26f4aa93-eef8-4d88-80d4-f696ca00834di︠
%md
# Sequences

A sequence is simply an ordered list of objects. We will consider countably infinite lists of numbers. Such a sequence may be considered as a function with domain the set of positive integers and codomain the real numbers.

$$f:\mathbb{Z}^+\to\mathbb{R}$$
︡c741e48c-9067-4130-b3f9-bdb2c75bd63b︡{"done":true,"md":"# Sequences\n\nA sequence is simply an ordered list of objects. We will consider countably infinite lists of numbers. Such a sequence may be considered as a function with domain the set of positive integers and codomain the real numbers.\n\n$$f:\\mathbb{Z}^+\\to\\mathbb{R}$$"}
︠d8caf7fa-d64d-4107-b610-cf47f79f7823i︠
%md
The elements (or terms) of a sequence are usually denoted using subscripts rather than function notation: $a_n=f(n)$.

The sequence is then denoted $\{a_n\}$, or more explicitly $\displaystyle\{a_n\}_{n=1}^{\infty}$. The integer $n$ is called the index of $a_n$.
︡226658c5-3fee-42da-990c-4c4a87933d54︡{"done":true,"md":"The elements (or terms) of a sequence are usually denoted using subscripts rather than function notation: $a_n=f(n)$.\n\nThe sequence is then denoted $\\{a_n\\}$, or more explicitly $\\displaystyle\\{a_n\\}_{n=1}^{\\infty}$. The integer $n$ is called the index of $a_n$."}
︠c503c254-6a92-4d05-b583-572f7e21b7bfi︠
%md
## Example 1

Consider the sequence $12,\ 14,\ 16,\ 18,\ \ldots$

This may be written in various ways:

* $a_n=10+2n$ for $n\ge 1$

* $\{10+2n\}$

* $\{10+2n\}_{n=1}^{\infty}$.

︡b192a6ed-dee9-4624-a377-131851ef9016︡{"done":true,"md":"## Example 1\n\nConsider the sequence $12,\\ 14,\\ 16,\\ 18,\\ \\ldots$\n\nThis may be written in various ways:\n\n* $a_n=10+2n$ for $n\\ge 1$\n\n* $\\{10+2n\\}$\n\n* $\\{10+2n\\}_{n=1}^{\\infty}$."}
︠4191482f-9b73-4c33-b70a-82885b47ef4fi︠
%md
Of course, there is really no reason to start with $n=1$ all the time.

* $a_n=2n$ for $n\ge 6$

* $\{2n\}_{n=6}^{\infty}$

These give the same sequence.
︡4482baa6-aa10-4000-9421-00994b24c934︡{"done":true,"md":"Of course, there is really no reason to start with $n=1$ all the time.\n\n* $a_n=2n$ for $n\\ge 6$ \n\n* $\\{2n\\}_{n=6}^{\\infty}$ \n\nThese give the same sequence."}
︠8c0c5db9-ca29-41e3-84f1-e4e0001b79b2i︠
%md
Infinite sequences may be defined in various ways.

* A list of numbers with some discernible pattern.

* An explicit forumla for the $n^{th}$ term.

* A recursive formula that gives one term in terms of one or more previous terms.
︡4dd83c73-4230-4d41-9463-1d9ce7ba896e︡{"done":true,"md":"Infinite sequences may be defined in various ways.\n\n* A list of numbers with some discernible pattern.\n\n* An explicit forumla for the $n^{th}$ term.\n\n* A recursive formula that gives one term in terms of one or more previous terms."}
︠77a27095-8fea-4ed0-863f-9cf9e9a6580ci︠
%md
## Example 2

List of numbers:

$2,\ 3,\ 5,\ 7,\ 11,\ 13,\ \ldots$ (prime numbers)
︡91b3f7e0-030e-42ad-a4e4-9c382a8dab62︡{"done":true,"md":"## Example 2\n\nList of numbers:\n\n$2,\\ 3,\\ 5,\\ 7,\\ 11,\\ 13,\\ \\ldots$ (prime numbers)"}
︠77a7441f-f5b3-48b7-a5de-d2079c94c608i︠
%md
## Example 3

Explicit formula:

$a_n=3n-5$ (unless otherwise stated, we'll assume $n$ starts at 1)
︡02285b01-e9ae-420b-bf3e-c233140801cd︡{"done":true,"md":"## Example 3\n\nExplicit formula:\n\n$a_n=3n-5$ (unless otherwise stated, we'll assume $n$ starts at 1)"}
︠ee4bbdae-a00c-4e78-905f-f602334dfe9bi︠
%md
## Example 4
Recursive definition:

$a_n=a_{n-1}+a_{n-2}$ for $n\ge3$, $a_1=1$, $a_2=1$ (Fibonacci Sequence)
︡59dd72a0-0ae6-4338-814f-b23e45e1373f︡{"done":true,"md":"## Example 4\nRecursive definition:\n\n$a_n=a_{n-1}+a_{n-2}$ for $n\\ge3$, $a_1=1$, $a_2=1$ (Fibonacci Sequence)"}
︠a94b2987-fc2b-41db-a408-57cc092d713ai︠
%md
## Graphing a Sequence

To graph a sequence, you put the index variable on the x-axis and the sequence values on the y-axis.

One way to graph a sequence in Sage is to use the "point" command with an imbedded for-loop.
︡051c9872-8681-40a1-8a70-d4cc1a90b293︡{"done":true,"md":"## Graphing a Sequence\n\nTo graph a sequence, you put the index variable on the x-axis and the sequence values on the y-axis.\n\nOne way to graph a sequence in Sage is to use the \"point\" command with an imbedded for-loop."}
︠2d49fb9e-8bff-47a3-938a-55153380bd66i︠
%md
## Example 5
Graph the first 50 terms of $a_n=3n-5$.

(Be very careful with the brackets and parentheses.)
︡de806229-fc56-4181-91b6-3d69c27308a1︡{"done":true,"md":"## Example 5\nGraph the first 50 terms of $a_n=3n-5$. \n\n(Be very careful with the brackets and parentheses.)"}
︠db5b9132-65e5-41f8-86b5-cebab9f7a452s︠
point([(n,3*n-5) for n in [1..50]])
︡de59536e-18e6-45b7-9670-883d482c4fad︡{"file":{"filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/28370/tmp_5lUEe9.svg","show":true,"text":null,"uuid":"825c14b1-dac8-47ad-9817-596ffa60d429"},"once":false}︡{"done":true}︡
︠7a56be62-47e1-4918-b8e2-37a214ce952bi︠
%md
## Example 6
Graph the first 50 terms of the sequence $\displaystyle a_n=\left(1+\frac{1}{n}\right)^n$.

<br>
I'll set up the formulas so you can cut and paste for your assignment.
︡9585ee6d-fe5d-47c7-a753-627269032281︡{"done":true,"md":"## Example 6\nGraph the first 50 terms of the sequence $\\displaystyle a_n=\\left(1+\\frac{1}{n}\\right)^n$.\n\n<br>\nI'll set up the formulas so you can cut and paste for your assignment."}
︠781b57f1-857b-4ce8-b2dd-022276d0f927s︠
%var n
a(n)=(1+1/n)^n  #sequence definition
n_start=1       #starting index
n_end=50        #ending index
point([(n,a(n)) for n in [n_start..n_end]])
︡69a12bbd-0a92-4155-ae53-94dff5d95d23︡{"file":{"filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/28370/tmp_JvECE4.svg","show":true,"text":null,"uuid":"f3151222-1952-4683-bd5a-6c203517a438"},"once":false}︡{"done":true}︡
︠107f5067-0197-4350-8a8b-08013514d001i︠
%md
## Example 7

Graph the first 10 terms of the Fibonacci Sequence: $a_n=a_{n-1}+a_{n-2}$ for $n\ge 3$, $a_1=1$, $a_2=1$.

There are different ways you might deal with this recursive definition in Sage. I will use a list. One issue is that a list in Sage always begins with index 0, while our sequence begins at 1. I'm going to get around this by sticking an extra 0 in the zero position.

Writing a=[0,1,1] makes a list of three numbers.

The first item in the list has index 0. You can access this by typing a[0]. Similarly, a[2] is the element in the list with index 2 (the third element in the list).
︡81699f1e-f168-4266-9d8b-45b9a40ab991︡{"done":true,"md":"## Example 7\n\nGraph the first 10 terms of the Fibonacci Sequence: $a_n=a_{n-1}+a_{n-2}$ for $n\\ge 3$, $a_1=1$, $a_2=1$.\n\nThere are different ways you might deal with this recursive definition in Sage. I will use a list. One issue is that a list in Sage always begins with index 0, while our sequence begins at 1. I'm going to get around this by sticking an extra 0 in the zero position.\n\nWriting a=[0,1,1] makes a list of three numbers.\n\nThe first item in the list has index 0. You can access this by typing a[0]. Similarly, a[2] is the element in the list with index 2 (the third element in the list)."}
︠55ba5e8b-a942-4d3d-ba83-f3f673c4ec5a︠
a=[0, 1, 1]            #add an extra 0 at the beginning, and define the first two terms to be 1
for n in [3..10]:      #note: the next line needs to be indented
    a+=[a[n-1]+a[n-2]] #add the next term to the list (notice the square brackets around the thing you're adding)
point([(n,a[n]) for n in [1..10]]) #once the list is done, plot the points
︡21135713-77f2-410b-b988-c1c1ea1fcb8a︡{"file":{"filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/28370/tmp_5OWymR.svg","show":true,"text":null,"uuid":"08d5546f-f616-417f-91c8-e4e6d8649d4f"},"once":false}︡{"done":true}︡
︠302d8cb2-df64-48ac-8dd4-26a2f4a8b8c0i︠
%md
## Example 8
Graph the first 20 terms of the sequence $\displaystyle a_n=\frac{a_{n-1}}{2}+\frac{2}{a_{n-1}}$ for $n\ge2$, $a_1=15$.
︡5f57fcc5-6eba-4309-ad7e-a3537fdd71a5︡{"done":true,"md":"## Example 8\nGraph the first 20 terms of the sequence $\\displaystyle a_n=\\frac{a_{n-1}}{2}+\\frac{2}{a_{n-1}}$ for $n\\ge2$, $a_1=15$."}
︠7cadd132-e00f-4efd-9ccd-2bb971b3011cs︠
a=[0, 15]                   #start with an extra 0, then the first term is 15
for n in [2..20]:           #the recursive defintion starts with n=2; we stop at n=20
    a+=[a[n-1]/2+2/a[n-1]]  #type the recursive definition
point([(n,a[n]) for n in [1..20]]) #plot the points
︡f16fdd3b-fc4d-4c21-83dd-efa4e18d0d73︡{"file":{"filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/28370/tmp_a5CAeR.svg","show":true,"text":null,"uuid":"c8a2b712-3b93-4027-b3e9-352d8c916744"},"once":false}︡{"done":true}︡
︠fec2851b-11fb-43b1-8dcb-9bf8a3ccc63ei︠
%md
## Limit of a Sequence

If the sequence approaches some fixed number as $n\to\infty$, then we call this the **limit** of the sequence. We write $\displaystyle L=\lim_{n\to\infty}a_n$.

Here is the formal definition:

If for every $\epsilon>0$ there exists $N>0$ such that $|a_n-L|<\epsilon$ whenever $n>N$, then $\displaystyle L=\lim_{n\to\infty}a_n$.

In other words, you can get the terms of the sequence arbitrarily close to $L$ by making $n$ big enough.
︡bec998ba-bbab-4773-83e7-e4879a8858c2︡{"done":true,"md":"## Limit of a Sequence\n\nIf the sequence approaches some fixed number as $n\\to\\infty$, then we call this the **limit** of the sequence. We write $\\displaystyle L=\\lim_{n\\to\\infty}a_n$.\n\nHere is the formal definition:\n\nIf for every $\\epsilon>0$ there exists $N>0$ such that $|a_n-L|<\\epsilon$ whenever $n>N$, then $\\displaystyle L=\\lim_{n\\to\\infty}a_n$.\n\nIn other words, you can get the terms of the sequence arbitrarily close to $L$ by making $n$ big enough."}
︠fbd4fc85-77a9-412e-9868-0e0fd8c51aeei︠
%md
## Example 9
Let's explore the definition of a limit graphically, using $\displaystyle\lim_{n\to\infty}\left(1+\frac{1}{n}\right)^n=e\approx 2.71828$.

In the interactive box below, $L$ represents the potential limit, and $\epsilon$ is the $\epsilon$ from the definition. If $L$ really is the limit, then eventually the sequence will stay in the band between $L-\epsilon$ and $L+\epsilon$.
︡340500ec-d5f7-40f7-9955-1c5efed570f0︡{"done":true,"md":"## Example 9\nLet's explore the definition of a limit graphically, using $\\displaystyle\\lim_{n\\to\\infty}\\left(1+\\frac{1}{n}\\right)^n=e\\approx 2.71828$.\n\nIn the interactive box below, $L$ represents the potential limit, and $\\epsilon$ is the $\\epsilon$ from the definition. If $L$ really is the limit, then eventually the sequence will stay in the band between $L-\\epsilon$ and $L+\\epsilon$."}
︠e130d5ed-55a2-4bcf-ae92-6931c0cad28bsi︠
%auto
%hide
@interact
def _(epsilon=input_box(0.1,label='$\epsilon$'),L=input_box(2.7,label='Potential limit $L$'),n_start=input_box(1,label='Starting index'),n_end=input_box(100,label='Ending index')):
    n=var('n')
    a(n)=(1+1/n)^n
    show(point([(n,a(n)) for n in [n_start..n_end]])+plot(L,(n_start,n_end),color='black')+plot(L+epsilon,(n_start,n_end),color='red',linestyle='--')+plot(L-epsilon,(n_start,n_end),color='red',linestyle='--'))
︡50b82dca-aab4-417b-b98f-99f78b68568b︡{"hide":"input"}︡{"interact":{"controls":[{"control_type":"input-box","default":"0.100000000000000","label":"$\\epsilon$","nrows":1,"readonly":false,"submit_button":null,"type":null,"var":"epsilon","width":null},{"control_type":"input-box","default":"2.70000000000000","label":"Potential limit $L$","nrows":1,"readonly":false,"submit_button":null,"type":null,"var":"L","width":null},{"control_type":"input-box","default":1,"label":"Starting index","nrows":1,"readonly":false,"submit_button":null,"type":null,"var":"n_start","width":null},{"control_type":"input-box","default":100,"label":"Ending index","nrows":1,"readonly":false,"submit_button":null,"type":null,"var":"n_end","width":null}],"flicker":false,"id":"081ee0d4-31e3-417a-8fa6-b62d94602aa9","layout":[[["epsilon",12,null]],[["L",12,null]],[["n_start",12,null]],[["n_end",12,null]],[["",12,null]]],"style":"None"}}︡{"done":true}︡
︠2eacd1ba-0124-4f37-8b3c-2dd9186e5f3fi︠
%md
Is the sequence eventually inside the red band?

Now make epsilon smaller (you may need to increase the starting and ending indices).
︡9716f0ea-c55a-4791-adb2-9eb113921162︡{"md":"Is the sequence eventually inside the red band?\n\nNow make epsilon smaller (you may need to increase the starting and ending indices).\n"}︡
︠e647ff3e-a04a-453e-a0a5-f03577e7deb5i︠
%md
## Computing Limits with Sage
If we have an explicit formula, we can often compute the limit using Sage.
︡b604eb33-441d-4c67-9262-ee45ba2d5a59︡{"done":true,"md":"## Computing Limits with Sage\nIf we have an explicit formula, we can often compute the limit using Sage."}
︠07fa42fc-dfdb-460d-b47a-1c81c37c995b︠
#Since we used the letter n in our for-loops above, we need to declare it as a variable now.
%var n
limit((1+1/n)^n,n=+Infinity)
︡36f1e9d7-dbfd-4cd7-bf30-636266c8d449︡{"stdout":"e\n"}︡
︠85dc4fed-6398-4f8f-a38d-4a06e31d7f64i︠
%md
The limit command treats the sequence as a function on the real numbers, rather than just on the whole numbers. That means the limit command can give us the wrong answer.

## Example 10

Consider $\displaystyle\lim_{n\to\infty}\sin(\pi n)$
︡780a7b34-5066-4117-b543-fa44368252e6︡{"done":true,"md":"The limit command treats the sequence as a function on the real numbers, rather than just on the whole numbers. That means the limit command can give us the wrong answer.\n\n## Example 10\n\nConsider $\\displaystyle\\lim_{n\\to\\infty}\\sin(\\pi n)$"}
︠8abf82a6-9005-4cdc-9a99-846abd83850es︠
%var n
limit(sin(pi*n),n=+Infinity)
︡f0b3607d-0c35-47a0-85b7-63aa2fbef06e︡︡{"stdout":"ind","done":false}︡{"stdout":"\n","done":false}︡{"done":true}
︠a1c11164-3397-4c2e-aad5-8fcb66dc7184i︠
%md
Here Sage gives the answer "ind," which means "indefinite but bounded." If we look at a graph of the function $\sin(\pi x)$, we can see why the limit does not exist: the function oscillates between $1$ and $-1$ forever.
︡6d8997e7-836a-4965-be97-7b016c36e642︡︡{"done":true,"md":"Here Sage gives the answer \"ind,\" which means \"indefinite but bounded.\" If we look at a graph of the function $\\sin(\\pi x)$, we can see why the limit does not exist: the function oscillates between $1$ and $-1$ forever."}
︠618a59a2-e687-4293-be36-304f9b136bb9s︠
plot(sin(pi*x),xmin=0,xmax=100)
︡8aa51a20-f841-4d64-a5f7-18cba6cd0675︡{"file":{"filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/28370/tmp_BTDFnv.svg","show":true,"text":null,"uuid":"aad4830c-14cc-48b9-b972-a01587291900"},"once":false}︡{"done":true}︡
︠dc38dc5c-e064-49eb-b6f1-79fee80f743di︠
%md
However, the limit of the sequence *does* exist. When $n$ is a whole number, $\sin(\pi n)=0$ for all $n$, so the limit of the sequence is $0$.
︡df8a64c5-478c-4d9a-ac82-9c7d021bc8fa︡︡{"done":true,"md":"However, the limit of the sequence *does* exist. When $n$ is a whole number, $\\sin(\\pi n)=0$ for all $n$, so the limit of the sequence is $0$."}
︠2c9d90ff-d579-4411-af27-c17f9638c0a2i︠
%md
If we have a recursive definition, then our best bet is to look at the graph to see if it looks like the limit exists. Then calculate many, many values of the sequence and see where we end up.

## Example 11
If $\{a_n\}$ is the Fibonacci Sequence, then consider the sequence $\displaystyle b_n=\frac{a_{n+1}}{a_n}$.

First, let's look at a graph.
︡e63b4223-87d4-46de-b659-2f5b6b654d9d︡{"done":true,"md":"If we have a recursive definition, then our best bet is to look at the graph to see if it looks like the limit exists. Then calculate many, many values of the sequence and see where we end up.\n\n## Example 11\nIf $\\{a_n\\}$ is the Fibonacci Sequence, then consider the sequence $\\displaystyle b_n=\\frac{a_{n+1}}{a_n}$.\n\nFirst, let's look at a graph."}
︠c92e12cf-bf9f-46be-b328-53f311453839s︠
a=[0, 1, 1]       #First, define the Fibonacci Sequence
for n in [3..21]:
    a+=[a[n-1]+a[n-2]]
b=[0]
for n in [1..20]: #Now define the new sequence
    b+=[a[n+1]/a[n]]
point([(n,b[n]) for n in [1..20]])
︡6972b564-b6a6-4522-9ff6-8588da6e7990︡{"file":{"filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/28370/tmp_LPrkgi.svg","show":true,"text":null,"uuid":"7c0467a7-3df0-48be-be96-4645425fceaa"},"once":false}︡{"done":true}︡
︠2a3d72e2-a42a-49f3-bb17-1df945338213i︠
%md
It looks like the sequence is approaching a limit, somewhere around 1.6.

Let's compute values of the sequence and approximate what the limit is.
︡f1fbad4b-a922-40d9-a69f-7dac2846a047︡{"md":"It looks like the sequence is approaching a limit, somewhere around 1.6.\n\nLet's compute values of the sequence and approximate what the limit is.\n"}︡
︠f1518052-3de5-4eee-9c3c-5b9c8064d6d3s︠
terms=20        #how many terms we want
a=[0, 1, 1]     #First, define the Fibonacci Sequence
for n in [3..terms+1]:
    a+=[a[n-1]+a[n-2]]
b=[0]
for n in [1..terms]: #Now define the new sequence
    b+=[a[n+1]/a[n]]
print "The limit is approximately",N(b[terms],digits=30)  #Get a decimal approximation for the last term computed.
︡fd38115e-fc34-48a9-a304-d7430cc1aa55︡{"stdout":"The limit is approximately 1.61803399852180339985218033999\n"}︡{"done":true}︡
︠e93345e3-7147-4d75-8be9-521c548ad342i︠
%md
Try increasing "terms" and see what happens.

<br>The actual limit of this sequence is the "Golden Ratio," denoted by the Greek letter $\phi$. The actual value is $\displaystyle \phi=\frac{1+\sqrt{5}}{2}$.
︡e8fcc9ce-222f-47f5-a164-3399d1bed54b︡{"md":"Try increasing \"terms\" and see what happens.\n\n<br>The actual limit of this sequence is the \"Golden Ratio,\" denoted by the Greek letter $\\phi$. The actual value is $\\displaystyle \\phi=\\frac{1+\\sqrt{5}}{2}$.\n"}︡
︠fad135f2-e22b-41c2-8a76-a88658026003︠
N((1+sqrt(5))/2,digits=30)
︡f744857c-65f7-458d-bd76-9de2975f4dc2︡{"stdout":"1.61803398874989484820458683437\n"}︡
︠4aa8f334-6e91-4280-85a5-5b4c0ede1725i︠
%md
## Example 12

Estimate the limit of the sequence $a_n=\sqrt{a_{n-1}}$ for $n\ge 2$, $a_1=5$.

<br>**Solution:** First, we'll graph the first 20 terms to see if the limit exists.
︡20354419-363a-4e46-84cb-96bcf3218c16︡{"done":true,"md":"## Example 12\n\nEstimate the limit of the sequence $a_n=\\sqrt{a_{n-1}}$ for $n\\ge 2$, $a_1=5$.\n\n<br>**Solution:** First, we'll graph the first 20 terms to see if the limit exists."}
︠02312678-1def-4292-bbdf-1df1650db397s︠
a=[0,5]
for n in [2..20]:
    a+=[sqrt(a[n-1])]
point([(n,a[n]) for n in [1..20]])
︡5a47779c-9b6d-41f8-92b1-2dfe4b7d5fc2︡{"file":{"filename":"/projects/9189c752-e334-4311-afa9-605b6159620a/.sage/temp/compute4-us/28370/tmp_hOVgQS.svg","show":true,"text":null,"uuid":"35fcfba5-769a-4c0a-82cc-f57ee3f6a6b6"},"once":false}︡{"done":true}︡
︠6b9fdff2-3e12-420d-b211-967f4a1dd390i︠
%md
It looks like the limit exists. Graphically, we estimate that the limit is 1.

Let's confirm this numerically by calculating 50 terms.
︡7e988066-af54-4e97-b5a7-4f151a7c4930︡{"done":true,"md":"It looks like the limit exists. Graphically, we estimate that the limit is 1.\n\nLet's confirm this numerically by calculating 50 terms."}
︠b669bf04-ecad-4c44-bfd6-7746f00d55fbs︠
a=[0,5]
for n in [2..50]:
    a+=[sqrt(a[n-1])]
N(a[50])
︡524725d6-8627-4080-bf3d-2ec65682ea4c︡{"stdout":"1.00000000000000\n"}︡{"done":true}︡
︠85e231c2-855b-4f5c-8a94-5d2b2e77bee0i︠
%md
It looks like the limit is indeed 1.
︡7f4dc854-30f9-47cf-af5d-976f33430672︡{"md":"It looks like the limit is indeed 1.\n"}︡
︠9633a2e2-8b2e-41e4-9241-724a08df7e00︠











