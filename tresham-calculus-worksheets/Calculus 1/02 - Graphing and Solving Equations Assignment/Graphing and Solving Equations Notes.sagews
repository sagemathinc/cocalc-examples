︠432b7b48-ec24-4df0-b460-ac69f4aa7b48i︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡1d9767bc-f323-46f4-8011-75efcf962dbd︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠3e6e0d00-073f-44da-8633-7ea3a492daa4i︠
%md
### Prerequisites:

* Intro to Sage
︡5f3f60d9-5f79-42a4-836e-eb9cab7a26da︡{"done":true,"md":"### Prerequisites:\n\n* Intro to Sage"}
︠d6b7fa74-e33f-44e0-bb93-5e6eea183c04i︠
%md
# Graphing Functions and Solving Equations in Sage

In this lesson, we will first learn how to graph functions, and then we will talk about different methods of solving equations in Sage.
︡9ab2abab-9944-42bc-bd83-a11dadf16790︡{"done":true,"md":"# Graphing Functions and Solving Equations in Sage\n\nIn this lesson, we will first learn how to graph functions, and then we will talk about different methods of solving equations in Sage."}
︠a1bac7d6-7ef7-4d03-8ebc-84a8241480a5i︠
%md
## Basic Graphing

You can graph a function in Sage using the "plot" command.
︡aaf984dd-4955-4928-aa62-103d391de438︡{"done":true,"md":"## Basic Graphing\n\nYou can graph a function in Sage using the \"plot\" command."}
︠cf16bfcc-dae5-4853-a3d0-f37f2ab9e901i︠
%md
## Example 1

Graph the function $f(x)=x^2$.
︡97469e60-6c34-4803-92f9-8734d0c5d622︡{"done":true,"md":"## Example 1\n\nGraph the function $f(x)=x^2$."}
︠a515b34a-1ed0-4a96-81ba-fc6ce1c0d1ees︠
plot(x^2)
︡aca23df0-d70d-43a1-b843-7a12cc80aaca︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/2131/tmp_LsqMCi.svg","show":true,"text":null,"uuid":"db4d5198-5c21-4b9c-9cbc-85d5fbc8a464"},"once":false}︡{"done":true}︡
︠88d335cc-d8bb-4e7b-ac0b-da4ed60d9a51i︠
%md
By default, the plot command creates a graph with $-1\le x \le 1$. The range of values on the y-axis is chosen by Sage to fit the graph to the window.
︡c9865492-7a7a-4bc0-85c1-0dcfabb66dcc︡{"md":"By default, the plot command creates a graph with $-1\\le x \\le 1$. The range of values on the y-axis is chosen by Sage to fit the graph to the window.\n"}︡
︠e457e72f-b9b0-496f-a9c4-1e3aabcc9a34i︠
%html
<p>You may also define the function $f(x)=x^2$ first, and then plot using the function name.</p>

︡d1e4e216-6670-44ea-bd99-bf8d82845394︡{"html":"<p>You may also define the function $f(x)=x^2$ first, and then plot using the function name.</p>\n\n"}︡
︠59ccb4c1-3700-48b7-b2af-2fcfa9c16ades︠
f(x)=x^2
plot(f)
︡8bb0e561-5e44-43f4-a163-c7f5165522a1︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/2131/tmp_L3a8pM.svg","show":true,"text":null,"uuid":"20ac53c0-14ed-46a2-ac1d-176105eaba67"},"once":false}︡{"done":true}︡
︠d1cdac2a-6af7-4954-ad1f-8e6bec254f6ai︠
%md
## Changing the Plot Window - Horizontal Axis

To change the input values (horizontal axis), use the xmin and xmax options. Plot options are separated by commas.
︡9cb092d3-bdcd-4b64-a4c9-235fd41a8a06︡{"done":true,"md":"## Changing the Plot Window - Horizontal Axis\n\nTo change the input values (horizontal axis), use the xmin and xmax options. Plot options are separated by commas."}
︠4b2a2b7e-dc74-4f29-aec5-a7413b5f5673i︠
%md
## Example 2

Graph $f(x)=x^2$ for $-10 \le x \le 10$.

︡2f20b075-8d05-4af4-a39e-32e50398ffb5︡{"done":true,"md":"## Example 2\n\nGraph $f(x)=x^2$ for $-10 \\le x \\le 10$."}
︠97054669-2722-43fa-88d7-f75184b209b8s︠
plot(x^2,xmin=-10,xmax=10)
︡313c63f3-899a-403d-973a-934568595be6︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/2131/tmp_Iy_1c5.svg","show":true,"text":null,"uuid":"9334e9d6-1205-4c5d-8246-735dc1094265"},"once":false}︡{"done":true}︡
︠6416736c-2b7c-4d05-b900-fa2a2a554220i︠
%md
## Example 3

Graph $f(x)=x^2$ for $-5\le x \le 20$.
︡3826004a-bd36-4dfc-9201-9af6c23444f7︡{"done":true,"md":"## Example 3\n\nGraph $f(x)=x^2$ for $-5\\le x \\le 20$."}
︠df5fecce-5708-4483-a473-bba595d19b5cs︠
plot(x^2,xmin=-5,xmax=20)
︡ef6f63f4-bab4-4675-b21b-df3bd20c87f9︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/2131/tmp_CvMNpN.svg","show":true,"text":null,"uuid":"b435af9a-80aa-4b43-8c2a-c624e134b784"},"once":false}︡{"done":true}︡
︠833ca652-130f-4a4e-a48b-454ce76e75ebi︠
%md
## Changing the Plot Window - Vertical Axis

Unless you specify the range on the y-axis, Sage will choose it for you.

To change the output values (vertical axis), use the ymin and ymax options.

︡35c8ec8f-2486-4c78-b90c-531dfd15b910︡{"done":true,"md":"## Changing the Plot Window - Vertical Axis\n\nUnless you specify the range on the y-axis, Sage will choose it for you.\n\nTo change the output values (vertical axis), use the ymin and ymax options."}
︠e70be646-9f56-4ad3-a610-b8cdbc3e9d47i︠
%md
## Example 4

