# Objective-C sharpie

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
            Headers/TwilioIPMessagingClient.h \
            -scope ./ \
            -o ../../../Xamarin.iOS.Sharpie/TwilioIPMessagingClient/ \
            -sdk iphoneos10.0 \
            -n TwilioIPMessagingClient \
            -c \
            -I../../../Pods/TwilioCommon/ \
            -F../../../Pods/TwilioCommon/ \
			
			
    sharpie \
        bind \
            ./twilio-video-ios/TwilioVideo.framework/Headers/TwilioVideo.h  \
            -scope ./twilio-video-ios/ \
            -o ./Xamarin.iOS.Sharpie/ \
            -sdk iphoneos10.1 \
            -n Twilio.Video \
			-c \
				-I./twilio-video-ios/ \
				-F./twilio-video-ios/ \
			
			
    sharpie \
        bind \
            ./twilio-voice-ios/TwilioVoiceClient.framework/Headers/TwilioVoiceClient.h  \
            -scope ./twilio-voice-ios/ \
            -o ./Xamarin.iOS.Sharpie/ \
            -sdk iphoneos10.1 \
            -n Twilio.Voice \
			-c \
				-I./twilio-voice-ios/ \
				-F./twilio-voice-ios/ \
			