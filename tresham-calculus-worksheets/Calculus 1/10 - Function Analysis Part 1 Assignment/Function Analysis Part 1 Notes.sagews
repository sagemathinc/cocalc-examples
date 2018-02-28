︠dfa89eea-130a-4532-a066-25d3f37e2e98ai︠
%html
This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a><br /> licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
︡83bb23f7-44f8-4979-bc8f-2515d71190a9︡{"done":true,"html":"This material was developed by Aaron Tresham at the University of Hawaii at Hilo and is\n<a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/80x15.png\" /></a><br /> licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 International License</a>."}
︠a7ea1261-32df-4143-aef7-a5146928292di︠
%md
### Prerequisites:

* Intro to Sage
* Graphing and Solving Equations
* Differentiation
︡cefbbe3b-1d04-443f-926b-e34ae651948d︡{"done":true,"md":"### Prerequisites:\n\n* Intro to Sage\n* Graphing and Solving Equations\n* Differentiation"}
︠694b0a5a-97a4-4f98-83b6-4f7140c1a651i︠
%md
# Function Analysis, Part 1

The goal of this lab is to explore the general shape of a function's graph using calculus (i.e., *before* graphing the function). Topics include increasing/decreasing and concave up/concave down and their relationship with the derivative.
︡7b74987b-d7ad-4ba8-b64c-dceec2ffe61c︡{"done":true,"md":"# Function Analysis, Part 1\n\nThe goal of this lab is to explore the general shape of a function's graph using calculus (i.e., *before* graphing the function). Topics include increasing/decreasing and concave up/concave down and their relationship with the derivative."}
︠413a81b3-8f91-4073-be5e-75c978a749d7i︠
%md
Why do we want to do calculus before graphing?

Compare the two graphs below. The first looks like the graph of a quadratic function (parabola), while the second looks like a cubic function. Would you believe that these are both graphs of *the same function*?
︡e58a14a9-ae7a-42fe-a4c0-ae13a6d6e89d︡{"done":true,"md":"Why do we want to do calculus before graphing?\n\nCompare the two graphs below. The first looks like the graph of a quadratic function (parabola), while the second looks like a cubic function. Would you believe that these are both graphs of *the same function*?"}
︠135c214b-e581-4ff3-a978-486b9d97512dsi︠
%auto
%hide
plot(x^3+100*x^2-1,xmin=-10,xmax=10,ymax=5000)
︡cd715bea-cef6-4f17-83f7-8f180ff78295︡{"hide":"input"}︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4859/tmp_ILbe9O.svg","show":true,"text":null,"uuid":"e3a3f460-4a42-459e-934a-6af3c159eb3d"},"once":false}︡{"done":true}︡
︠e8a590c3-4825-47c9-ac93-9a483fdf0ee1si︠
%auto
%hide
plot(x^3+100*x^2-1,xmin=-150,xmax=100)
︡6ab9be6d-0eb0-48bd-af67-19eba59364d2︡{"hide":"input"}︡{"file":{"filename":"/home/user/.sage/temp/project-a8975d68-235e-4f21-8635-2051d699f504/4859/tmp_h3fNIc.svg","show":true,"text":null,"uuid":"7e3e9b69-8da2-4b82-906b-c6b81bb9ebd8"},"once":false}︡{"done":true}︡
︠07ffc982-1331-44b3-8627-4563e282e4b7i︠
%md

If you saw a formula for the function that has been plotted, you would recognize it as a cubic polynomial. Based on your precalculus knowledge of polynomials, you would know that the first graph is not complete. However, there are many functions that we don't understand from precalculus alone. For these functions, calculus can give us the information we need to produce a complete graph. If we can produce a complete graph, then we can see the key features of the function.
︡a3965687-61e6-4f62-9e58-802bffff2213︡{"done":true,"md":"\nIf you saw a formula for the function that has been plotted, you would recognize it as a cubic polynomial. Based on your precalculus knowledge of polynomials, you would know that the first graph is not complete. However, there are many functions that we don't understand from precalculus alone. For these functions, calculus can give us the information we need to produce a complete graph. If we can produce a complete graph, then we can see the key features of the function."}
︠b93b3dae-3cef-40d7-854b-025459dc1af5i︠
%md
## Critical Points

Recall that the sign of $f'$ is related to the direction of $f$:

* If $f'$ is *positive* on an interval, then $f$ is *increasing* on that interval.

* If $f'$ is *negative* on an interval, then $f$ is *decreasing* on that interval.

Therefore, if the *direction* of $f$ changes (from increasing to decreasing, or vice versa), then the *sign* of $f'$ must change. If $f'$ changes sign (from positive to negative, or vice versa), it either has to go through 0 or it has to jump over the x-axis, in which case it will be undefined there. That leads to the next defintion:

**Definition:** A *critical point* of a function is an element in the domain of the function (an x-value) at which its derivative is 0 or undefined.

Critical points are the only points *in the domain* at which the direction of the function can change from increasing to decreasing or vice versa (of course, if there is a hole in the domain, the function could change direction there).

Critical points also give the possible locations of local minima and maxima.