Graph $f(x)=x^2$ for $-10\le x \le 10$ and $-10 \le y \le 50$.
︡1128d1bf-8017-4710-aec9-e69429b4c113︡{"done":true,"md":"## Example 4\n\nGraph $f(x)=x^2$ for $-10\\le x \\le 10$ and $-10 \\le y \\le 50$."}
︠8ea0d788-6304-48cc-924e-85defb79b069s︠
plot(x^2,xmin=-10,xmax=10,ymin=-10,ymax=50)
︡d7a3fdd5-72ea-469f-b312-50938a304fcf︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/2131/tmp_67Fa4o.svg","show":true,"text":null,"uuid":"b1de7ad7-02a8-4fe1-a98a-ae4b46e10410"},"once":false}︡{"done":true}︡
︠3dbd047d-4403-485d-8ddd-0fca78de00e9i︠
%md
## Example 5

Here's another window. Notice that I did not specify xmin, so it defaults to $-1$.
︡002b7d84-b6e4-4f72-bde8-78a417e54638︡{"done":true,"md":"## Example 5\n\nHere's another window. Notice that I did not specify xmin, so it defaults to $-1$."}
︠08873720-b6cc-4123-afa0-15a0e0c14164s︠
plot(x^2,xmax=20,ymin=-100,ymax=100)
︡92fc8fb9-71d2-46a6-809c-06272cf30759︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/2131/tmp_Tur1Fe.svg","show":true,"text":null,"uuid":"ed9a4b7e-b862-4546-b978-a3443fcdbaa4"},"once":false}︡{"done":true}︡{"done":true}︡
︠c56b5c27-32ae-4785-a4bf-7e978052ff1bi︠
%md
## Example 6

Graph $f(t)=2t+4$ for $5 \le t \le 10$.
︡4710d5fc-24f6-47f3-8560-b2ba2fef79a5︡{"done":true,"md":"## Example 6\n\nGraph $f(t)=2t+4$ for $5 \\le t \\le 10$."}
︠c9d97d95-e9ad-4ddc-bbc4-63f11d00264bs︠
f(t)=2*t+4
plot(f,xmin=5, xmax=10)
︡88d4bf9d-ebdc-4960-b195-9c7be5c84a25︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/2131/tmp_B8ZCt_.svg","show":true,"text":null,"uuid":"3482e08d-63ec-431f-832e-3fe9e47c9da9"},"once":false}︡{"done":true}︡
︠60fff045-ca30-4fe1-94d5-281482c55f5ci︠
%md
Note: Use the plot options xmin and xmax even if your input variable is something other than x.
︡48e4b4ec-8ccb-424e-a38f-03d69126929a︡{"done":true,"md":"Note: Use the plot options xmin and xmax even if your input variable is something other than x."}
︠c4fea196-1a36-4959-bc35-ca579144a988i︠
%md
## Graphing More Than One Function

To graph multiple functions you add together multiple plots (using +).
︡90269a76-68c3-4487-b20c-9bd24163598c︡{"done":true,"md":"## Graphing More Than One Function\n\nTo graph multiple functions you add together multiple plots (using +)."}
︠667a9422-5712-415a-af61-677808ae4c40i︠
%md
## Example 7

Graph $f(x)=x^2$ and $g(x)=(x-2)^2-3$.

(Note: You can get the graph of $g$ by shifting the graph of $f$ two units right and three units down.)

︡a0f719d6-fc4a-42f9-b9c0-3c42de67eeca︡{"done":true,"md":"## Example 7\n\nGraph $f(x)=x^2$ and $g(x)=(x-2)^2-3$.\n\n(Note: You can get the graph of $g$ by shifting the graph of $f$ two units right and three units down.)"}
︠781653c1-14df-4aed-af5e-571f8ab6df0cs︠
f(x)=x^2
g(x)=(x-2)^2-3
plot(f)+plot(g)
︡a2f36bf7-de39-414f-be0b-1cbc99c24977︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/2131/tmp_D9qZPz.svg","show":true,"text":null,"uuid":"7011842d-0f9d-4c1c-9047-8f8836511969"},"once":false}︡{"done":true}︡
︠a73511a4-55a5-43ed-a010-c31efe5075fai︠
%md
## Example 8

Let's change the window so that $-5 \le x \le 5$.
︡95fb3788-de77-4471-813c-211574ba7c26︡{"done":true,"md":"## Example 8\n\nLet's change the window so that $-5 \\le x \\le 5$."}
︠34fd19cb-f4b4-4ecf-a790-458317040c3bs︠
plot(f,xmin=-5,xmax=5)+plot(g)
︡43ac61df-79cc-4d85-9161-a7f77bde3f04︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/2131/tmp_SSSjv9.svg","show":true,"text":null,"uuid":"90258dd8-7789-4068-acfe-221b07cb1034"},"once":false}︡{"done":true}︡
︠de9e0060-222e-4fdd-97b1-7d9524a6f187i︠
%md
I changed the window for $f$, but $g$ is still the default $-1\le x\le1$. I have to specify the window for each plot.
︡e5584649-33bc-4c4a-b295-9159a5262efd︡{"md":"I changed the window for $f$, but $g$ is still the default $-1\\le x\\le1$. I have to specify the window for each plot.\n"}︡
︠27c2782b-21b4-460e-82d6-d658fc18da63s︠
plot(f,xmin=-5,xmax=5)+plot(g,xmin=-5,xmax=5)
︡d536377a-f8b0-44ea-83f6-47f680b83d75︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/18604/tmp_mAsm1K.svg","show":true,"text":null,"uuid":"c023e1f0-1392-4241-86bd-9c7aef8be0fe"},"once":false}︡{"done":true}︡
︠76b959fe-57c6-4a34-9955-bf967a0bba43i︠
%md
## Changing Colors

We can change the color of the curves using the "color" option within a plot.
︡7ee714f2-570d-4905-9c3d-8923205dc4af︡{"done":true,"md":"## Changing Colors\n\nWe can change the color of the curves using the \"color\" option within a plot."}
︠79899351-6773-4540-b993-1be6336b4afbi︠
%md
## Example 9

Let's change the graph of $g$ to red so we can tell the two graphs apart. You do this by adding color='red' to the $g$ plot. Notice the quotes around red.

