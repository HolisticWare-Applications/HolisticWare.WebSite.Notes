# Android Debug Bridge 


http://www.androidcentral.com/android-201-10-basic-terminal-commands-you-should-know

Android Central
Ten basic Android terminal commands you should know


has anyone used `fastboot oem unlock`

Tobias Røikjer [18:34] 
yes

[18:34] 
why? :slightly_smiling_face:

Glenn Wester [18:44] 
would you recommend it over adb reboot?

Tobias Røikjer [18:44] 
They are not the same at all :slightly_smiling_face:

[18:45] 
I would not recommend adb reboot either, it should never be necessary






there's a command for ios sim as well

Charles Wang [18:28] 
oh what’s the ios command?

Glenn Wester [18:28] 
xcrun simctl erase <device UDID>

Charles Wang [18:28] 
cool! Not that that’s super obvious

[18:28] 
-_-

Joshua Moody [18:28] 
Yes.

[18:28] 
But that is an async command on iOS.

[18:29] 
Use the run-loop ruby API.

[18:29] 
> async

[18:29] 
It will return before the erase is completed.