Note that the critical points are the *possible* points of direction change; the direction does not necessarily change there. There are two ways to determine if a critical point actually results in a direction change: (1) look at a graph; (2) try some nearby values of x and see if the sign of $f'$ changes. The advantage of (1) is that it's less work for us. The disadvantage is that our graph may not be good enough to see whether the direction changes. So while (2) is more work, it's more reliable.
︡daa6eadd-fd50-4ace-a9e8-3246da702689︡{"md":"## Critical Points\n\nRecall that the sign of $f'$ is related to the direction of $f$:\n\n* If $f'$ is *positive* on an interval, then $f$ is *increasing* on that interval.\n\n* If $f'$ is *negative* on an interval, then $f$ is *decreasing* on that interval.\n\nTherefore, if the *direction* of $f$ changes (from increasing to decreasing, or vice versa), then the *sign* of $f'$ must change. If $f'$ changes sign (from positive to negative, or vice versa), it either has to go through 0 or it has to jump over the x-axis, in which case it will be undefined there. That leads to the next defintion:\n\n**Definition:** A *critical point* of a function is an element in the domain of the function (an x-value) at which its derivative is 0 or undefined.\n\nCritical points are the only points *in the domain* at which the direction of the function can change from increasing to decreasing or vice versa (of course, if there is a hole in the domain, the function could change direction there).\n\nCritical points also give the possible locations of local minima and maxima.\n\nNote that the critical points are the *possible* points of direction change; the direction does not necessarily change there. There are two ways to determine if a critical point actually results in a direction change: (1) look at a graph; (2) try some nearby values of x and see if the sign of $f'$ changes. The advantage of (1) is that it's less work for us. The disadvantage is that our graph may not be good enough to see whether the direction changes. So while (2) is more work, it's more reliable.\n"}︡
︠30670966-c914-4be5-9762-624b6635cb88i︠
%md
Remember that $f'$ is a function in its own right, so it has critical points as well. The critical points of $f'$ are the x-values at which its derivative, $f''$, is 0 or undefined. The critical points of $f'$ tell us the possible locations where $f'$ can change direction.

Recall that the direction of $f'$ corresponds to the concavity of $f$.

* If $f'$ is *increasing* on an interval, then $f$ is *concave up* on that interval.

* If $f'$ is *decreasing* on an interval, then $f$ is *concave down* on that interval.

Since the direction of $f'$ corresponds to the sign of its derivative, $f''$, we can also phrase the above this way:

* If $f''$ is *positive* on an interval, then $f$ is *concave up* on that interval.

* If $f''$ is *negative* on an interval, then $f$ is *concave down* on that interval.

Since $f'$ can change direction only at its critical points, $f$ can change concavity only there as well. In other words, the critical points of $f'$ (i.e., places where $f''$ is 0 or undefined) are the potential inflection points of $f$.

Once again, we have two ways to determine if the potential inflection points are actual inflection points: (1) look at a graph; (2) try some nearby values of x and see if the sign of $f''$ changes. Changes in concavity are often harder to see than changes in direction, so option (1) is even less reliable in this case.
︡b72ca0cb-60bb-49a8-9c62-b42eb969934a︡{"done":true,"md":"Remember that $f'$ is a function in its own right, so it has critical points as well. The critical points of $f'$ are the x-values at which its derivative, $f''$, is 0 or undefined. The critical points of $f'$ tell us the possible locations where $f'$ can change direction.\n\nRecall that the direction of $f'$ corresponds to the concavity of $f$.\n\n* If $f'$ is *increasing* on an interval, then $f$ is *concave up* on that interval.\n\n* If $f'$ is *decreasing* on an interval, then $f$ is *concave down* on that interval.\n\nSince the direction of $f'$ corresponds to the sign of its derivative, $f''$, we can also phrase the above this way:\n\n* If $f''$ is *positive* on an interval, then $f$ is *concave up* on that interval.\n\n* If $f''$ is *negative* on an interval, then $f$ is *concave down* on that interval.\n\nSince $f'$ can change direction only at its critical points, $f$ can change concavity only there as well. In other words, the critical points of $f'$ (i.e., places where $f''$ is 0 or undefined) are the potential inflection points of $f$.\n\nOnce again, we have two ways to determine if the potential inflection points are actual inflection points: (1) look at a graph; (2) try some nearby values of x and see if the sign of $f''$ changes. Changes in concavity are often harder to see than changes in direction, so option (1) is even less reliable in this case."}
︠057443db-8dc9-40b5-a448-0623668aa46di︠
%md
To summarize, if we have a function $f$, to find its critical points we compute $f'$, and we find where $f'(x)=0$ or $f'$ is undefined. If we want a good graph of $f$, then we should make sure our viewing window includes all the critical points, since the direction of the function may change there.

We also want to find the critical points of $f'$, i.e., places where $f''$ is 0 or undefined. We should include these in a good graph as well, since these are the potential inflection points.
︡9ef967a2-ce8c-469c-9634-b6a129c68291︡{"md":"To summarize, if we have a function $f$, to find its critical points we compute $f'$, and we find where $f'(x)=0$ or $f'$ is undefined. If we want a good graph of $f$, then we should make sure our viewing window includes all the critical points, since the direction of the function may change there.\n\nWe also want to find the critical points of $f'$, i.e., places where $f''$ is 0 or undefined. We should include these in a good graph as well, since these are the potential inflection points.\n"}︡
︠55565d62-8f6e-4473-a76e-5f1b35fe9031i︠
%md
## Example 1

Let's consider an example. Suppose we wish to understand the shape of $f(x)=x^3-3x^2+4$.

Here is the default graph:
︡2b9e6af3-73f5-4eee-af81-3ad9e2a3aeb6︡{"md":"## Example 1\n\nLet's consider an example. Suppose we wish to understand the shape of $f(x)=x^3-3x^2+4$.\n\nHere is the default graph:\n"}︡
︠97fc35dd-62d3-45f4-bb89-b141a8f699d4s︠
f(x)=x^3-3*x^2+4
plot(f)
︡4f9ea08c-b183-44f0-be67-fa7c106adb6a︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/32684/tmp_WewYWm.svg","show":true,"text":null,"uuid":"14cd662f-9135-4eea-abbf-1b3199940bde"},"once":false}︡{"done":true}︡
︠eded954b-80ad-4207-99d8-a31193bdde57i︠
%md
We know from precalc that this is not a complete graph, since a cubic polynomial has opposite behavior at $\infty$ and $-\infty$.

Of course, we can simply play around with the viewing window to get a good graph. However, in some cases this strategy may take too much trial and error to be practical. Moreover, we may encounter functions that were not covered as completely in precalc as the polynomials, so we may not know whether we have a complete graph. At the very least, we generally want a "good graph" to include x- and y-intercepts, local minima and maxima, inflection points, and asymptotes. This kind of graph reveals the overall shape of the graph and the features of the function that we usually care about.
︡27d3d081-fc83-4f3f-97ee-ce892fa37478︡{"done":true,"md":"We know from precalc that this is not a complete graph, since a cubic polynomial has opposite behavior at $\\infty$ and $-\\infty$.\n\nOf course, we can simply play around with the viewing window to get a good graph. However, in some cases this strategy may take too much trial and error to be practical. Moreover, we may encounter functions that were not covered as completely in precalc as the polynomials, so we may not know whether we have a complete graph. At the very least, we generally want a \"good graph\" to include x- and y-intercepts, local minima and maxima, inflection points, and asymptotes. This kind of graph reveals the overall shape of the graph and the features of the function that we usually care about."}
︠0e52a181-22f6-46d3-b50b-1b38cbfa2abci︠
%md
As an example of function analysis, let's consider the critical points of $f$ and $f'$ so we can make a more educated guess for the viewing window.

**Step 1** Find the domain of $f$.

Our function $f$ is a cubic polynomial, so its domain is all real numbers, $\mathbb{R}$.

Other functions may have gaps in the domain. These may correspond to either vertical asymptotes or holes. These features should be explored at this point, if necessary.
︡709a9065-0ad9-4b32-b62b-9c392a57a574︡{"done":true,"md":"As an example of function analysis, let's consider the critical points of $f$ and $f'$ so we can make a more educated guess for the viewing window.\n\n**Step 1** Find the domain of $f$.\n\nOur function $f$ is a cubic polynomial, so its domain is all real numbers, $\\mathbb{R}$.\n\nOther functions may have gaps in the domain. These may correspond to either vertical asymptotes or holes. These features should be explored at this point, if necessary."}
︠a9269a61-40ac-4934-8ba6-857661fc5627i︠
%md
**Step 2** Find $f'$. In Sage, I will call this df.
︡11dedb19-a083-4756-b926-edf404b3ade1︡{"done":true,"md":"**Step 2** Find $f'$. In Sage, I will call this df."}
︠fbe3df47-921d-4f77-a0ff-a52a75e25cfa︠
df(x)=derivative(f,x);df
︡b4ec0379-1dce-47e7-97e2-8926356c78b6︡{"stdout":"x |--> 3*x^2 - 6*x\n"}︡
︠ef34e077-5ed5-476c-9a12-b05af00f57ffi︠
%md
**Step 3** Find the critical points of $f$, i.e. places where $f'$ is 0 or undefined.

Our derivative is never undefined, so we just need to solve the equation $f'(x)=0$ for $x$.
︡467179a7-6ec4-4fa0-93b2-2af124c1df03︡{"md":"**Step 3** Find the critical points of $f$, i.e. places where $f'$ is 0 or undefined.\n\nOur derivative is never undefined, so we just need to solve the equation $f'(x)=0$ for $x$.\n"}︡
︠6dde4118-ca56-4096-b2bf-b69446f012cb︠
solve(df(x)==0,x)
︡f0a193e9-d44f-4ad1-915e-916b0795f59b︡{"stdout":"[x == 0, x == 2]"}︡{"stdout":"\n"}︡
︠2a442769-d79d-478b-b995-411509433e38i︠
%md
We have two solutions: $x=0$ and $x=2$. These are the two critical points of $f$.
︡983ac06f-1587-4bdd-89ab-7d1450765b76︡{"done":true,"md":"We have two solutions: $x=0$ and $x=2$. These are the two critical points of $f$."}
︠c38b458c-0457-4ee1-8512-76aee5655818i︠
%md
**Step 4** See if the sign of $f'$ actually changes at the critical points of $f$, and determine whether $f$ has a local maximum or local minimum at these points.

To determine whether the sign of $f'$ actually changes at $x=0$ (which means $f$ actually has a local min or max there), choose some x-values close to $0$ and plug them into $f'$.
︡73527221-4a68-49eb-8ee6-209f134992e5︡{"done":true,"md":"**Step 4** See if the sign of $f'$ actually changes at the critical points of $f$, and determine whether $f$ has a local maximum or local minimum at these points.\n\nTo determine whether the sign of $f'$ actually changes at $x=0$ (which means $f$ actually has a local min or max there), choose some x-values close to $0$ and plug them into $f'$."}
︠052eef44-cae8-4ac1-9afb-7001a85a1db5︠
df(-.1)
df(.1)
︡6a00c35f-39d1-4adc-b703-048b2caadf39︡{"stdout":"0.630000000000000\n"}︡{"stdout":"-0.570000000000000\n"}︡
︠5dc4ac93-3501-4299-95f3-544aa2029f32i︠
%md
Notice that the sign of $f'$ is different to either side of $0$. Since the sign changes, the direction of $f$ changes - that means $f$ has a local min or max at $x=0$.

In fact, since the sign of $f'$ changes from positive to negative, $f$ has a local max.

<br>