︡d6377964-e0e6-4b45-82eb-8e66043e5aa1︡{"done":true,"md":"## Example 9\n\nLet's change the graph of $g$ to red so we can tell the two graphs apart. You do this by adding color='red' to the $g$ plot. Notice the quotes around red."}
︠fc9453e2-e50c-46a1-8d7e-5524c2ea6ee9s︠
f(x)=x^2
g(x)=(x-2)^2-3
plot(f,xmin=-5,xmax=5)+plot(g,xmin=-5,xmax=5,color='red')
︡afc15d8e-9100-40d0-b31e-851a12898053︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/18604/tmp_5coy04.svg","show":true,"text":null,"uuid":"5ae8643b-8e25-4875-aab4-849ff9bc746a"},"once":false}︡{"done":true}︡
︠fc8869c5-019e-4064-b0af-3ac65a717ebfi︠
%md
## Example 10

Sage knows quite a few colors by name. Try some yourself.
︡b971479b-6ef5-4507-989b-ad5da17d89e1︡{"done":true,"md":"## Example 10\n\nSage knows quite a few colors by name. Try some yourself."}
︠01c926ca-8c7d-402c-b951-b52d07d50934s︠
plot(f,xmin=-5,xmax=5,color='salmon')+plot(g,xmin=-5,xmax=5,color='fuchsia')
︡0d1def3e-547c-44ff-9fac-082d3556c7b3︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/18604/tmp_AuKH1p.svg","show":true,"text":null,"uuid":"4ffee01d-fb48-44af-a241-f0f47fad194c"},"once":false}︡{"done":true}︡
︠704398e0-7608-410f-9dcc-ff590b145d3ai︠
%md
## Example 11

Let's add a graph of $h(x)=x^3$ to get a graph of three functions.
︡587e28d2-fc21-43e5-ac6c-7d888b64c94b︡{"done":true,"md":"## Example 11\n\nLet's add a graph of $h(x)=x^3$ to get a graph of three functions."}
︠6e85185f-48fd-4701-a442-e55d3a7661cds︠
f(x)=x^2
g(x)=(x-2)^2-3
h(x)=x^3
plot(f,xmin=-5,xmax=5,color='salmon')+plot(g,xmin=-5,xmax=5,color='fuchsia')+plot(h,xmin=-5,xmax=5,ymin=-50,ymax=50,color='teal')
︡fc783025-8b25-46cd-af50-c871707f8df4︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/2131/tmp_8p42Kn.svg","show":true,"text":null,"uuid":"8c4c94c1-446d-4f83-a7ed-12b8d866a07b"},"once":false}︡{"done":true}︡
︠e0efaf88-d5ad-4919-a0b9-0a68edbc5523i︠
%md
Note: I have adjusted the ymin and ymax in the plot of $h$ above; otherwise, $h$ would dominate the graph.
︡82b88421-d315-4218-acf0-a44bedadbfc8︡{"done":true,"md":"Note: I have adjusted the ymin and ymax in the plot of $h$ above; otherwise, $h$ would dominate the graph."}
︠9b0e7122-b766-444b-8eee-764569356d47i︠
%md
## Changing the Line Style

You can also change the style of line using the "linestyle" option. The default is "solid," but you can also used dashed or dotted lines or a combination of the two.
︡957c6a8e-ddc5-4e91-b0bd-3012c8409aec︡{"done":true,"md":"## Changing the Line Style\n\nYou can also change the style of line using the \"linestyle\" option. The default is \"solid,\" but you can also used dashed or dotted lines or a combination of the two."}
︠64cbbb5d-95af-43b5-8223-55716141798ai︠
%md
## Example 12

Let's make the graph of $g$ using a dashed line by typing linestyle='dashed'

︡f2fb9755-03d3-45d1-a677-e26dd523c569︡{"done":true,"md":"## Example 12\n\nLet's make the graph of $g$ using a dashed line by typing linestyle='dashed'"}
︠208bd05c-1714-4b98-a46f-167a24149d85s︠
f(x)=x^2
g(x)=(x-2)^2-3
plot(f,xmin=-5,xmax=5)+plot(g,xmin=-5,xmax=5,color='red',linestyle='dashed')
︡b6101fff-2ea8-43f7-b2e9-f9722be3ade5︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/18604/tmp_RxQh2C.svg","show":true,"text":null,"uuid":"b4874bbc-47ae-4018-b640-fc08833bbf33"},"once":false}︡{"done":true}︡
︠47d3cbc1-f442-4a93-a03c-c1328666846ci︠
%md
## Example 13

To get a dotted line, type linestyle='dotted'

︡e9215ef7-8cb2-438b-8c04-2d6a36b2571b︡{"done":true,"md":"## Example 13\n\nTo get a dotted line, type linestyle='dotted'"}
︠f1fe11bd-2be4-4d17-a161-76474274f835s︠
plot(f,xmin=-5,xmax=5)+plot(g,xmin=-5,xmax=5,color='red',linestyle='dotted')
︡d4d58fb9-0920-4687-bb36-99c0a03a25a4︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/18604/tmp_AIi256.svg","show":true,"text":null,"uuid":"d3d9a147-98ef-4d20-a6c4-415cdde9d9e6"},"once":false}︡{"done":true}︡
︠2d48928f-59a9-46be-b0ca-b77d7373c474i︠
%md
## Example 14

To get a dash-dot pattern, use linestyle='dashdot'
︡83c7375d-7a58-4c17-a79a-d6484648678a︡{"done":true,"md":"## Example 14\n\nTo get a dash-dot pattern, use linestyle='dashdot'"}
︠4fb424b7-8404-43bc-ad61-023edbc08cb6s︠
plot(f,xmin=-5,xmax=5)+plot(g,xmin=-5,xmax=5,color='red',linestyle='dashdot')
︡c65b15bb-b27e-43dd-8edd-1381511dc5fc︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/18604/tmp_DrDWne.svg","show":true,"text":null,"uuid":"08c31de1-3d07-4cf5-bd86-755487d4a3a6"},"once":false}︡{"done":true}︡
︠30f24535-baa2-4aec-98a2-7eae3ba13346i︠
%md
## Solving Equations

There are several different ways to solve equations in Sage, including:

* Approximate solutions graphically
* Use the solve command
* Use the find_root command

