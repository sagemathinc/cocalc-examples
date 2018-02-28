︠d899de64-64e9-4253-a620-d82576e4bd89ais︠
%hide
%auto f(x)=x^2
%auto g(x)=(x-2)^2-3
%auto h(x)=x^3
︡d576d2e0-b172-45db-9363-7f15590cd09a︡{"hide":"input"}︡{"done":true}︡
︠28057941-2ba9-4c3e-827c-e49357182a7fi︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡2f7c853a-1e33-4541-a43b-1ca75bb2d84a︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠98298d77-b868-4230-8220-70215865065ci︠
%md
# Advanced Graphing Features

These notes provide instructions for some advanced graphing features in Sage. They are provided here for future reference; you will not need these for the assignment today.

︡872185a1-e20c-4f46-8ef3-925e3c6c6550︡{"md":"# Advanced Graphing Features\n\nThese notes provide instructions for some advanced graphing features in Sage. They are provided here for future reference; you will not need these for the assignment today.\n\n"}︡
︠aa70a3aa-675b-4af3-bc1c-5f2f018c1c9ci︠
%md
## Adding a Legend

We can add a legend using the legend_label option. Make sure you add it to all the plots.

︡b78d44e5-659d-4564-83a1-9a4b0bd8978b︡{"md":"## Adding a Legend\n\nWe can add a legend using the legend_label option. Make sure you add it to all the plots.\n\n"}︡
︠c802f577-bee6-4f67-bcac-b0a420f6a930s︠
f(x)=x^2
g(x)=(x-2)^2-3
plot(f,xmin=-5,xmax=5,legend_label='f')+plot(g,xmin=-5,xmax=5,color='red',legend_label='g')
︡7ad66b6f-dc2b-4520-8071-9392fd05719c︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4379/tmp_j6Mgqs.svg","show":true,"text":null,"uuid":"2ea10067-d0aa-4337-806a-e8d89b2fde75"},"once":false}︡{"done":true}︡
︠488f1426-ebc6-4b38-a7f1-2ff49c4bd64bi︠
%md
Your labels can be whatever string you want (just make sure it's all in quotes).
︡0b7b7f31-b389-449e-8ccb-f6ec54a51a12︡{"md":"Your labels can be whatever string you want (just make sure it's all in quotes).\n"}︡
︠fe7e3598-b540-43bf-93a1-1690fcc591d7s︠
f(x)=x^2
g(x)=(x-2)^2-3
h(x)=x^3
plot(f,xmin=-5,xmax=5,color='salmon',legend_label='function 1')+plot(g,xmin=-5,xmax=5,color='fuchsia',legend_label='function 2')+plot(h,xmin=-5,xmax=5,ymin=-50,ymax=50,color='teal',legend_label='function 3')
︡d4a33134-ec45-422c-94d1-9480701182f6︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4379/tmp_RplmTs.svg","show":true,"text":null,"uuid":"0d695f12-b280-400e-8e0c-a506246ebe03"},"once":false}︡{"done":true}︡
︠af032736-a341-4f2f-9e4a-4421d26c73b4i︠
%md
## Labelling the Axes

We can also label the axes using the axes_labels option (you only need to add this to one of the plots). Notice the square brackets.

︡43ee627b-a260-4a63-bbb3-426780fa01ca︡{"md":"## Labelling the Axes\n\nWe can also label the axes using the axes_labels option (you only need to add this to one of the plots). Notice the square brackets.\n\n"}︡
︠ab6c6609-6f9b-436a-95ab-78e6c483e600s︠
f(x)=x^2
g(x)=(x-2)^2-3
plot(f,xmin=-5,xmax=5,legend_label='f',axes_labels=['x','y'])+plot(g,xmin=-5,xmax=5,color='red',legend_label='g')
︡1e4de758-ee3a-4c7e-8ea4-59a8ebefc1fc︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4379/tmp_QJbPqc.svg","show":true,"text":null,"uuid":"bffd78d7-1798-4586-9bc7-b6acf96c9170"},"once":false}︡{"done":true}︡
︠671d3a01-3425-4c79-bb91-96a6d2052b8ci︠
%md
Here's another example.
︡9184a249-e201-4470-82de-c90b18add8de︡{"md":"Here's another example.\n"}︡
︠77870d58-87ee-422b-91ac-b459cec42f18s︠
f(x)=x^2
g(x)=(x-2)^2-3
h(x)=x^3
plot(f,xmin=0,xmax=20,color='salmon',legend_label='company 1')+plot(g,xmin=0,xmax=20,color='fuchsia',legend_label='company 2')+plot(h,xmin=0,xmax=20,ymax=2000,color='teal',legend_label='company 3',axes_labels=['time','profit'])
︡16037142-7032-475b-b19f-18b12a2e6058︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4379/tmp_BDSyUD.svg","show":true,"text":null,"uuid":"c5ff3932-fd6c-416a-8746-fd2858da190c"},"once":false}︡{"done":true}︡
︠4ce0d15b-9d5f-4617-a03d-1b8b1d755d61i︠
%md
## Changing Line Thickness

Make the curves thicker with the "thickness" option.

︡bd638e6a-0d1b-4f43-acdc-6239bd970a0f︡{"md":"## Changing Line Thickness\n\nMake the curves thicker with the \"thickness\" option.\n\n"}︡
︠005048b5-4d78-4d89-a536-f8536089f83ds︠
f(x)=x^2
g(x)=(x-2)^2-3
h(x)=x^3
plot(f,xmin=-5,xmax=5,thickness=5)+plot(g,xmin=-5,xmax=5,color='red',linestyle='dotted',thickness=2)+plot(h,xmin=-5,xmax=5,color='green',linestyle='dashed',thickness=4)
︡a9699021-5e14-4103-8680-169aa08f397f︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4379/tmp_PJwyAD.svg","show":true,"text":null,"uuid":"e5d9fbeb-b796-494d-890f-fa25eb874115"},"once":false}︡{"done":true}︡
︠272e70c5-9089-4dd8-ac6b-9fd27f5730dbi︠
%md
## Shading

To shade the area under a curve, add the option fill='axis'

︡c09fe8b2-df77-4ddb-bd39-9a19a7ec14b2︡{"md":"## Shading\n\nTo shade the area under a curve, add the option fill='axis'\n\n"}︡
︠8beea6ca-ee00-4d33-8637-9d7e3882e113s︠
f(x)=x^2
plot(f,fill='axis')
︡6b3ce6e7-cfcf-416d-99dc-4dbd49db8b90︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4379/tmp_y8hkks.svg","show":true,"text":null,"uuid":"329e4eac-f2b0-4fe1-af61-40d4595cc795"},"once":false}︡{"done":true}︡
︠6ade6a8e-3e56-4e93-a32f-ed754765600fi︠
%md
You can also shade the area between $f$ and $g$ by adding fill=g to the plot for $f$. Notice that there are no quotes around g.

︡b86c878e-ac61-4db6-88e8-828188ba7273︡{"md":"You can also shade the area between $f$ and $g$ by adding fill=g to the plot for $f$. Notice that there are no quotes around g.\n\n"}︡
︠d94d0d28-9a03-47f3-ac58-d7117624c063s︠
f(x)=x^2
g(x)=(x-2)^2-3
plot(f,xmin=-5,xmax=5,fill=g)+plot(g,xmin=-5,xmax=5,color='red')
︡fd874491-fbd3-426d-824c-b7da1a74329c︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4379/tmp_BW15a9.svg","show":true,"text":null,"uuid":"44d94118-62ff-4a25-8e7a-7d6bc9af5135"},"once":false}︡{"done":true}︡
︠8f666913-52d5-485e-9aa6-87a67361e7b7i︠
%md
You could get the same thing by adding fill=f to the plot of $g$ instead.
︡777ab7fa-8fb4-4ddb-a6b2-32166f79ae1b︡{"md":"You could get the same thing by adding fill=f to the plot of $g$ instead.\n"}︡
︠26da97ec-0a7a-4a36-a4cb-2ce55289c167s︠
plot(f,xmin=-5,xmax=5)+plot(g,xmin=-5,xmax=5,color='red',fill=f)
︡0a5cf495-f58b-4993-9d30-4560fd1d9ee5︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4379/tmp_gFEN1D.svg","show":true,"text":null,"uuid":"9350969d-acde-440f-9df8-6bf057ab4722"},"once":false}︡{"done":true}︡
︠5b0e1f55-7913-4c45-986a-542ac65dd944i︠
%md
## Adding a Title

Add a title using the title option. You add this to just one of the plots.

︡af5c13b4-cdbf-4433-83ec-fdb35abd815b︡{"md":"## Adding a Title\n\nAdd a title using the title option. You add this to just one of the plots.\n\n"}︡
︠4c036ddf-6485-4d64-a252-1c83e6e9e277s︠
f(x)=x^2
g(x)=(x-2)^2-3
plot(f,xmin=-5,xmax=5,fill=g)+plot(g,xmin=-5,xmax=5,color='red',title='The area between f and g')
︡c3bc5b53-11b4-47eb-86f7-b348e050f81c︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4379/tmp_GNb4bV.svg","show":true,"text":null,"uuid":"eb9bb785-9031-4ed0-9dc6-62ed7ba0ca2c"},"once":false}︡{"done":true}︡
︠a1d8a50d-af42-4ddf-a64d-ddc21e43361ei︠
%md
## Adding Text to Plots

In addition to titles and axis labels, you can add any text to a plot using the "text" command. You specify any string within quotation marks along with an ordered pair specifying the location.

Here is an example. This inserts the string "some text" centered at the point $(0.5,0.5)$.
︡d0b583a6-31df-4cfc-8e93-f601ca5a978a︡{"md":"## Adding Text to Plots\n\nIn addition to titles and axis labels, you can add any text to a plot using the \"text\" command. You specify any string within quotation marks along with an ordered pair specifying the location.\n\nHere is an example. This inserts the string \"some text\" centered at the point $(0.5,0.5)$.\n"}︡
︠90902ba8-611e-4afe-9b28-b846d74d2f87s︠
plot(x^2)+text('some text',(.5,.5))
︡568b6825-bf3b-443f-87e3-72a984f1d994︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4379/tmp_qLAr9O.svg","show":true,"text":null,"uuid":"e32dc6b2-efc9-4f05-8899-4957e90e4dee"},"once":false}︡{"done":true}︡
︠af5a651c-ed9f-494b-a5d5-b05d34d7def2i︠
%md
Here is another example. I have changed the text color to black, and I have rotated the text 45 degrees.
︡efb1d601-ba97-4b53-a847-83b7dbe2a443︡{"md":"Here is another example. I have changed the text color to black, and I have rotated the text 45 degrees.\n"}︡
︠6a4f246c-b126-489d-a6da-e4aa1d1f00c3s︠
plot(x^2)+text('something',(.5,.5),color='black',rotation=45)
︡c85c4203-f7ab-4248-826e-f7e60f005576︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4379/tmp_UnvVoW.svg","show":true,"text":null,"uuid":"91fa598f-4078-4dfa-a929-0f4a9269c9b4"},"once":false}︡{"done":true}︡
︠d299fac6-afba-476a-8c08-ee9f47f8f792i︠
%md
You can also adjust the size using the "fontsize" option, which specifies the size in points (the default is 10).
︡abe864ab-7110-48b6-8ff0-b35353ac15a1︡{"md":"You can also adjust the size using the \"fontsize\" option, which specifies the size in points (the default is 10).\n"}︡
︠80a95d18-9c76-4508-98f4-9b1d241018afs︠
plot(x^2)+text('something',(.5,.5),color='black',rotation=90, fontsize=12)
︡5d85f590-b072-4ee3-bf3f-28e1c692fb43︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4379/tmp_kWGVkT.svg","show":true,"text":null,"uuid":"5817c1f4-0935-42a7-a8ef-6ab2f986273c"},"once":false}︡{"done":true}︡
︠7c100b07-ed7b-463a-b7b2-869c205c0384i︠
%md
If you put fontsize in the plot, it will change the size of the tick mark labels, as well as axis labels and the title.

Notice how the y-axis label and the title overlap in the example below.
︡a8c423ed-9c19-45c4-8b62-56c70578086a︡{"md":"If you put fontsize in the plot, it will change the size of the tick mark labels, as well as axis labels and the title.\n\nNotice how the y-axis label and the title overlap in the example below.\n"}︡
︠7ea58dff-dbad-4adc-9f9e-57fadc46d577s︠
plot(x^2,fontsize=14,title='A Graph',axes_labels=['x','y'])
︡ed065c69-d41f-448d-be26-33ea772aa3e7︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4379/tmp_YB4AYT.svg","show":true,"text":null,"uuid":"69478f16-8c5b-4fa6-9ee0-46b915dca68a"},"once":false}︡{"done":true}︡
︠bfe9ee6b-b76c-405c-8026-84b20ea54675i︠
%md
We can use the text command to put the axis label to the side of the y-axis.
︡d05a08af-07ac-4f62-b057-f994c8c834c9︡{"md":"We can use the text command to put the axis label to the side of the y-axis.\n"}︡
︠1e5f8779-016a-4983-9429-d457e6cead9cs︠
plot(x^2,fontsize=14,title='A Graph',axes_labels=['x',''])+text('y',(-.1,1),color='black',fontsize=14)
︡682115df-9f13-49fb-bbef-5774a1e165cd︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4379/tmp_VSAD7N.svg","show":true,"text":null,"uuid":"6359cbb2-3d88-40a3-8a08-141957c0f7ca"},"once":false}︡{"done":true}︡
︠d873fd84-d51d-4fed-b463-fc6dbf5cbd34i︠
%md
For some reason, the font size is different for the x and y labels, so it may be better to use "text" for both.
︡9d393b7c-fbf5-4896-9d58-b26aac83ab10︡{"md":"For some reason, the font size is different for the x and y labels, so it may be better to use \"text\" for both.\n"}︡
︠1c87003f-2e45-4b0b-bf8a-39cdb4f37863s︠
plot(x^2,fontsize=14,title='A Graph')+text('y',(-.1,1),color='black',fontsize=14)+text('x',(1,.1),color='black',fontsize=14)
︡f62b9757-5a8b-4ad8-b8fc-2ebb21579310︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4379/tmp_UZ_1HO.svg","show":true,"text":null,"uuid":"ec7bbcf7-50fc-4201-9a63-fd7dbe948295"},"once":false}︡{"done":true}︡
︠186c00ce-d679-41bb-a3e6-00f96b585875i︠
%md
Here's a final example.
︡6c81517d-b384-4a67-9c2a-005db93d7df2︡{"md":"Here's a final example.\n"}︡
︠2072c7fd-3dbe-490b-a8c7-f7718b078d1bs︠
plot(e^(.1*x),xmin=0,xmax=100,title='Population of Somewhere')+text('Population',(-10,10000),color='black',rotation=90)+text('Time (in years)',(50,-2500),color='black')
︡4050ee7d-2b9b-454f-b7a9-c28bce2a75f2︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4379/tmp_bUiszC.svg","show":true,"text":null,"uuid":"ddcafdd8-8880-4c04-a1ef-b621e641f8cf"},"once":false}︡{"done":true}︡
︠b0085433-f210-4618-9ef2-cde55f643533i︠
%md
## Adding Text with Math Symbols

If you want to add text to a plot that includes math symbols, then you can use $\LaTeX$ (see "Writing in Sage" notes). Put \$ signs around the $\LaTeX$ code.

For technical reasons (having to do with Python), you should use a "raw string" within the text command. This means you add the letter "r" before the first quotation mark. This is not always necessary, but sometimes leaving off the r will have irritating results.

Here is an example.
︡e7d58fc4-1801-4289-9625-a0e73ecfa113︡{"md":"## Adding Text with Math Symbols\n\nIf you want to add text to a plot that includes math symbols, then you can use $\\LaTeX$ (see \"Writing in Sage\" notes). Put \\$ signs around the $\\LaTeX$ code.\n\nFor technical reasons (having to do with Python), you should use a \"raw string\" within the text command. This means you add the letter \"r\" before the first quotation mark. This is not always necessary, but sometimes leaving off the r will have irritating results.\n\nHere is an example.\n"}︡
︠24ccf22e-10e8-4178-9ebb-2e98921154eds︠
plot(sqrt(x),xmin=0,xmax=4)+text(r'$f(x)=\sqrt{x}$',(2.5,1.75))  #Note the r before the quote mark and the dollar signs.
︡3f30162a-d4ee-4a74-9e4a-2b7640322673︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4379/tmp_jenv6U.svg","show":true,"text":null,"uuid":"87801477-6a93-4d8f-8d3c-2592d95a3589"},"once":false}︡{"done":true}︡
︠d729798a-3027-4131-b690-aee1812f853a︠