Comment: How close to $0$ do my test points need to be? Just make sure they are closer to $0$ than the rest of the critical points. In this case, as long as we get closer than $2$, then we're fine.
︡b41538b6-8ec9-4447-9d6f-a6ed586c28d3︡{"md":"Notice that the sign of $f'$ is different to either side of $0$. Since the sign changes, the direction of $f$ changes - that means $f$ has a local min or max at $x=0$.\n\nIn fact, since the sign of $f'$ changes from positive to negative, $f$ has a local max.\n\n<br>\n\nComment: How close to $0$ do my test points need to be? Just make sure they are closer to $0$ than the rest of the critical points. In this case, as long as we get closer than $2$, then we're fine.\n"}︡
︠ef5bf930-54d0-483b-8618-3283464f5558i︠
%md
Now let's see if the sign of $f'$ changes at $x=2$.
︡7340fabc-c684-42c5-975e-43b39e99ef4f︡{"md":"Now let's see if the sign of $f'$ changes at $x=2$.\n"}︡
︠0b1dced9-8243-4e3d-9b2b-1e3576eafae9︠
df(1.9)
df(2.1)
︡ad019420-7468-4192-b9e0-593996f388f8︡{"stdout":"-0.569999999999999\n"}︡{"stdout":"0.629999999999999\n"}︡
︠66aa72c2-6148-42b8-ab37-487daf10ead2i︠
%md
Once again, the sign does change, so we have another local min or max at $x=2$.

Since the sign of $f'$ changes from negative to positive, $f$ has a local min.
︡48429c49-aa0f-422b-b576-c642d1ea505b︡{"md":"Once again, the sign does change, so we have another local min or max at $x=2$.\n\nSince the sign of $f'$ changes from negative to positive, $f$ has a local min.\n"}︡
︠c4ec5611-a434-4ec5-86e1-dc5f75619069i︠
%md
**Step 5** Find $f''$. In Sage I will call this d2f.
︡8613f280-88e3-436e-ab37-30ea810acddb︡{"md":"**Step 5** Find $f''$. In Sage I will call this d2f.\n"}︡
︠202ff26e-7861-4126-aa30-55e8a2b43c43︠
d2f(x)=derivative(f,x,2); d2f   #of course, you could do derivative(df,x)
︡f8b17130-38ae-4a56-9f75-c0346ed00b4e︡{"stdout":"x |--> 6*x - 6\n"}︡
︠62ccff44-ada7-4045-bd80-ff9deff18d9bi︠
%md
**Step 6** Find the critical points of $f'$, i.e. places where $f''$ is 0 or undefined.

Since $f''$ is never undefined, we just need to solve the equation $f''(x)=0$ for $x$.
︡8cd82d69-218e-43c0-b221-28f6022884f1︡{"md":"**Step 6** Find the critical points of $f'$, i.e. places where $f''$ is 0 or undefined.\n\nSince $f''$ is never undefined, we just need to solve the equation $f''(x)=0$ for $x$.\n"}︡
︠12b3a7e4-89a4-420c-8774-d41ae589ebfe︠
solve(d2f(x)==0,x)
︡f3650f28-4d5a-4805-a4f4-d7356e5824b1︡{"stdout":"[x == 1]\n"}︡
︠d3be56eb-51a7-47b9-8f7a-b1cb78cfdc08i︠
%md
We have one solution: $x=1$. This is the critical point of $f'$.
︡7981835a-aae6-4da2-9c74-d41f7c3197e1︡{"md":"We have one solution: $x=1$. This is the critical point of $f'$.\n"}︡
︠cffe01e6-fc5d-4e23-aa22-dd811c63f444i︠
%md
**Step 7** See if the sign of $f''$ actually changes at the critical points of $f'$, and determine whether $f$ has an inflection point at these points.

To determine whether there is an inflection point at $x=1$, we can choose some nearby x-values and plug them into $f''$. If the sign is different, then we have an inflection point.
︡9605b418-71e3-4288-bd4c-f673b56de0b8︡︡{"done":true,"md":"**Step 7** See if the sign of $f''$ actually changes at the critical points of $f'$, and determine whether $f$ has an inflection point at these points.\n\nTo determine whether there is an inflection point at $x=1$, we can choose some nearby x-values and plug them into $f''$. If the sign is different, then we have an inflection point."}
︠0e5fb817-5f49-41e9-a112-45f0471820b2︠
d2f(.9)
d2f(1.1)
︡c97ae090-ff35-4823-9b63-fdfdf79be28c︡{"stdout":"-0.600000000000000\n"}︡{"stdout":"0.600000000000001\n"}︡
︠93d4b1a7-6a73-4ccb-902a-03e10dfeff35i︠
%md
Since the sign of $f''$ does change, $f$ has an inflection point at $x=1$ (there is a change from concave down to concave up).
︡24520fed-76b5-429f-8ae9-ae5716d87039︡{"md":"Since the sign of $f''$ does change, $f$ has an inflection point at $x=1$ (there is a change from concave down to concave up).\n"}︡
︠fa3adc7f-42e6-4227-b247-57e32b477c2bi︠
%md
**Step 8** Find the x- and y-intercepts.

We would like our graph to reveal the intercepts, so let's find them:
︡38a13842-3c1d-4be8-89ae-d53e9cea1bce︡{"md":"**Step 8** Find the x- and y-intercepts.\n\nWe would like our graph to reveal the intercepts, so let's find them:\n"}︡
︠f3d54ec4-61ed-49e7-869f-0a9bebc102e4︠
solve(f(x)==0,x)  #find the x-intercepts - might have to use find_root for more complicated functions
︡780a1184-6fba-4bdd-84f9-66646e9eff3c︡{"stdout":"[x == -1, x == 2]\n"}︡
︠30f40f9b-3bab-417d-a77c-db710bad88b6︠
f(0)  #find the y-intercept
︡d087de2b-54ee-40ba-9c01-9ec197f8e205︡{"stdout":"4\n"}︡
︠553a1f65-f4b0-4733-b39a-370ab15258bei︠
%md
**Step 9** Determine the end behavior.

