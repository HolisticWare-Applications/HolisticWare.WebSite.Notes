# Objective-C sharpie

1. 
	`sharpie xcode -sdks` will list all of your Xcode SDKs across all of 
	your Xcode installs

2. `sharpie sdk-db -sdk iphoneos11.0 -arch arm64` 
	
	will generate the entire SDK into a PCH for subsequent lookup (e.g. you 
	only need to do this once per SDK revision/Xcode beta)
	
3.

	3.1	`sharpie query iphoneos11.0-arm64.pch [FUN OPTIONS EXPLAINED VIA -help]` 
	is your magic, `-m`, `-n`, and `-b` options are particularly useful
	
	3.b try the Sharpie Explorer GUI against the same PCH, but I never spent a 
	lot of time on it, so, maybe it does crash (was playing nice for me today though)


as for lack of documentation… exactly, all of the fun stuff is internal, 
so no formal docs there, but each tool (`sharpie -help` will list all tools) 
takes a `-help` and I tried to be pretty descriptive for each option. It’s like 
git in that generally the syntax is 

	sharpie [GENERALLY_APPLICABLE_OPTIONS] TOOL [OPTIONS_FOR_TOOL]
	
exclude modules from `sdk-db` with the `-x` option

although I did not have any issue generating the PCH for all of 10.13

what was the command line you used?

`./sharpie-dev sdk-db -s macosx10.13 -a x86_64 -x InputMethodKit -o SDKs`

./sharpie-dev sdk-db -s macosx10.13 -arch x86_64 -v -x InputMethodKit


the binding it created was missing a bunch of methods :disappointed:


Aaron Bockover [22:17] 
generally though, yes, am pretty sure you can add the native .framework reference to a binding project


[22:18] 
and that tooling will take over and do the right thing


Chris Hamons [22:18] 
@motz sharpie is as good as the header you feed it


[22:18] 
sometimes the header sucks


Aaron Bockover [22:18] 
and sometimes the native project sucks


[22:18] 
so sharpie can't even guess at what the fuck it should even try to parse


[22:18] 
I hate the tool, I hate that we wanted to try to make it "easy"


Chris Hamons [22:18] 
you could try making a header that referneces all the other headers
in the project and see if that works better


[22:19] 
know that us internal users love it


i get a "cant' create native instance the native class hasn't been loaded"


Aaron Bockover [22:45] 
that sounds like a registrar thing


[22:45] 
definitely ask in #ios or #components


[22:45] 
it doesn't sound like it's linking/loading into your app


Chris Hamons [22:46] 
you could nm the library in question and see what arch it has they symbol in question (edited)


Aaron Bockover [22:46] 
@motz I'm trying `pod bind` for you


Alex Soto [22:48] 
@motz that means that if you are running in sim, sim bits in the .framework are missing


James Montemagno [22:49] 
ahhhhh


Alex Soto [22:49] 
i.e. a device only framework


James Montemagno [22:49] 
snap :disappointed:


[22:49] 
is there a way for me to pass that to sharpie?


Alex Soto [22:49] 
you can do `xcrun lipo -info foo.framework/foo` to see available archs


ready for an old tutorial?


[22:57] 
http://alexsoto.me/bindings-bindings-bindings-part1/


[22:57] 
never managed to blog again... haha


[22:58] 
That will get you a static library instead of a framework but it will work


where Sharpie will give report `[Verify (InferredFromPrecedingTypedef)]` and `[Verify (GenericTypeParameter)]` - busy compiling XamU content. (edited)


Sebastien Pouliot [16:18] 
not sure for the former but the later is likely a case where something like `NSArray<NSObject>` is found


[16:18] 
that’s identical to `NSArray` but the fact that generics were used _hints_ to a subclass being returned


[16:19] 
so there might be a better API to be exposed, but it takes manual verification (headers and documentation) to find the _right_ type




## XCode Search paths related to sharpie options 

"Search Paths” in XCode are 

*   Header Search Paths controlled with -I and           
*   Framework Search Paths contolled with -F

In sharpie:

*   multi options (add them as much as needed)      
*   no *.framework folders, but folders containing *.framework!!

And output differs - several 10s KiBs


