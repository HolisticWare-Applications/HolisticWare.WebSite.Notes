# Android Emulator - AVDs and System Images


android-emulator-avd-and-system-images.md 

The ARM image more closely matches most Android devices, but requires the processor 
to be emulated and is thus very slow. The x86 is potentially quite a bit faster, 
possibly using virtual machine support mechanisms to execute the code in a partially 
native way. You can try the x86 for speed, and fallback to the ARM if you have compatibility 
problems. See developer.android.com/tools/devices/emulator.html



In the beginning the only Android system images available ran on the ARM instruction set. A 
system image is used to create different Android Virtual Devices (AVDs) and emulate the 
different Android devices in common use.

As developer workstations are usually Intel x86 based, the ARM instruction set had to be 
emulated as well. This resulted in poor performance from the AVDs due mainly to the amount of 
translation the x86 processor was doing to also emulate the ARM instruction set.

At Android 4.0.3 (API 15) Intel provided their own x86 based Android system image. This could 
then be used to create AVDs that did not need to do ARM translation. Combined with the HAXM
(Intel Hardware Accelerated Execution Manager) the x86 AVMs were up to 10 times faster than the 
equivalent ARM emulators.

Support for Google specific Android APIs like the Android Google maps API, are not provided 
with the standard Android system images. They need to be installed separately using the Android 
SDK Manager. To use these APIs with an x86 system image you need to also install the Google APIs 
(x86 System Image) for the same API level.


with "Google APIs" you can set up google account inside emulator, which is not available in pure 
Android image. Google Maps api added as well in case your app needs it. 


what is the difference between those two images ?
The Google APIs one has Google Maps and the Play Services framework in it.

only need to install Google APIs Intel x86 Atom_64 System Image in order to create an emulator 
with Google APIs. As mentioned above, you do not need to install the separate Google APIs package.

If you do not use any Google APIs, you could install Intel x86 Atom_64 System Image instead.


Android is developed by Google, but can also be used without any Google services. So the Android 
platform SDK can be used for developing Android applications. If you however want to use any Google 
services in your Android Application, you should use the Google API Java Client library.


Both are full images, the Google APIs one isn't an add-on.

The only difference between the two is the support for Google APIs that is only in 2., both 64bit 
images are as fast.


You should tick "Use host GPU" setting instead of Snaphost as Snapshot will save you start time 
but the emulator will be overall slower.


Am I allowed to remove system images?
In short, Yes. But after removing them, you are no longer able to use emulators. But you can still 
use your real Android device without any issues.


So my question is, what is intel x86 atom system image in android sdk manager?
It is a version of the Android emulator that runs natively on x86 CPUs, like those in most 
development machines.

Contrast that with the ARM system image, which contains ARM (not x86) CPU instructions, and 
therefore must be translated when run.