The end behavior is $\displaystyle\lim_{x\to\infty}f(x)$ and $\displaystyle\lim_{x\to-\infty}f(x)$.

This will reveal any horizontal asymptotes.
︡d4803c47-f851-4735-8873-e5217e7fa2e2︡{"md":"**Step 9** Determine the end behavior.\n\nThe end behavior is $\\displaystyle\\lim_{x\\to\\infty}f(x)$ and $\\displaystyle\\lim_{x\\to-\\infty}f(x)$.\n\nThis will reveal any horizontal asymptotes.\n"}︡
︠c96cc220-dd79-4359-bb79-baed710e75fb︠
limit(f(x),x=infinity)
︡05b7e419-1486-44f2-9762-f1445271ed52︡{"stdout":"+Infinity\n"}︡
︠6d46070c-adbd-4eb4-af8f-8146fc5a0d51︠
limit(f(x),x=-infinity)
︡09d8ead9-65de-4447-af7e-3c0b04482334︡{"stdout":"-Infinity\n"}︡
︠8ff6b7d3-8be8-40db-a729-0fc27eef22eci︠
%md
There are no horizontal asymptotes in this case.
︡4ecbe3a3-16e9-4273-89ab-59673920796a︡{"md":"There are no horizontal asymptotes in this case.\n"}︡
︠f6b3409f-5a21-4952-a804-3ebaf543eeb1i︠
%md
**Step 10** Make an informed graph. Mark any $x$- and $y$-intercepts, relative maxima and minima, and inflection points.
︡f2170c4f-f903-48fd-9fb1-3e9bae2d5a39︡{"done":true,"md":"**Step 10** Make an informed graph. Mark any $x$- and $y$-intercepts, relative maxima and minima, and inflection points."}
︠f2c604b0-544d-490b-995b-961d31e2d7a5i︠
%md
We need a viewing window that includes at least $x=0$, $x=1$, and $x=2$ (the critical points) as well as $x=-1$ and $x=2$ (the x-intercepts).

Sage will determine y-values for us, but we need to include at least $f(0)$, $f(1)$, and $f(2)$ (from the critical points) and $f(0)$ (the y-intercept).
︡633fd23f-2b79-44b8-aa9c-349fb4729bdd︡{"md":"We need a viewing window that includes at least $x=0$, $x=1$, and $x=2$ (the critical points) as well as $x=-1$ and $x=2$ (the x-intercepts).\n\nSage will determine y-values for us, but we need to include at least $f(0)$, $f(1)$, and $f(2)$ (from the critical points) and $f(0)$ (the y-intercept).\n"}︡
︠8ba90ef3-697c-43b0-8314-514bb56397a0︠
f(0)
f(1)
f(2)
︡b8b4070f-94e9-4a15-af06-fb8ef83ca774︡{"stdout":"4\n"}︡{"stdout":"2\n"}︡{"stdout":"0\n"}︡
︠2957fb5a-160d-48f8-80d4-1421078727d7i︠
%md
Now we know that the x-axis needs to cover the interval $[-1,2]$, and the y-axis needs to cover $[0,4]$.

We should probably make the viewing window just a little bigger than this to show the intercepts and critical points clearly.
︡4ae1a2ef-1c49-45df-a946-3e789fb621e6︡{"md":"Now we know that the x-axis needs to cover the interval $[-1,2]$, and the y-axis needs to cover $[0,4]$.\n\nWe should probably make the viewing window just a little bigger than this to show the intercepts and critical points clearly.\n"}︡
︠73ecc770-6c35-4b46-a01f-0cc96d3a2b59s︠
f(x)=x^3-3*x^2+4
plot(f,xmin=-2,xmax=3,ymin=-1,ymax=5)+point([(-1,0),(0,4),(1,2),(2,0)],color='black',size=20)
︡757f31b0-ed81-46c0-ba61-fe0a01cb7176︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/32684/tmp_xlo2hT.svg","show":true,"text":null,"uuid":"95bef555-dbc3-4df8-87ae-19bf6ec4019b"},"once":false}︡{"done":true}
︠013bd6f7-9f63-466c-a181-455287c9aeabi︠
%md
This graph shows the x- and y-intercepts, the local maximum and minimum, and the inflection point (marked with black dots), as well as the end behavior. Also, there is not a lot of extra white space (which may happen if we let Sage choose the vertical plot range).

From the graph we can see that the critical points of $f$ do result in a local min and a local max, and the critical point of $f'$ results in an inflection point, just as our calculations showed.
︡ec8d5116-e492-42ac-a988-76ac99451e9b︡{"done":true,"md":"This graph shows the x- and y-intercepts, the local maximum and minimum, and the inflection point (marked with black dots), as well as the end behavior. Also, there is not a lot of extra white space (which may happen if we let Sage choose the vertical plot range).\n\nFrom the graph we can see that the critical points of $f$ do result in a local min and a local max, and the critical point of $f'$ results in an inflection point, just as our calculations showed."}
︠420b4e72-7d10-4ed0-9fef-106f997d9f70i︠
%md
**Step 11** Discuss absolute max/min, increasing/decreasing, concave up/down.

One thing we can do with a complete graph is determine the absolute (or global) maximum and minimum. In this case, we can see that neither exists.

Notice that $f$ is increasing on the interval $(-\infty,0]$, decreasing on $[0,2]$, and increasing on $[2,\infty)$. The direction changes at $x=0$ and $x=2$ (the critical points of $f$).

