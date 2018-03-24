# 

 without AOT, is it possible to reduce floating point precision in Xamarin.Android, 
 similar to 
 
    --aot-options=-O=float32` 

on IOS (but again, without AOT (still trying to figure out why the customer is so 
anti-AOT but that is a different battle))

Not sure if there is a mono runtime environment setting for that... so probably not.

it might work by passing -O=float32 as a command line option, but it was never tested 
on android, which has different fp hardware, so it will most likely not work.

we could add support for it if there is sufficient demand.

in theory, you can set the 

    debug.mono.runtime_args
    
system property to contain that option:

    adb shell setprop debug.mono.runtime_args -O=float32


which, alas, is device-global, so you should instead use an Environment.txt: 
http://developer.xamarin.com/guides/android/advanced_topics/environment/

but as vargaz noted, that’s never been tested, so, uh, test it. :simple_smile: