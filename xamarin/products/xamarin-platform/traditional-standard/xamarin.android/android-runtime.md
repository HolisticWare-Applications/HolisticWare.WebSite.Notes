# Android Runtime[s]

hanks for you answer. But for what is the Mono Runtime if they compile 
directly to the ART (btw, AFAIK this means Android Run Time :) )? And I thought 
the AOT in Xamarin Android is Mono AOT and not the “Android AOT”?

If I can remember correctly ART was initially (when 4.4 KitKat came out) was 
called Advanced RunTime (I might be wrong), because it was optional and default 
was Dalvik VM. Later on when ART became default runtime nomenclature switched 
from Advanced to Android, but this is irrelevant.

At the beginning user was able to switch from Dalvik (default) to ART in Options. 
ART and Dalvik VM are compatible runtimes, but I can recall that Xamarin.Android 
core team needed few weeks (few months) to fix all issues related to ART.

AOT in Xamarin is both Mono and Android AOT. There are 2 types of code generated 
during app build:

*	managed CLR (.net) code which is compiled to native and includes Mono RT 		
	and app code (user code)		
*	java code needed to bridge user code with Android OS (user Android objects 		
	ie Activities/Intents/BroadcastReceivers/Services must receive 		
	info/calls/whatever from Android OS and Android has no idea about c#/.net 		
	and CLR, so java wrapper classes are generated for those objects which 		
	receive those info/calls/signals and pass them to .net/CLR code. So, this 		
	part is passed to Android AOT.

	
Which code is when passed to certain tools like dex2oat I have to lookup right 
now and this is changing all the time. Xamarin.Android core team is constantly 
improving build process. Right now they (together with few people from Components 
Team) are optimising downloads of google repos by extracting parts of zips and not 
downloading whole zips, just to shorten build times.