Notice that $f$ is concave up on the interval $[1,\infty)$ and concave down on the interval $(-\infty,1]$. The inflection point occurs at $x=1$ (the critical point of $f'$).

<br>

Comment: The endpoints for the increasing/decreasing intervals are the critical points from Step 3. The endpoints for the concave up/down intervals are the critical points from Step 6.
︡93a97c47-6d13-4077-9b27-6f7a67c5a870︡{"done":true,"md":"**Step 11** Discuss absolute max/min, increasing/decreasing, concave up/down.\n\nOne thing we can do with a complete graph is determine the absolute (or global) maximum and minimum. In this case, we can see that neither exists.\n\nNotice that $f$ is increasing on the interval $(-\\infty,0]$, decreasing on $[0,2]$, and increasing on $[2,\\infty)$. The direction changes at $x=0$ and $x=2$ (the critical points of $f$).\n\nNotice that $f$ is concave up on the interval $[1,\\infty)$ and concave down on the interval $(-\\infty,1]$. The inflection point occurs at $x=1$ (the critical point of $f'$).\n\n<br>\n\nComment: The endpoints for the increasing/decreasing intervals are the critical points from Step 3. The endpoints for the concave up/down intervals are the critical points from Step 6."}
︠f5b7a769-334b-4564-9a09-c878b04984eei︠
%md
## Example 2

Consider $f(x)=x^2e^{4x}$. Once again, we'll look at the default graph to see why the calculus is useful.
︡94a3dfa6-c893-461e-99e9-a436b1ef7fdc︡{"md":"## Example 2\n\nConsider $f(x)=x^2e^{4x}$. Once again, we'll look at the default graph to see why the calculus is useful.\n"}︡
︠296f9b56-1d08-463e-8d8d-87e5fa3db9c0s︠
f(x)=x^2*e^(4*x)
plot(f)
︡e49df42f-17ba-4808-b472-1099a883d5a2︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/32684/tmp_JGPORv.svg","show":true,"text":null,"uuid":"0579c110-c24f-4e96-9351-da3a44f95fc4"},"once":false}
︠cc8a0e50-719e-48ec-ac3a-ce89023c6e0fi︠
%md
This graph appears to have the same basic shape as $e^x$: concave up, increasing everywhere. However, if we do some analysis we'll find that this graph is misleading.
︡57bea291-c1d6-4d04-8320-f4f3ded1908f︡{"md":"This graph appears to have the same basic shape as $e^x$: concave up, increasing everywhere. However, if we do some analysis we'll find that this graph is misleading.\n"}︡
︠fb1bd2ae-8b62-4c1f-b3ba-400a241386c2i︠
%md
**Step 1** Find the domain.

The domain is $\mathbb{R}$.
︡e71b3c24-4e85-45a3-91c9-3e14576a5827︡{"done":true,"md":"**Step 1** Find the domain.\n\nThe domain is $\\mathbb{R}$."}
︠298a1588-97bb-4f3e-bbc2-52980993b319i︠
%md
**Step 2** Find the derivative.
︡3f7ce6a8-4600-4b6c-9263-a35ae07d9897︡{"done":true,"md":"**Step 2** Find the derivative."}
︠d88063fe-34fc-418e-9bfb-cac4febb3594︠
df(x)=derivative(f,x);df
︡e4b7cbcb-b4f4-4576-8317-71b9b24ca3be︡{"stdout":"x |--> 4*x^2*e^(4*x) + 2*x*e^(4*x)\n"}︡
︠812c8dac-d88d-484e-845d-a7b2d8b740d3i︠
%md
**Step 3** Find the critical points of $f$.
︡dd4a5a42-6380-46d1-84c5-05a052bd1454︡{"md":"**Step 3** Find the critical points of $f$.\n"}︡
︠8174eec3-bf52-46f6-8cb9-a23102f12a44︠
solve(df(x)==0,x)
︡ed19afb8-2586-472f-841c-2a1a9435a3ea︡{"stdout":"[x == (-1/2), x == 0]\n"}︡
︠b926f953-17c6-4c24-b2d8-d26414c49f0ci︠
%md
There are no places where $f'$ is undefined, and so there are two critical points of $f$ (where $f'$ is 0): $x=-\frac{1}{2}$ and $x=0$. We have potential local max or min here - these are not apparent on the graph above.
︡0596f7f8-652d-46b4-a3f9-c8b52c445e15︡{"done":true,"md":"There are no places where $f'$ is undefined, and so there are two critical points of $f$ (where $f'$ is 0): $x=-\\frac{1}{2}$ and $x=0$. We have potential local max or min here - these are not apparent on the graph above."}
︠dcf99544-23fa-40dd-a215-7127b2830beei︠
%md
**Step 4** See if the sign of $f'$ actually changes at the critical points of $f$, and determine whether $f$ has a local maximum or local minimum at these points.

First, try some x-values close to $-\frac{1}{2}$.
︡5204af65-af3e-40c5-b701-40ff8475202c︡{"done":true,"md":"**Step 4** See if the sign of $f'$ actually changes at the critical points of $f$, and determine whether $f$ has a local maximum or local minimum at these points.\n\nFirst, try some x-values close to $-\\frac{1}{2}$."}
︠f408b75b-1920-4f95-9284-ea0b50417cbe︠
df(-.6)
df(-.4)
︡93d40479-9e70-47db-936a-b22f86a5c257︡{"stdout":"0.0217723087894590\n"}︡{"stdout":"-0.0323034428791448\n"}︡
︠482d6074-355b-4815-b24c-98ce46c82d7ei︠
%md
There is a sign change for $f'$ from postive to negative, so $f$ has a local max at $x=-\frac{1}{2}$.

<br>

