# Blazor vs React

blazor-vs-react.md

*   New Blazor WebAssembly capabilities in .NET 6

    *   https://www.youtube.com/watch?v=kesUNeBZ1Os&ab_channel=dotNET

*   Enterprise-grade Blazor apps with .NET 6

    *   https://www.youtube.com/watch?v=GKu-vRxOWr8&list=PLdo4fOcmZ0oVFtp9MDEBNbA2sSqYvXSXO&index=7

*   https://docs.microsoft.com/en-us/learn/modules/blazor-introduction/3-when-to-use-blazor

*   https://stackoverflow.com/a/61501655/1963929

*   https://www.telerik.com/blogs/blazor-vs-react-web-developers

*   https://docs.microsoft.com/en-us/fluent-ui/web-components/integrations/blazor

*   https://docs.microsoft.com/en-us/fluent-ui/web-components/components/overview



[01-12 00:07] Claudio Rodriguez Rodriguez
    My bet would be "if the team is comfortable writing the UX of the animations in CSS and/or javascript and for data validation they want to use c#" then I would say Blazor would be more fun for them 
​[01-12 00:12] Claudio Rodriguez Rodriguez
    the biggest advantage of blazor would be "not to write your own webpack/snowpack/vite/esbuild transpiler code" from typescript to javascript. There's no real advantage from the UI work, UI code will still have to be made and will likely be very similar.  


I'd personally prefer React. Compared to Blazor I found it to be more:


	
performant from what I've seen on initial load
	
small in regards to the bundle size(react-router) included
	
we have Fluent UI(our Component Library) that'll make building the UI easier and comply with branding.
	
You can get a project up and running pretty easily and deployed as well


Create React App would be a great place to start . Also, if anything. As much as I love using React, I also understand dev velocity is important. If your team is more familiar with C# then Blazor would probably be the best to choose. If writing JavaScript is no problem and they're able to work in it well, then I'd recommend going the React route.


How does the Blazor IDE ecosystem compare to React + Typescript? e.g. Does it have any opinion on vscode vs. visual studio? I imagine if the team is already proficient in one IDE, switching to another would be some cost. And switching back and forth between two IDEs can be painful too. 






As someone who worked on multiple Blazor & ReactJS applications (including INTRACT referenced above and a couple of other applications in Blazor) there are few things here to consider when making this decision with your team. Let me detail those here:


	
Team skillsets: when we started working with INTRACT I had a team of React developers, back-end developers and infrastructure devops develops. All of them were able to grasp Blazor within a month or so and start building end to end components. We have consider the bigger picture here in terms of skillsets and find what better fits your team. Given that the majority of engineers are backend and they are more familiar with C# than js or ts picking up Blazor was the right decision for us.
	
On the topic of coherence, we had most of these issues resolved because we leveraged Office Fabric Theme on Syncfusion which came in with components built by design to be accessible. On their documentation website they even give you the score and what accessibility tests they passed.
	
I think Blazor itself as a technology is much more focused than React. When I worked on React projects there seemed to be so many different packages, libraries, mantras, rain dances one had to do to get a component up and running. In Blazor if you know how to build a C# .NET API endpoint you are very likely to know how to grasp the concept of building UI components accordingly. Especially if the team has an established Standard to explain how to build these components - here's 18+ hours of content to detail how to build enterprise-level applications in Blazor here (https://www.youtube.com/watch?v=5Htj8JFglb4&list=PLan3SCnsISTRKj0C0ZgEG2z8aLY21tXeO)
	
Blazor as a technology seems to be getting a lot of traction and support from the community, My team and I didn't find any issues actually finding help and support even from Steve Sanderson && Daniel Roth himself (the inventors of the technology) whenever we tried to reach out they were very helpful and very kind.
	
Visual Studio seems to play with Blazor so easily today. Hot Reload, faster builds and less libraries to worry about. In fact actually you can build an entire enterprise-level system with the most complex scenarios you can imagine with the native ASP.NET Blazor libraries. bUnit for TDD and maybe Syncfusion for Coherence and that's all. Nothing extra has to be done on build pipelines either.
	
Last but not least, it all really comes down to investing in Microsoft technologies - Blazor is our technology homegrown Microsoft UI framework and I think it's worth the shot to give it a try before looking outside. When we build a new platform here at Microsoft we start with our own teams, organization and colleagues to try the technology out before sending it out to the public. Our investment in Microsoft technologies will help empower the ASP.NET Team to build an even greater product. Greater products from Microsoft equals greater opportunities for growth. 

I will add Daniel here in case he needed to add any additional points.





[01-12 04:38] Josh McCall
- C# devs will find blazor easier to write, test, deploy and reason about. 
- You can add fabric / coherence to any components (including blazor) and you can mix blazor and any JS/TS frameworks to get the best of both worlds.
- Auth, state management and network traffic is much easier in blazor because of the integration. 
I’m react fanboy and have worked with react for several years but if your asking blazor vs react, your team is c# devs (aka work at Microsoft) or your the react person supporting a team of c# devs…. Go with blazor. 
If you are 100% react engineers on the team you should at least check out blazor and the interop capabilities.


[01-12 09:04] Chris Lovett
    If you choose React, I would recommend typescript instead of javascript.
(2 liked)​[01-12 13:05] Paul Tallett (UX DEV ARCHITECT)
    I'd have thought a big downside to Blazor is React has npm packages available for almost anything you can think of
​[01-12 17:30] Josh McCall
    

Paul, depending on your use case blazor removes the need for all those npm packages. Of course with the interop you can pull them in if you wish.
 

Chris, if your team is JS/React devs, TS definitely is something to look into. In my experience, if I team is new to React, they struggle with the added abstraction of TS + TSX. To a c# dev learning JS(X) syntax (most of the docs) + TS(X) + transpilers + webpack + state management + redux + async calls + bundle size + etc. etc. is a lot when they are just trying to get the ticket closed. 



[01-12 22:00] Alexis Rios Negron
    


I have worked with both React an Blazor. Due to my preferences with .NET I prefer Blazor. Simpler, compiled (not transpiled), gives me always good performance. They have done great work really with Blazor. Have not faced any limitations at all. But if you have a preference with JS then use React.

Also there is wide support already with Blazor from many other vendors, components (commercial and free). It is your choice.

The best tool is the one you are more proficient.

