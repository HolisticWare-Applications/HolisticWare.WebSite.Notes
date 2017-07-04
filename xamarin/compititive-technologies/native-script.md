# NativeScript

# Native Script vs Xamarin


1 	Professional tools for debugging and profiling code.  Mobile tools using 
	JavaScript are very opaque for digging into performance and memory issues. 
	Xamarin provides those tools.
	
2	Full iOS and Android API is not available in NativeScript. Lots of user contributed 
	plug-ins for common scenarios, but lacks full access to API.  

3 	No official support channels for those user contributed plug-ins.
4	Performance of JS can be an issue for some applications
5	No ability to use storyboards or android layouts
6	Updates when new OS versions arrive??

NativeScript or ReactNative may look like a good choice for their app currently, but 
what about app roadmap?  Will there be additional features their app requires down the 
road?  In general, if app is very complex, requires lower-level APIs or has need of higher 
performance, Xamarin will be a better fit.

NativeScript is not as widely used as Xamarin or ReactNative. Not much in the way of published 
apps with any sizable user base, or companies that have adopted NativeScript (publicly). Their 
app may be a candidate for NativeScript, but they should probably expect to deal with many 
growing pains as the product matures.


look at partners page for NativeScript.  It's not spectacular. 
https://www.nativescript.org/preferred-partners


They do offer a unified UI which (I don't think) React Native has

So with NativeScript I can access both platform specific UI and a unified UI


Telerik claims that NativeScript has 100% API access.

For UI or all?

>	New native platform updates are available immediately in NativeScript's JavaScript 
> layer for the developer to consume. There is no need to wait for us to provide wrappers 
> or bridging code to use new features. You always have 100% access to every native platform 
> API and component from JavaScript, TypeScript or Angular    the moment the feature becomes 
> available in the mobile operating system.



use an automatic tool to bind the APIs which is the basis of the above.

http://developer.telerik.com/featured/nativescript-works/
Telerik Developer Network
How NativeScript Works -
TJ VanToll digs deep into the NativeScript engine to examine how it allows JavaScript to 
communicate with the underlying native API's on iOS and Android. 

single threaded, all animations and transitions handled on the CPU, crash town.

Any API in iOS returning a type of id can't be marshalled (edited)

Thats true of react native as well, correct?

all JS driven frameworks

What is it with js frameworks and a lack of threading? /me looks at node.js

NativeScript can use worker threads, but can't debug them!!


well, they took a basic scripting framework, and bolted it to library b, which requires 
library c, [X * framework references] and it works using reflection :smile: oh wait… you 
mean we cant do multi threading… Oooh i’ve got a great idea… lets use FRAMES 


It's the whole black box thing

If everything works, you're in luck.  If it doesn't, good luck finding it.

http://developer.telerik.com/featured/benefits-single-threading-model-nativescript/
Telerik Developer Network
The Benefits of NativeScript’s Single Threading Model -
Georgi Atanasov explains the architectural reasons for running JavaScript on the UI thread 
in NativeScript and the trade offs inherent in alternative models 


some good information on the limitations: 
https://docs.nativescript.org/core-concepts/multithreading-model#limitations
docs.nativescript.org
Multithreading Model
Learn how to offload heavy work on a non-UI thread to create a responsive UI without 
slowing down rendering.


except:

> Keep in mind that when you are using non-thread-safe native APIs and data you have to 
> handle the synchronization part on your own. The runtime doesn’t perform any locking 
> or synchronization logic on native data access and API calls.


On the consistency and thoughtful design of JavaScript: 
https://www.destroyallsoftware.com/talks/wat


[] + [] = empty string

It gets worse.

That's hillarious!

Array(16).join("wat" - 1) + " Batman!"

Which, when I enter into Node on Mac, I receive "NaNNaNNaNNaNNaNNaNNaNNaNNaNNaN Batman!"

On Windows: "NaN Batman!"