Now try x-values close to $0$.
︡ff08b074-3f8d-405c-bc4e-9ac35f0ca978︡{"md":"There is a sign change for $f'$ from postive to negative, so $f$ has a local max at $x=-\\frac{1}{2}$.\n\n<br>\n\nNow try x-values close to $0$.\n"}︡
︠87df281a-b9d1-41ac-b554-2f0df714c72a︠
df(-.1)
df(.1)
︡0c928fb2-319b-4330-8600-b3adcadccd78︡{"stdout":"-0.107251207365702\n"}︡{"stdout":"0.358037927433905\n"}︡
︠6204559c-2b5a-4cb0-ab44-ed61645ee250i︠
%md
Since $f'$ changes from negative to positive, $f$ has a local min at $x=0$.
︡dda79268-1af5-4aa2-83b5-47cf3808849e︡{"md":"Since $f'$ changes from negative to positive, $f$ has a local min at $x=0$.\n"}︡
︠3701ef38-aa6d-4af3-a061-2fe78dcec96ai︠
%md
**Step 5** Find the second derivative.
︡5beccca7-a085-4033-abfd-c623602496a6︡{"md":"**Step 5** Find the second derivative.\n"}︡
︠9e9d74de-2c40-425e-a036-3e0458d3fac6︠
d2f(x)=derivative(f,x,2);d2f
︡801229a9-a7c9-42e6-a8d9-e72c62891556︡{"stdout":"x |--> 16*x^2*e^(4*x) + 16*x*e^(4*x) + 2*e^(4*x)\n"}︡
︠068d10cb-7c44-4276-823f-1ab5782d1bd8i︠
%md
**Step 6** Find the critical points of $f'$.
︡dd630b54-4e0a-49df-b4a2-6f1dc4d94354︡{"md":"**Step 6** Find the critical points of $f'$.\n"}︡
︠fe9d9938-8679-4b31-b793-cb24cdd7c82e︠
solve(d2f(x)==0,x)
︡33a63e29-4884-43fb-a533-30202a6c3b85︡{"stdout":"[x == -1/4*sqrt(2) - 1/2, x == 1/4*sqrt(2) - 1/2]"}︡{"stdout":"\n"}︡
︠bc9a1bc9-eae6-40e3-a0fc-113dc0c53d46︠
N(-1/4*sqrt(2) - 1/2)
N(1/4*sqrt(2) - 1/2)
︡eaa68a3b-e93c-494b-ade7-f74017244b5a︡{"stdout":"-0.853553390593274\n"}︡{"stdout":"-0.146446609406726\n"}︡
︠605b1aca-c9cb-49cd-b615-37cd46a156cdi︠
%md
There are two critical points of $f'$: $x=-\frac{\sqrt{2}}{4}-\frac{1}{2}\approx-0.8536$ and $x=\frac{\sqrt{2}}{4}-\frac{1}{2}\approx-0.1464$. These are the potential inflection points.
︡e8b6c352-842e-47be-ab41-73de08802695︡{"md":"There are two critical points of $f'$: $x=-\\frac{\\sqrt{2}}{4}-\\frac{1}{2}\\approx-0.8536$ and $x=\\frac{\\sqrt{2}}{4}-\\frac{1}{2}\\approx-0.1464$. These are the potential inflection points."}︡
︠c3f4c4d2-8b32-4071-9be7-4d75c2c84a08i︠
%md
**Step 7** See if the sign of $f''$ actually changes at the critical points of $f'$, and determine whether $f$ has an inflection point at these points.

First, try x-values near $-0.8536$.
︡eb2df4e0-f657-4d59-8cbb-75fe5e6a2835︡︡{"done":true,"md":"**Step 7** See if the sign of $f''$ actually changes at the critical points of $f'$, and determine whether $f$ has an inflection point at these points.\n\nFirst, try x-values near $-0.8536$."}
︠d4093153-a469-4d52-81bf-79ee715b919f︠
d2f(-.9)
d2f(-.8)
︡6080de42-b3a8-4368-86fc-38cf53aa7ce9︡{"stdout":"0.0153012845704839\n"}︡{"stdout":"-0.0228268342278850\n"}︡
︠660220a4-8cf3-48a3-bbff-8be4e47352b1i︠
%md
Since $f''$ changes sign, $f$ changes concavity. So we have an inflection point at $x=-\frac{\sqrt{2}}{4}-\frac{1}{2}\approx-0.8536$.

<br>

