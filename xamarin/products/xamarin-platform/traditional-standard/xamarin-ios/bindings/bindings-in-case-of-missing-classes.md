

"PhoneGap, Appcelerator, Xamarin and the like"
 
"Xamarin sits in the same vein of technology as other, similar offerings such as Adobe's PhoneGap, the similar Apache Cordova, and Appcelerator."

"whether to "go native" or make use of a tool such as Xamarin"


Before shoot-and-forget arguments in the wild it would be beneficial, if not fair to read (and hopefully learn) something about technology being discussed. If not then definition what is "native" should be provided for other users that are not familiar with the topic.


When I want to disarm Android java advocats with their theory that only java is native Android development I ask them what NDK is and what is more native c/c++ or java. Apps written with NDK in c/c++ are valid native Android apps - not talking about productivity here!

In mobile term "native" is often used for tuple (Technology, Platform) that some vendor have chosen. So for Apple this is (objective-c, iOS) or (swift, iOS) and for Google Android it is (java, android).

More and more of the HTML/JS/CSS frameworks are becoming native with the advance of AOT (ahead of time compilation) one example is React Native.

Xamarin is native. Ditto. 
The best way to explain that is Android: java on Android works thorugh JNI with native system code written in c/c++ and the same way works c# but using other names (JNI is called PInvoke), but the interop (interoperabiity) principle is the same. The only difference is that c# interops with java and c/c++, while java interops only with c/c++.
In some benchmarks Xamarin's mono runtime is even faster than Dalvik. Here are some links from ex-googler Harry Cheung:
https://medium.com/@harrycheung/cross-platform-mobile-performance-testing-d0454f5cd4e9
https://medium.com/@harrycheung/mobile-app-performance-redux-e512be94f976#.nnczxhqq3








		OpenTok/source/OpenTok.Library.Bindings.XamarinIOS/obj/Debug/ios/OpenTok/OTVideoFrame.g.cs(29,29): 
		Error CS1502: 
		The best overloaded method match for 
			`Foundation.NSArray.FromNSObjects(params Foundation.NSObject[])' 
		has some invalid arguments 

		OpenTok/source/OpenTok.Library.Bindings.XamarinIOS/obj/Debug/ios/OpenTok/OTVideoFrame.g.cs(44,44): 
		Error CS1503: 
		Argument `#1' cannot convert 
			`byte*[]' 
		expression to type 
			`Foundation.NSObject[]'

Generated code:
	

byte[] cannot be used!

		// -(void)setPlanesWithPointers:(uint8_t **)planes numPlanes:(int)numPlanes;
		[Export ("setPlanesWithPointers:numPlanes:")]
		unsafe void SetPlanesWithPointers (byte*[] planes, int numPlanes);
	

Solution:
	
		// -(void)setPlanesWithPointers:(uint8_t **)planes numPlanes:(int)numPlanes;
		[Export ("setPlanesWithPointers:numPlanes:")]
		unsafe void SetPlanesWithPointers (IntPtr planes, int numPlanes);
	
	
	

// -(void)setPlanesWithPointers:(uint8_t **)planes numPlanes:(int)numPlanes;
        [Export ("setPlanesWithPointers:numPlanes:")]
        unsafe void SetPlanesWithPointers (byte*[] planes, int numPlanes);

[17:42] 
byte*[] -> IntPtr

[17:42] 
sorry

Alex Soto [17:42] 
that seems like an array of arrays?

[17:43] 
so yeah to have you going just use IntPtr for now

Miljenko Cvjetko 🇭🇷 [17:45] 
Build Successful

[17:45] 
:sunglasses:

Alex Soto [17:45] 
I think that is a `byte[][]`

[17:45] 
but that needs custom marshalling too	
	
	