We'll start with a graphical approach.
︡231a6b3d-20a0-46c4-8586-17e4ab6088f6︡{"done":true,"md":"## Solving Equations\n\nThere are several different ways to solve equations in Sage, including:\n\n* Approximate solutions graphically\n* Use the solve command\n* Use the find_root command\n\nWe'll start with a graphical approach."}
︠8a01fa0e-6cb0-4dc6-b0b3-ca4bc8e11173i︠
%md
## Example 15

Solve the equation $x^2-10=2x-x^2$ for $x$.

We'll graph both sides of this equation and see where the two curves cross.

︡a1ccfc75-9e8d-4b62-a876-64aa9b3a7917︡{"done":true,"md":"## Example 15\n\nSolve the equation $x^2-10=2x-x^2$ for $x$. \n\nWe'll graph both sides of this equation and see where the two curves cross."}
︠b6a13e46-a9b6-4047-968b-3618ea82268bs︠
f(x)=x^2-10
g(x)=2*x-x^2
plot(f)+plot(g,color='red')
︡c925b332-914f-4059-a7d0-edf76e7cea01︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/18604/tmp_HGU94m.svg","show":true,"text":null,"uuid":"3a1928ca-174e-4b4e-bca5-e81e08dc4b2a"},"once":false}︡{"done":true}︡
︠8800b83b-70de-4031-8ceb-e16b501de1bfi︠
%html
<p>On the default plot, we don't see any points of intersection, so let's zoom out.</p>

︡6044fa0a-9a18-4a74-9c73-05f09ab4018d︡{"html":"<p>On the default plot, we don't see any points of intersection, so let's zoom out.</p>\n\n"}︡
︠9d540a1f-65ac-4cd5-867f-ed27813898eds︠
plot(f,xmin=-10,xmax=10)+plot(g,xmin=-10,xmax=10,color='red')
︡0ac382f2-278a-4509-b9d8-2a6d186cb25f︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/18604/tmp_QRIwVH.svg","show":true,"text":null,"uuid":"fc636eb8-102a-4e05-8d66-490f02140e53"},"once":false}︡{"done":true}︡
︠d0d39fb3-db7d-4c48-83fb-45bc5309345bi︠
%html
<p>Now we see two points of intersection, around $x=3$ and $x=-2$. Let's zoom in around $x=3$.</p>

︡6ebda848-8531-4e35-a972-08005a8271c0︡{"html":"<p>Now we see two points of intersection, around $x=3$ and $x=-2$. Let's zoom in around $x=3$.</p>\n\n"}︡
︠d5c0f21d-9784-48d2-bc40-79ce6740fef3s︠
plot(f,xmin=2,xmax=4)+plot(g,xmin=2,xmax=4,color='red')
︡91302173-6ca7-482d-891e-0dd4ceafdb97︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/18604/tmp_xAxxNF.svg","show":true,"text":null,"uuid":"a99a0ee5-da6e-4333-87c7-b5b336f4067b"},"once":false}︡{"done":true}︡
︠18e4aa46-6e0b-4ab1-aa01-37f9fad0c66di︠
%html
<p>It looks like the curves cross near the point $(2.8,-2)$, so let's zoom in some more:</p>

︡64d60944-f3ad-4ef6-a0bd-3ca4e9651f2f︡{"html":"<p>It looks like the curves cross near the point $(2.8,-2)$, so let's zoom in some more:</p>\n\n"}︡
︠0051a9c9-70cc-4c83-9e04-96559f46d476s︠
plot(f,xmin=2.75,xmax=2.85)+plot(g,xmin=2.75,xmax=2.85,color='red')
︡26465547-5263-4fa3-9645-8a134e0436f6︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/18604/tmp_G2eCx6.svg","show":true,"text":null,"uuid":"822d9612-f4c7-42c1-8bd9-ec884afad1e2"},"once":false}︡{"done":true}︡
︠396ed573-deff-4301-a2e3-9985f27322f4i︠
%md
Depending on how accurate we want to be, we could keep doing this over and over again, but this is a tedious process.

︡b2b40a2c-0978-44eb-bcd8-8e4615124509︡{"done":true,"md":"Depending on how accurate we want to be, we could keep doing this over and over again, but this is a tedious process."}
︠5b174675-7e35-4198-a1a4-94b4c00dc670i︠
%md
## Example 16

It is possible to plot an equation in Sage. This produces a plot of the difference of the two sides.

Note: When you write an equation in Sage, you have to use two equal signs, since a single equal sign is for assignment.

Solve $x^2-10=2x-x^2$ by graphing this equation.

︡42e4a78c-3f4a-431e-93a1-ce6b31083e9a︡{"done":true,"md":"## Example 16\n\nIt is possible to plot an equation in Sage. This produces a plot of the difference of the two sides.\n\nNote: When you write an equation in Sage, you have to use two equal signs, since a single equal sign is for assignment.\n\nSolve $x^2-10=2x-x^2$ by graphing this equation."}
︠368ee18a-edc5-4baf-9141-6ef2f3f691cbs︠
plot(x^2-10==2*x-x^2,xmin=-5,xmax=5)
︡89889e0d-ebc2-4297-bc48-7658d18c77ef︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/18604/tmp_LPUOXs.svg","show":true,"text":null,"uuid":"afa6e12c-5d15-43a8-b066-3de8f9f78ea6"},"once":false}︡{"done":true}︡
︠8c275f60-2a17-4ab0-9433-7eeddf65edb1i︠
%md
If we do the plot this way, then the solutions to our equation are the roots (zeros) of the graph. In other words, solving $f(x)=g(x)$ is equivalent to solving $f(x)-g(x)=0$.
︡833af109-82db-45c5-8e88-9481411991db︡{"md":"If we do the plot this way, then the solutions to our equation are the roots (zeros) of the graph. In other words, solving $f(x)=g(x)$ is equivalent to solving $f(x)-g(x)=0$.\n"}︡
︠ba6b0723-4f95-4e75-a7ca-0d9ea38c59dfi︠
%md
## Using the solve Command

Sage has a command called "solve" that can solve many (but not all) equations. This command takes two arguments: the equation to solve and the variable to solve for.

**Don't forget two equal signs when you type an equation.**

︡7aee6999-5b64-4899-a4d5-35537f9955de︡{"done":true,"md":"## Using the solve Command\n\nSage has a command called \"solve\" that can solve many (but not all) equations. This command takes two arguments: the equation to solve and the variable to solve for.\n\n**Don't forget two equal signs when you type an equation.**"}
︠a0f22ada-094c-4848-9197-778a717b434ci︠
%md
## Example 17

