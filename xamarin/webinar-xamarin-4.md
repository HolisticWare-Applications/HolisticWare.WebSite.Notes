Welcome to the Xamarin webinar, "What's New in Android M" We will begin shortly.

Audience Question
Q: what are the differences on using visual studio or xamarin studio 
for development?
A: There are lots of differences between the IDEs. Visual Studio allows you to develop for iOS, Android and Windows from the same IDE. Xamarin Studio on PC only supports Android. When running Xamarin Studio on a Mac you can develop for iOS and Android.

Audience Question
Q: How is HttpClient implemented on iOS and Android -- does it work with NSURLSessions, for example, to download in the background?
A: If you want to use the native networking stack whilst still using .NET then take a look at ModernHttpClient. This does use NSURLSession, unlike the default HttpClient implementation on iOS.

Audience Question
Q: and in terms of performance or funcionalities?
A: Its hard to qualify performance. As you can see, Visual Studio is very performant even when running in a virtual machine. If you're an existing Visual Studio user then I'd recommend sticking with it. If you're not using VS then I'd suggest trying Xamarin Studio.

Audience Question
Q: how to draw border in xamarin Forms
A: https://developer.xamarin.com/api/property/Xamarin.Forms.Button.BorderColor/

Audience Question
Q: any tip/trick to fasten up the Build-Process?
A: You can speed up deployment by selected 'incremental build' in the project properties

Audience Question
Q: Will Xamarin Studio ever support Windows Phone/Windows 10 development?
A: This is very unlikely as we'd need to make the WIndows phone SDK work in Xamarin Studio. Given how fantastic Visual Studio is for Windows Phone development, we recommend using Microsoft tools.