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
            ./twilio-voice-ios/TwilioVoiceClient.framework/Headers/.h  \
            ./twilio-voice-ios/TwilioVoiceClient.framework/Headers/.h  \
            ./twilio-voice-ios/TwilioVoiceClient.framework/Headers/.h  \
            ./twilio-voice-ios/TwilioVoiceClient.framework/Headers/.h  \
			
			
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
			
			
			