Now try x-values near $-0.1464$.
︡63d31cef-7707-418a-b554-bf55a4280a06︡{"md":"Since $f''$ changes sign, $f$ changes concavity. So we have an inflection point at $x=-\\frac{\\sqrt{2}}{4}-\\frac{1}{2}\\approx-0.8536$.\n\n<br>\n\nNow try x-values near $-0.1464$.\n"}︡
︠5f7f8028-dbc6-4b16-a14f-81358db6988b︠
d2f(-.2)
d2f(-.1)
︡f4eab619-82f9-4cdd-b168-8373ecd5dd01︡{"stdout":"-0.251624219905644\n"}︡{"stdout":"0.375379225779958\n"}︡
︠d75ebd8f-0c6c-403d-8103-bd7d47b9d764i︠
%md
Since $f''$ changes sign, $f$ changes concavity. So we also have an inflection point at $x=\frac{\sqrt{2}}{4}-\frac{1}{2}\approx-0.1464$.
︡1640134a-520f-410b-b0fe-ecc36e17c6a1︡{"md":"Since $f''$ changes sign, $f$ changes concavity. So we also have an inflection point at $x=\\frac{\\sqrt{2}}{4}-\\frac{1}{2}\\approx-0.1464$.\n"}︡
︠989af4e9-cb5c-4c10-b202-f864526c6650i︠
%md
**Step 8** Find the x- and y-intercepts.
︡ced0f3cd-6c5e-4491-b284-a3f98e2f0209︡{"md":"**Step 8** Find the x- and y-intercepts.\n"}︡
︠6b9e55d7-6349-4202-910d-fa628b586735︠
solve(f(x)==0,x)
︡f4bd8f9c-b256-462e-8260-4e5be3b1b685︡{"stdout":"[x == 0]\n"}︡
︠11b37527-f55f-4be9-a296-a978ae46f3cb︠
f(0)
︡45d16af0-a364-46da-a35e-b4941b4664c0︡{"stdout":"0\n"}︡
︠98475a58-2443-4ab3-b487-da07448bb39di︠
%md
**Step 9** Determine the end behavior.
︡c9c75664-53e2-4f61-be23-9386c10e83bc︡{"md":"**Step 9** Determine the end behavior.\n"}︡
︠7a5716df-87f6-4e09-bd03-3cbaa76a3226︠
limit(f(x),x=infinity);limit(f(x),x=-infinity)
︡37b6b24c-4374-40b2-8f82-64b2f1aabe86︡{"stdout":"+Infinity\n0\n"}︡
︠0b6f0fce-c854-49d7-999b-decb4fc7c607i︠
%md
We found that $\displaystyle\lim_{x\to\infty}f(x)=\infty$ and $\displaystyle\lim_{x\to-\infty}f(x)=0$. This means the x-axis is a horizontal asymptote (in the negative direction).
︡00d79d61-42fa-4737-b05c-a5cda4dac4f4︡{"md":"We found that $\\displaystyle\\lim_{x\\to\\infty}f(x)=\\infty$ and $\\displaystyle\\lim_{x\\to-\\infty}f(x)=0$. This means the x-axis is a horizontal asymptote (in the negative direction).\n"}︡
︠436cc35b-753e-42c4-aa5d-6f4bd1c09512i︠
%md
**Step 10** Make an informed graph. Mark any $x$- and $y$-intercepts, relative maxima and minima, and inflection points.

Let's put the pieces together. Our graph needs to cover the critical points, $x=-0.8536,\ -0.5,\ -0.1464,\ 0$, along with their correspoding y-values.
︡b890318f-3b3e-4398-90c9-3f794ec45c20︡{"done":true,"md":"**Step 10** Make an informed graph. Mark any $x$- and $y$-intercepts, relative maxima and minima, and inflection points.\n\nLet's put the pieces together. Our graph needs to cover the critical points, $x=-0.8536,\\ -0.5,\\ -0.1464,\\ 0$, along with their correspoding y-values."}
︠7be6799c-880c-4f53-bed8-7d7eca85c289︠
f(-0.8536)
f(-.5)
f(-0.1464)
f(0)
︡62330720-2c2c-45cb-944b-a76dacde8c15︡{"stdout":"0.0239692107419376\n"}︡{"stdout":"0.0338338208091532\n"}︡{"stdout":"0.0119332655442418\n"}︡{"stdout":"0\n"}︡
︠8920ece1-36f6-4c64-9744-03d69313499fi︠
%md
In this example, these values already cover the x- and y-intercepts and the end behavior.
︡26c18877-509d-4703-a5c9-61b6ec2ab31a︡{"md":"In this example, these values already cover the x- and y-intercepts and the end behavior.\n"}︡
︠e7f1511f-5492-4244-a2fb-4966ed877b35s︠
f(x)=x^2*e^(4*x)
plot(f,xmin=-1.5,xmax=.5,ymin=0,ymax=.05)+point([(-.5,0.0338),(0,0),(-0.8536,0.0240),(-0.1464,0.0119)],color='black',size=20)
︡ee87ff16-d6a9-4c6b-bca8-32d5472bfc77︡{"file":{"filename":"/projects/a8975d68-235e-4f21-8635-2051d699f504/.sage/temp/compute4-us/32684/tmp_Pex6Ta.svg","show":true,"text":null,"uuid":"6785bee7-f332-4f64-89f0-90a5ff404461"},"once":false}︡{"done":true}︡
︠cd065b70-1601-445f-8943-e55358ce5622i︠
%md
This looks quite a bit different than the default graph we started with. Of course, we can see from the values on the y-axis that this "wiggle" in the graph is very small, but depending on the application, this wiggle could be important.
︡9cb3d257-6547-4a33-b590-969db4a98bdf︡{"done":true,"md":"This looks quite a bit different than the default graph we started with. Of course, we can see from the values on the y-axis that this \"wiggle\" in the graph is very small, but depending on the application, this wiggle could be important."}
︠f9011e04-309d-4e1c-9594-8ce4a3ef45e8i︠
%md
**Step 11** Discuss absolute max/min, increasing/decreasing, concave up/down.

This function has no absolute maximum. The absolute minimum is $0$ (at $x=0$).

This function is increasing on $(-\infty,-0.5]$ and $[0,\infty)$. It is decreasing on $[-0.5,0]$.

This function is concave up on $(-\infty,-0.8536]$ and $[-0.1464,\infty)$. It is concave down on $[-0.8536,-0.1464]$.

<br>

Comment: Notice once again where the critical points show up in Step 11.
︡08a70b3b-e98f-4b47-8381-876e0d89f4e8︡{"done":true,"md":"**Step 11** Discuss absolute max/min, increasing/decreasing, concave up/down.\n\nThis function has no absolute maximum. The absolute minimum is $0$ (at $x=0$).\n\nThis function is increasing on $(-\\infty,-0.5]$ and $[0,\\infty)$. It is decreasing on $[-0.5,0]$.\n\nThis function is concave up on $(-\\infty,-0.8536]$ and $[-0.1464,\\infty)$. It is concave down on $[-0.8536,-0.1464]$.\n\n<br>\n\nComment: Notice once again where the critical points show up in Step 11."}
︠61806236-6880-4f73-ac26-5b7d7fde130d︠