Solve $x^2-10=2x-x^2$ using the solve command.
︡ca182be8-8023-4a23-8aef-525e35c5bfc9︡{"done":true,"md":"## Example 17\n\nSolve $x^2-10=2x-x^2$ using the solve command."}
︠dbd134be-500e-4a6c-9173-9ed12fa897f1︠
solve(x^2-10==2*x-x^2,x)  #You could also type solve(f(x)==g(x),x)
show(_)
︡71f254f1-4a2f-43b1-88f8-aff8098b3db3︡{"stdout":"[x == -1/2*sqrt(21) + 1/2, x == 1/2*sqrt(21) + 1/2]"}︡{"stdout":"\n"}︡{"html":"<div align='center'>[$\\displaystyle x = -\\frac{1}{2} \\, \\sqrt{21} + \\frac{1}{2}$, $\\displaystyle x = \\frac{1}{2} \\, \\sqrt{21} + \\frac{1}{2}$]</div>"}︡
︠e632b0ea-b9c0-4cc5-93fa-79caead4597di︠
%md
There are two solutions, $-\frac{1}{2}\sqrt{21}+\frac{1}{2}$ and $\frac{1}{2}\sqrt{21}+\frac{1}{2}$.

Let's convert to decimals.
︡a65610f3-9cd6-46e6-9d14-38d75a20aefb︡{"md":"There are two solutions, $-\\frac{1}{2}\\sqrt{21}+\\frac{1}{2}$ and $\\frac{1}{2}\\sqrt{21}+\\frac{1}{2}$.\n\nLet's convert to decimals.\n"}︡
︠d43f839e-f169-40ea-8807-cb5e057aadee︠
N(1/2*sqrt(21) + 1/2)
N(-1/2*sqrt(21) + 1/2)
︡6dba794b-7b01-4015-ba84-5d7ce5835eb2︡{"stdout":"2.79128784747792\n"}︡{"stdout":"-1.79128784747792\n"}︡
︠ce818a51-6b61-4e89-8655-737c17e10027i︠
%md
## Example 18

Solve for $x$:  $\ 3x^2+2x-4=-x^3+5x^2-8x+7$.

︡8f1d6d48-f3d7-47b5-81b8-9d8f38330f44︡{"done":true,"md":"## Example 18\n\nSolve for $x$:  $\\ 3x^2+2x-4=-x^3+5x^2-8x+7$."}
︠c09a52d0-4d40-40e4-94f7-4d171a21267d︠
solve(3*x^2+2*x-4==-x^3+5*x^2-8*x+7,x)
︡5d8a3762-b1eb-4991-929c-c15bb488eda0︡{"stdout":"[x == -1/2*(1/18*sqrt(3259)*sqrt(3) + 133/54)^(1/3)*(I*sqrt(3) + 1) + 1/9*(-13*I*sqrt(3) + 13)/(1/18*sqrt(3259)*sqrt(3) + 133/54)^(1/3) + 2/3, x == -1/2*(1/18*sqrt(3259)*sqrt(3) + 133/54)^(1/3)*(-I*sqrt(3) + 1) - 1/9*(-13*I*sqrt(3) - 13)/(1/18*sqrt(3259)*sqrt(3) + 133/54)^(1/3) + 2/3, x == (1/18*sqrt(3259)*sqrt(3) + 133/54)^(1/3) - 26/9/(1/18*sqrt(3259)*sqrt(3) + 133/54)^(1/3) + 2/3]\n"}︡
︠77ba6e45-fbcd-45d7-8f8d-0543d7bf037b︠
show(_[0]);show(_[1]);show(_[2])
︡877c5b87-b1b6-4180-bec0-b692366d862f︡{"tex":{"tex":"x = -\\frac{1}{2} \\, {\\left(\\frac{1}{18} \\, \\sqrt{3259} \\sqrt{3} + \\frac{133}{54}\\right)}^{\\frac{1}{3}} {\\left(i \\, \\sqrt{3} + 1\\right)} + \\frac{-13 i \\, \\sqrt{3} + 13}{9 \\, {\\left(\\frac{1}{18} \\, \\sqrt{3259} \\sqrt{3} + \\frac{133}{54}\\right)}^{\\frac{1}{3}}} + \\frac{2}{3}","display":true}}︡{"tex":{"tex":"x = -\\frac{1}{2} \\, {\\left(\\frac{1}{18} \\, \\sqrt{3259} \\sqrt{3} + \\frac{133}{54}\\right)}^{\\frac{1}{3}} {\\left(-i \\, \\sqrt{3} + 1\\right)} - \\frac{-13 i \\, \\sqrt{3} - 13}{9 \\, {\\left(\\frac{1}{18} \\, \\sqrt{3259} \\sqrt{3} + \\frac{133}{54}\\right)}^{\\frac{1}{3}}} + \\frac{2}{3}","display":true}}︡{"tex":{"tex":"x = {\\left(\\frac{1}{18} \\, \\sqrt{3259} \\sqrt{3} + \\frac{133}{54}\\right)}^{\\frac{1}{3}} - \\frac{26}{9 \\, {\\left(\\frac{1}{18} \\, \\sqrt{3259} \\sqrt{3} + \\frac{133}{54}\\right)}^{\\frac{1}{3}}} + \\frac{2}{3}","display":true}}︡
︠ac71ccf8-c2b3-4e43-9bf2-00a204dac0f4︠
︡f1c9fcd3-1a34-4cfe-8f3b-02ce84fae57c︡{"html":"<p>Sage found three solutions, but two are complex; there is only one real solution.</p>\n\n"}︡
︠843482c4-6b01-432f-8f11-736bbcc4d6bf︠
N(-1/2*(1/18*sqrt(3259)*sqrt(3) + 133/54)^(1/3)*(I*sqrt(3) + 1) + 1/9*(-13*I*sqrt(3) + 13)/(1/18*sqrt(3259)*sqrt(3) + 133/54)^(1/3) + 2/3)
N(-1/2*(1/18*sqrt(3259)*sqrt(3) + 133/54)^(1/3)*(-I*sqrt(3) + 1) - 1/9*(-13*I*sqrt(3) - 13)/(1/18*sqrt(3259)*sqrt(3) + 133/54)^(1/3) + 2/3)
N((1/18*sqrt(3259)*sqrt(3) + 133/54)^(1/3) - 26/9/(1/18*sqrt(3259)*sqrt(3) + 133/54)^(1/3) + 2/3)
︡f3ffbc5d-d079-4bfb-9f25-0fc2a01df59b︡{"stdout":"0.392038325748806 - 2.98210141403215*I\n"}︡{"stdout":"0.392038325748806 + 2.98210141403215*I\n"}︡{"stdout":"1.21592334850239\n"}︡
︠2ef7e0b7-1218-4f94-be36-bdcc513d9141i︠
%md
Here is a graph of the two sides of this equation showing one real solution near $x\approx1.2$.
︡c0ddbebd-af29-4990-a8b4-2240f2c136f8︡{"done":true,"md":"Here is a graph of the two sides of this equation showing one real solution near $x\\approx1.2$."}
︠99f58ded-e1a5-4c35-b465-cf49a34fedfbs︠
plot(3*x^2+2*x-4,xmin=-7,xmax=7)+plot(-x^3+5*x^2-8*x+7,xmin=-7,xmax=7,ymin=-50,ymax=100,color='red')
︡40d8730b-febc-4801-8856-4304b36ea7f1︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/18604/tmp_XQFxPf.svg","show":true,"text":null,"uuid":"814c2f0c-1308-49ee-a2ba-32c0b6bf0623"},"once":false}︡{"done":true}︡
︠3b9cad68-a42c-498e-86d6-9af04de4a5f8i︠
%md
## Using the find_root Command