So this was basically enough:

    sharpie bind ResearchKit.xcodeproj

    sharpie \
        bind \
            --verbose \
            Headers/TwilioIPMessagingClient.h \
            -scope ./ \
            --output ../../../Xamarin.iOS.Sharpie/TwilioIPMessagingClient/ \
            -sdk iphoneos10.0 \
            -n TwilioIPMessagingClient \
            -c \
                -I../../../Pods/TwilioCommon/ \
                -F../../../Pods/TwilioCommon/ \
            
            
    sharpie \
        bind \
            --verbose \
            --output ./Xamarin.iOS.Sharpie/ \
            -n Twilio.Voice \
            -framework ./twilio-voice-ios/TwilioVoiceClient.framework \



                
            -sdk iphoneos10.1 \
            ./twilio-voice-ios/TwilioVoiceClient.framework/Headers/TwilioVoiceClient.h  \
            ./twilio-voice-ios/TwilioVoiceClient.framework/Headers/VoiceClient.h  \
            ./twilio-voice-ios/TwilioVoiceClient.framework/Headers/TVOIncomingCall.h  \
            
            
    sharpie \
        bind \
            --verbose \
            ./twilio-video-ios/TwilioVideo.framework/Headers/*.h  \
            -scope ./twilio-video-ios/TwilioVideo.framework/ \
            --output ./Xamarin.iOS.Sharpie/ \
            -sdk iphoneos10.1 \
            -n Twilio.Video \
            -c \
                -I./twilio-video-ios/ \
                -F./twilio-video-ios/ \
            
            
## Framework requires SDK which is not installed


    framework requires SDK 'iphoneos10.1' which is not installed.       
    You may need a newer Xcode.         


    moljac$ instruments -s devices
    Known Devices:
    Miljenko’s NEW 2015 MacBookPro11,5 [72C482FF-6396-5F3A-9BA7-A9719E6F9CD6]
    Apple TV 1080p (10.1) [FBF19EEA-9340-4F76-B1DD-8994415987FA] (Simulator)
    Apple TV 1080p (9.2) [783D7B10-9AB1-4178-9021-FB61BE468D78] (Simulator)
    Apple Watch - 38mm (2.2) [B15B277B-B3D0-4048-A271-29CFDDF088D6] (Simulator)
    Apple Watch - 38mm (3.1) [2F742C57-EE36-4A2D-8119-892173D349A7] (Simulator)
    Apple Watch - 42mm (2.2) [D31EB16C-D15D-475B-BFAD-FADB2C00B194] (Simulator)
    Apple Watch - 42mm (3.1) [5F18EEE9-8CA0-43D9-8516-1476C4978FE0] (Simulator)
    iPad 2 (8.4) [452A6430-D265-4705-AB4D-051DC40006A7] (Simulator)
    iPad 2 (9.2) [A81B0C45-56EA-43F3-9013-64E9BC062350] (Simulator)
    iPad Air (10.0) [A46AAA48-8E68-4DD3-A97D-79AA0FDEB5E2] (Simulator)
    iPad Air (10.1) [77E0E127-7ED1-4256-9B59-9B3DF56D54A1] (Simulator)
    iPad Air (10.2) [DC96DB94-0A6B-4DE5-8180-AEBAEF1BA026] (Simulator)
    iPad Air (8.4) [5420D441-E7B4-4092-8851-2476C12E6F4C] (Simulator)
    iPad Air (9.2) [0DD301E4-2DB6-40EC-B064-EF33F8CD5BED] (Simulator)
    iPad Air 2 (10.0) [BE5F0585-CBFF-4C15-9F85-D3C11EDCB86A] (Simulator)
    iPad Air 2 (10.1) [F0100F25-393D-4E83-8371-E9C18D739A3F] (Simulator)
    iPad Air 2 (10.2) [0012A582-B437-4186-8E7B-9AE74EEEDDC3] (Simulator)
    iPad Air 2 (9.2) [C410B4B2-E85A-4443-91B2-780CA2BDB41E] (Simulator)
    iPad Pro (12.9 inch) (10.0) [FAB1F749-E459-4148-AEC8-350ED5CBE6CE] (Simulator)
    iPad Pro (12.9 inch) (10.1) [F1DBF9E2-5DD5-4EC3-B625-56C199D2BA71] (Simulator)
    iPad Pro (12.9 inch) (10.2) [17A5D391-8CD8-4C53-A7B1-90A35B70B93A] (Simulator)
    iPad Pro (9.2) [FD1AF421-DB94-44BA-BF40-B0F99DE0A6C5] (Simulator)
    iPad Pro (9.7 inch) (10.0) [0F1C8689-8B48-4E36-BC61-303454A45427] (Simulator)
    iPad Pro (9.7 inch) (10.1) [79526F2E-6AAF-4A45-A270-B450FB20D445] (Simulator)
    iPad Pro (9.7 inch) (10.2) [9BA98E12-16F7-4570-A984-DDB8E4F59162] (Simulator)
    iPad Retina (10.0) [D47A8951-D770-49A9-8C2D-AB41997F3C54] (Simulator)
    iPad Retina (10.1) [34C9E1F0-B0B7-436E-9264-ADB43BAB5626] (Simulator)
    iPad Retina (10.2) [97F2371B-043A-4733-B413-272C135BEC22] (Simulator)
    iPad Retina (8.4) [B5D59008-C7D7-40F0-8E37-5A99B1A02B6C] (Simulator)
    iPad Retina (9.2) [40687F45-4371-4D7A-8E95-EB2E7FB525DF] (Simulator)
    iPhone 4s (8.4) [9375C2AA-4AF2-4065-B72F-546603563537] (Simulator)
    iPhone 4s (9.2) [9F60A6E8-7A20-40C4-B609-9970B97C4AA7] (Simulator)
    iPhone 5 (10.0) [7F8A9823-EDF1-499E-A34F-22B717828944] (Simulator)
    iPhone 5 (10.1) [53F028CD-0702-4545-BB93-F03B89C01F0B] (Simulator)
    iPhone 5 (10.2) [337AFAD3-373A-4FC0-AB6E-390671ADB787] (Simulator)
    iPhone 5 (8.4) [AE093F22-21C4-46C8-B91A-EC7BB7B4912A] (Simulator)
    iPhone 5 (9.2) [A76AF328-EB9F-49FA-B16B-6B73212B4D02] (Simulator)
    iPhone 5s (10.0) [E03F717F-1AB3-4699-9E04-983AED3B74C3] (Simulator)
    iPhone 5s (10.1) [A208C0F5-C3A9-42FD-9745-98688579D4A9] (Simulator)
    iPhone 5s (10.2) [96038D82-66F5-4039-8179-CE30BE7920A6] (Simulator)
    iPhone 5s (8.4) [558D21EF-FA77-455F-B3DE-922E0B544CD2] (Simulator)
    iPhone 5s (9.2) [A989E8D5-6284-4900-8CC0-BE3D8AD29CA7] (Simulator)
    iPhone 6 (10.0) [E6C3F381-AEB5-425E-8D59-B20E08220DF3] (Simulator)
    iPhone 6 (10.1) [40ACA699-11CB-4BC4-9139-0C1EBF38B01A] (Simulator)
    iPhone 6 (10.2) [6406AE64-9482-4DA1-A425-121E3B811A54] (Simulator)
    iPhone 6 (8.4) [D9982404-01E5-4EC7-AE02-B1C1423E4E7E] (Simulator)
    iPhone 6 (9.2) [BDBCB8D6-CBDD-473A-97A2-24C36EA39DC3] (Simulator)
    iPhone 6 Plus (10.0) [24048D18-5347-4377-B790-64E297C6FF53] (Simulator)
    iPhone 6 Plus (10.1) [11ADF2FF-6FB5-4F09-87E3-0B1BD292519E] (Simulator)
    iPhone 6 Plus (10.2) [E66C3FC6-10EE-45C5-BB64-8B28A441EF8F] (Simulator)
    iPhone 6 Plus (8.4) [6F027487-E548-4740-95FF-DC10C98BDAFA] (Simulator)
    iPhone 6 Plus (9.2) [3ADB56B8-E660-4C80-82BA-BA22A6EAEDDF] (Simulator)
    iPhone 6s (10.0) [D77B6A84-C9CD-470D-B300-6626EC08F5F1] (Simulator)
    iPhone 6s (10.1) [49E02BA1-488E-4861-8010-4DDEBE817460] (Simulator)
    iPhone 6s (10.2) [74DC0E2C-55DA-4B84-87C7-72E13CCBE87D] (Simulator)
    iPhone 6s (9.2) [CF8078FF-C1E6-4023-B2CC-39E2A79167C4] (Simulator)
    iPhone 6s Plus (10.0) [F6496D98-55DA-4EA2-9B08-9B167C749B7C] (Simulator)
    iPhone 6s Plus (10.1) [82EB5F5A-479B-41BB-AEF7-88499B5E8E05] (Simulator)
    iPhone 6s Plus (10.2) [22451F38-9932-4B7F-BB30-EECC3FB82372] (Simulator)
    iPhone 6s Plus (9.2) [EBDE851A-735E-4A96-BB12-79DBCCCBC5F0] (Simulator)
    iPhone 7 (10.0) [5F64637A-9639-43BA-836A-02755794E9A1] (Simulator)
    iPhone 7 (10.1) [DADE48A7-491C-4E13-8891-489F67494C43] (Simulator)
    iPhone 7 (10.2) [6591C9E4-130E-480C-A53C-49DA155FD50A] (Simulator)
    iPhone 7 (10.2) + Apple Watch Series 2 - 38mm (3.1) [D1DF8220-88EB-4300-A029-57E4D0408A72] (Simulator)
    iPhone 7 Plus (10.0) [A8F0290A-6F8E-4123-88B1-503F4681C880] (Simulator)
    iPhone 7 Plus (10.1) [43C56DC9-A852-45EF-BD47-A4410E281257] (Simulator)
    iPhone 7 Plus (10.2) [FDC5B80F-E08A-4985-AFD7-BD0C05732E3F] (Simulator)
    iPhone 7 Plus (10.2) + Apple Watch Series 2 - 42mm (3.1) [A98C9B38-F858-44D0-9764-08AABB41AD7E] (Simulator)
    iPhone SE (10.0) [1783EDFE-90DA-4601-9518-1DEDAE439222] (Simulator)
    iPhone SE (10.1) [3222D09D-19A9-4801-94D3-979EA2A56721] (Simulator)
    iPhone SE (10.2) [74D6FD84-07D3-4C84-B3E1-4ACE9838AFB7] (Simulator) 
    
    
Changed Info.plist in the framework:

    DTSDKName           iphoneos10.1    to  iphoneos10.2
    DTPlatformVersion   10.1            to  10.2
    
    
    
## error: UPPlatform: Umbrella header file does not exist

    sharpie \
        bind \
            --verbose \
            -output ./Xamarin.iOS.Sharpie/ \
            -sdk iphoneos10.2 \
            -n Jawbone.UP \
            --output ./Xamarin.iOS.Sharpie/ \
            --framework ../binaries-minimal/ios/UPPlatform.framework \

            
Do  not copy *.framework files on Windows. Some files might (symbolic links!!)
might be skipped.

Do not unzip packed github repos on Windows - some files might not be
correctly created - symlinks
 

## error: Clang failed to parse input and exited with code 1


    sharpie \
        bind \
            --verbose \
            -output ./Xamarin.iOS.Sharpie/ \
            -sdk iphoneos10.2 \
            -n Jawbone.UP \
            --output ./Xamarin.iOS.Sharpie/ \
            --framework ../binaries-minimal/ios/UPPlatform.framework \

Fix

    In file included from 
    /private/var/folders/qc/rv_h3cj56_l489wg4x60rmy40000gn/T/com.xamarin.ObjectiveSharpie/2bad6c133ce64954a7648a24e63a9d79.h:1:
    ./external/binaries-minimal/ios/UPPlatform.framework/Headers/UPPlatform.h:193:196: 
    error: expected a type
      ...*)clientID clientSecret:(NSString *)clientSecret authScope:(UPPlatformAuthScope)authScope redirectURI:(NSString *)redirectURI presentingViewController:(UIViewController ...
                                                                                                                                                                 ^
                                                                                                                                                             
Error points that UIViewController is expected type, meaning that it is unknown.

Importing UIKit in UPPlatform.h fixed the error!

    #import <UIKit/UIKit.h>

## error: sources cannot be specified when the -framework option is used

Missing Classes

    sharpie \
        bind \
            --verbose \
           ../binaries-minimal/ios/UPPlatform.framework/Headers/*.h  \
            -output ./Xamarin.iOS.Sharpie/ \
            -sdk iphoneos10.2 \
            -n Jawbone.UP \
            --output ./Xamarin.iOS.Sharpie/ \
			--scope ../binaries-minimal/ios/UPPlatform.framework \
            -c \
                -v \
                -I../binaries-minimal/ios/ \
                -F../binaries-minimal/ios/ \
            
    

            