There are some equations that Sage cannot solve exactly using the solve command. In this case, we can approximate the solutions using the find_root command.

︡fb4d1676-9fba-41bb-b22f-8412be84ffd6︡{"done":true,"md":"## Using the find_root Command\n\nThere are some equations that Sage cannot solve exactly using the solve command. In this case, we can approximate the solutions using the find_root command."}
︠b6757ae1-bb78-4f4a-b754-715583bb6c0ei︠
%md
## Example 19

Solve for $x$: $\ \cos(x)=x$.

First, we will try the solve command.

︡7ac4127f-fb55-4cd1-b673-f3fcde23d975︡{"done":true,"md":"## Example 19\n\nSolve for $x$: $\\ \\cos(x)=x$.\n\nFirst, we will try the solve command."}
︠98fa5605-ded1-4d6c-8807-d64162680b61︠
solve(cos(x)==x,x)
︡e2166029-bafc-4bfa-8550-cac0c6a40c1d︡{"stdout":"[x == cos(x)]\n"}︡
︠699cdd8c-6732-4e3e-8e54-2e7302844621i︠
%md
Sage returns the original equation again; it was unable to find exact answers. However, we can find a numerial approximation using the find_root command.

The find_root command requires that we specify an interval to search for a solution. It will return the first solution it finds, so we have to make sure that our interval contains only one solution. One way to do this is by graphing first.
︡f246a77f-bfb1-4c2d-9e2d-ec1d859fb6da︡{"done":true,"md":"Sage returns the original equation again; it was unable to find exact answers. However, we can find a numerial approximation using the find_root command.\n\nThe find_root command requires that we specify an interval to search for a solution. It will return the first solution it finds, so we have to make sure that our interval contains only one solution. One way to do this is by graphing first."}
︠2975a80f-9a17-4742-934e-e3b49a8bf8ef︠
plot(cos(x))+plot(x,color='red')
︡a1902dd7-58f5-4862-a042-74ad6e22bce0︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/18604/tmp_MkDdlq.svg","show":true,"text":null,"uuid":"ce46a4b7-9b63-4adc-9935-b5ccd29b2397"},"once":false}︡{"done":true}︡
︠eb4943cb-3977-401e-b5ea-207570a74e71i︠
%md
Here we have only one solution, near 0.75.

[Note: How do we know there are no more solutions outside this viewing window?]

︡69d459e4-7ee0-4e93-bb35-f5cb0552880f︡{"md":"Here we have only one solution, near 0.75.\n\n[Note: How do we know there are no more solutions outside this viewing window?]\n\n"}︡
︠a451a274-ce8a-437b-8edb-7d155e7b7e9fi︠
%md
The find_root command takes three arguments: an equation to solve, a lower bound, and an upper bound. It will search for solutions between the lower and upper bounds, and it will return the first solution it finds.
︡d346124a-6161-4c40-9df4-85a24fed0d81︡{"done":true,"md":"The find_root command takes three arguments: an equation to solve, a lower bound, and an upper bound. It will search for solutions between the lower and upper bounds, and it will return the first solution it finds."}
︠f29dcebd-4eac-461d-96f3-617fc8b213d2s︠
find_root(cos(x)==x,-1,1)
︡9119a8f0-286e-434c-b8a3-aaa4b10143b4︡{"stdout":"0.7390851332151607\n"}︡{"done":true}︡
︠31c2812d-f528-43f5-9c21-c974488be172i︠
%md
This command looks for solutions to the equation $\cos(x)=x$ on the interval $[-1,1]$.

Notice that find_root returns a numerical approximation, while solve returns an exact answer.
︡2bc5ab1e-83a8-4499-b59b-d93c4a760fae︡{"done":true,"md":"This command looks for solutions to the equation $\\cos(x)=x$ on the interval $[-1,1]$.\n\nNotice that find_root returns a numerical approximation, while solve returns an exact answer."}
︠b3853821-f26f-4ebb-a7ef-43f3e22c0b6ei︠
%md
## Example 20

Solve for $x$: $\ e^x-1.1=\sin(x)$.

First, we'll try the solve command.

︡369e106f-0d7f-454d-8b9f-b6d88bb3c8b3︡{"done":true,"md":"## Example 20\n\nSolve for $x$: $\\ e^x-1.1=\\sin(x)$.\n\nFirst, we'll try the solve command."}
︠8f6d6f2c-9fe1-4198-aea8-1349439cc165s︠
solve(e^x-1.1==sin(x),x)
︡0abb83c5-d46a-45ee-8b1f-6859d27a5f6a︡{"stdout":"[sin(x) == e^x - 11/10]\n"}︡{"done":true}︡
︠976083fd-f7b6-477a-95f0-c81576c5bf7bi︠
%md
The solve command is not able to solve this equation (notice that there are still x's on both sides of the output), so we'll have to use find_root instead.

What interval should we give find_root? Let's try the interval from $-10$ to $10$ just to see what happens:


︡8679040e-620a-44ab-91e9-9922463f76c7︡{"md":"The solve command is not able to solve this equation (notice that there are still x's on both sides of the output), so we'll have to use find_root instead.\n\nWhat interval should we give find_root? Let's try the interval from $-10$ to $10$ just to see what happens:\n\n\n"}︡
︠e098ea79-23c9-4404-9327-808910089b5b︠
find_root(e^x-1.1==sin(x),-10,10)
︡6dac77ce-1686-4285-8174-e2b62477dd39︡{"stdout":"-1.891197831974637\n"}︡
︠169710ae-d611-4de8-9192-201c40a11d33i︠
%md
The find_root command returns only one solution. It gives us no clue whether or not there are more solutions in this interval. To use find_root effectively, we need to know how many solutions there are and their approximate location. So we'll look at a graph. It may take some trial and error to get a good window.
︡141014ca-0213-47f4-9ee4-1656f283bcbf︡{"md":"The find_root command returns only one solution. It gives us no clue whether or not there are more solutions in this interval. To use find_root effectively, we need to know how many solutions there are and their approximate location. So we'll look at a graph. It may take some trial and error to get a good window.\n"}︡
︠78679fe6-c835-4ed5-a1b0-64e6d30834d9s︠
plot(e^x-1.1,xmin=-3,xmax=2)+plot(sin(x),xmin=-3,xmax=2,ymax=1,color='red')
︡649f5ba9-849d-457e-83bd-7aa6322dc117︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/18604/tmp_Igg2bz.svg","show":true,"text":null,"uuid":"24e617df-b0e0-4b0d-a1ae-db0dc1b3fe09"},"once":false}︡{"done":true}︡
︠6df1215d-4d96-4185-92ce-0615b7f04c0bi︠
%md
From the graph, we can see three solutions (near $x=-2$, $x=-0.5$, and $x=0.5$). We'll use this to determine the intervals to give find_root.

[Note: How do we know there are no more solutions outside this viewing window?]

︡e9b6a6c4-3816-4ef9-a08f-6ae700a879dd︡{"md":"From the graph, we can see three solutions (near $x=-2$, $x=-0.5$, and $x=0.5$). We'll use this to determine the intervals to give find_root.\n\n[Note: How do we know there are no more solutions outside this viewing window?]\n\n"}︡
︠b2c8109c-0c78-4906-964a-b0379e3e1846︠
find_root(e^x-1.1==sin(x),-3,-1)
find_root(e^x-1.1==sin(x),-1,0)
find_root(e^x-1.1==sin(x),0,1)
︡4fdf3209-0951-48eb-b4b8-f565bba7f314︡{"stdout":"-1.8911978319747127"}︡{"stdout":"\n"}︡{"stdout":"-0.5513169357098279\n"}︡{"stdout":"0.395754320029599\n"}︡
︠450db18c-e201-4e41-8567-5b529ccbf830i︠
%md
## Equations Involving Multiple Variables

You can also use the solve command to solve for one variable in an equation involving multiple variables. The answer will be an expression involving the other variables.

Note: find_root does not work with multiple variables, since the answer must be a number to use find_root.
︡4a84ed15-bad8-457e-a590-f5c137cf8a76︡{"done":true,"md":"## Equations Involving Multiple Variables\n\nYou can also use the solve command to solve for one variable in an equation involving multiple variables. The answer will be an expression involving the other variables.\n\nNote: find_root does not work with multiple variables, since the answer must be a number to use find_root."}
︠fa6c937f-3ddc-4611-bc9e-5ca786635bbci︠
%md
## Example 21

Solve $xy+2=2x-3y$ for $y$.

Don't forget to declare your variables.

︡8bd2c8b3-e901-420a-8eac-75d6d18ac107︡{"done":true,"md":"## Example 21\n\nSolve $xy+2=2x-3y$ for $y$. \n\nDon't forget to declare your variables."}
︠fbda45f3-f075-4cf8-8403-2bfbbb7e6c97︠
%var y
solve(x*y+2==2*x-3*y,y)
show(_)
︡239f079c-613e-4617-9d63-dad759760021︡{"stdout":"[y == 2*(x - 1)/(x + 3)]\n"}︡{"html":"<div align='center'>[$\\displaystyle y = \\frac{2 \\, {\\left(x - 1\\right)}}{x + 3}$]</div>"}︡
︠dc2dc2cd-9332-434d-b6db-14af9932d2eei︠
%md
Now let's solve the same equation for $x$.

︡270768ca-bdd3-494e-bf34-22b67075a1a4︡{"md":"Now let's solve the same equation for $x$.\n\n"}︡
︠a1beb992-0c0f-4ce5-807e-9038cbb27e39︠
solve(x*y+2==2*x-3*y,x)
show(_)
︡a1d50da3-59c0-4b38-8339-7b058c7c4666︡{"stdout":"[x == -(3*y + 2)/(y - 2)]\n"}︡{"html":"<div align='center'>[$\\displaystyle x = -\\frac{3 \\, y + 2}{y - 2}$]</div>"}︡
︠9b2c572b-70e3-4640-ba03-3c3477aa3669i︠
%md
## Example 22

If you forget the Quadratic Formula, then Sage will remind you (notice that you can leave off ==0).

Solve for $x$: $\ ax^2+bx+c=0$.

︡b68f68e4-d445-4ae8-af1b-c1057bc33934︡{"done":true,"md":"## Example 22\n\nIf you forget the Quadratic Formula, then Sage will remind you (notice that you can leave off ==0).\n\nSolve for $x$: $\\ ax^2+bx+c=0$."}
︠eb99dfad-f270-41bd-a5bb-c74ef528fdc0︠
%var a,b,c
solve(a*x^2+b*x+c,x)
show(_)
︡cac3d756-1f05-4fc1-9e23-06f6207a58af︡{"stdout":"[x == -1/2*(b + sqrt(b^2 - 4*a*c))/a, x == -1/2*(b - sqrt(b^2 - 4*a*c))/a]\n"}︡{"html":"<div align='center'>[$\\displaystyle x = -\\frac{b + \\sqrt{b^{2} - 4 \\, a c}}{2 \\, a}$, $\\displaystyle x = -\\frac{b - \\sqrt{b^{2} - 4 \\, a c}}{2 \\, a}$]</div>"}︡
︠dd2a3076-df9b-4f57-9cf1-16b838d9499ei︠
%md
## Solving Inequalities

You can also use Sage to solve inequalities, although we won't be needing this feature as much.
︡ba56cbeb-8f96-4ff9-b475-7c0a1dd58dd6︡{"done":true,"md":"## Solving Inequalities\n\nYou can also use Sage to solve inequalities, although we won't be needing this feature as much."}
︠aac34711-c7c4-4722-a09e-3ac28843bf21i︠
%md
## Example 23

Solve $x^2-8>3$.

︡a6a6c38d-3d10-412c-a132-6f28e07a3fa2︡{"done":true,"md":"## Example 23\n\nSolve $x^2-8>3$."}
︠5c978492-2ae8-4b22-9bcf-a3cc4be204dd︠
solve(x^2-8>3,x)
show(_)
︡3f9ab6fe-57a3-425a-95d6-a9d3a2f6dd08︡{"stdout":"[[x < -sqrt(11)], [x > sqrt(11)]]\n"}︡{"html":"<div align='center'>[[$\\displaystyle x &lt; -\\sqrt{11}$], [$\\displaystyle x &gt; \\sqrt{11}$]]</div>"}︡
︠2e5ca90b-13b5-402f-8b3d-3ef1e687d451i︠
%md
In interval notation, the solution is $(-\infty,-\sqrt{11})\cup(\sqrt{11},\infty)$.

Here is a graph:
︡24a52c40-606e-49a4-a7f7-d31151c4f59e︡{"md":"In interval notation, the solution is $(-\\infty,-\\sqrt{11})\\cup(\\sqrt{11},\\infty)$.\n\nHere is a graph:\n"}︡
︠73ad14b6-d6c0-442b-8a45-124e149c301as︠
plot(x^2-8,xmin=-5,xmax=5)+plot(3,xmin=-5,xmax=5,color='red',linestyle='dashed')
︡1771ff8a-270d-4cc6-b263-c18525607572︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/18604/tmp_pDPgK5.svg","show":true,"text":null,"uuid":"85f4a6c8-244e-409a-a7dc-58081cf3a6fa"},"once":false}︡{"done":true}︡
︠ac461841-4c99-423e-87f0-708166bc7ee8i︠
%md
## Example 24

Solve $x^3-5x\le 2$.

[Note: use "<=" for $\le$]

︡29dabc29-9246-4b92-ae69-6507717429d0︡{"done":true,"md":"## Example 24\n\nSolve $x^3-5x\\le 2$. \n\n[Note: use \"<=\" for $\\le$]"}
︠cee9ba0e-9671-47b3-bcb9-bd16075c42e2︠
solve(x^3-5*x<=2,x)
show(_)
︡46ef44f6-e0c4-43ab-883a-3750ca44e081︡{"stdout":"[[x <= -2], [x >= -sqrt(2) + 1, x <= sqrt(2) + 1]]\n"}︡{"html":"<div align='center'>[[$\\displaystyle x \\leq \\left(-2\\right)$], [$\\displaystyle x \\geq -\\sqrt{2} + 1$, $\\displaystyle x \\leq \\sqrt{2} + 1$]]</div>"}︡
︠879ce9fc-f591-493a-a090-83d688ceb9b7i︠
%html
<p>In interval notation, the solution is $(-\infty,-2]\cup[-\sqrt{2}+1,\sqrt{2}+1]$.</p>
<p>A picture would be nice to help us interpret the output, so here's a graph:</p>

︡af75a933-6b3c-48a0-a4f3-f35f161a777d︡{"html":"<p>In interval notation, the solution is $(-\\infty,-2]\\cup[-\\sqrt{2}+1,\\sqrt{2}+1]$.</p>\n<p>A picture would be nice to help us interpret the output, so here's a graph:</p>\n\n"}︡
︠1878f213-a3ed-4c95-be01-bdc25244f4cas︠
plot(x^3-5*x,xmin=-4,xmax=4,ymin=-10,ymax=10)+plot(2,xmin=-4,xmax=4,color='red',linestyle='dashed')
︡3a80aa29-0adc-4e43-8fd4-4c4bc38ee514︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/18604/tmp_ZqpyfO.svg","show":true,"text":null,"uuid":"b76cc79e-c204-421e-8afc-1e9ebd5de698"},"once":false}︡{"done":true}︡
︠d4e5db9b-732d-441e-817f-9393b6dd5cb9i︠
%md
You have to be careful reading this solution. Notice that [[x &lt;= -2], [x &gt;= -sqrt(2) + 1, x &lt;= sqrt(2) + 1]] is&nbsp;<em>not</em>&nbsp;the same as [[x &lt;= -2], [x &gt;= -sqrt(2) + 1], [x &lt;= sqrt(2) + 1]].

The latter is $(-\infty,-2]\cup[-\sqrt{2}+1,\infty)\cup(-\infty,\sqrt{2}+1]$, which does not make sense anyway, because $[-\sqrt{2}+1,\infty)\cup(-\infty,\sqrt{2}+1]=\mathbb{R}$
︡ce6420eb-b7bd-469a-a6d7-fa9a887c741c︡{"md":"You have to be careful reading this solution. Notice that [[x &lt;= -2], [x &gt;= -sqrt(2) + 1, x &lt;= sqrt(2) + 1]] is&nbsp;<em>not</em>&nbsp;the same as [[x &lt;= -2], [x &gt;= -sqrt(2) + 1], [x &lt;= sqrt(2) + 1]].\n\nThe latter is $(-\\infty,-2]\\cup[-\\sqrt{2}+1,\\infty)\\cup(-\\infty,\\sqrt{2}+1]$, which does not make sense anyway, because $[-\\sqrt{2}+1,\\infty)\\cup(-\\infty,\\sqrt{2}+1]=\\mathbb{R}$\n"}︡
︠8fd8e072-eeed-441f-85ff-a5982c4b3058︠









