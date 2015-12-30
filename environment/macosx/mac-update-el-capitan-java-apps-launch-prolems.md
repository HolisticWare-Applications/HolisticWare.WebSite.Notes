# El Captain Update 

After update 2015-12-20 of El Capitan some of java apps do not start, i.e.
Android Studio.


Opening the apps from the command line gives this error: 

    $ open /Applications/Android\ Studio.app
    LSOpenURLsWithRole() failed with error -600 for the file /Applications/Android Studio.app.    
    
Works:

    /Applications/Android\ Studio.app/Contents/MacOS/studio 
    
    
    
	/Applications/Android\ Studio.app/Contents/MacOS/studio ; exit;
	2015-12-30 14:58:49.853 studio[3271:50779] Value of STUDIO_JDK: (null)
	2015-12-30 14:58:49.861 studio[3271:50783] fullFileName is: /Applications/Android Studio.app/Contents/bin/studio.vmoptions
	2015-12-30 14:58:49.861 studio[3271:50783] fullFileName exists: /Applications/Android Studio.app/Contents/bin/studio.vmoptions
	2015-12-30 14:58:49.861 studio[3271:50783] Value of STUDIO_VM_OPTIONS is (null)
	2015-12-30 14:58:49.861 studio[3271:50783] Processing VMOptions file at /Applications/Android Studio.app/Contents/bin/studio.vmoptions
	2015-12-30 14:58:49.862 studio[3271:50783] Done
	2015-12-30 14:58:49.862 studio[3271:50783] Processing VMOptions file at /Users/moljac/Library/Preferences/AndroidStudioPreview2.0/studio.vmoptions
	2015-12-30 14:58:49.862 studio[3271:50783] No content found
	2015-12-30 14:58:49.862 studio[3271:50783] Processing VMOptions file at 
	2015-12-30 14:58:49.862 studio[3271:50783] No content found
	/Applications/Android Studio.app/Contents/bin/idea.properties: 'java.endorsed.dirs' already defined
	log4j:WARN No appenders could be found for logger (io.netty.util.internal.logging.InternalLoggerFactory).
	log4j:WARN Please initialize the log4j system properly.
	log4j:WARN See http://logging.apache.org/log4j/1.2/faq.html#noconfig for more info.
	Looking in classpath from com.intellij.util.lang.UrlClassLoader@579bb367 for /com/sun/jna/darwin/libjnidispatch.jnilib
	Found library resource at jar:file:/Applications/Android%20Studio.app/Contents/lib/jna.jar!/com/sun/jna/darwin/libjnidispatch.jnilib
	Trying /Users/moljac/Library/Caches/AndroidStudioPreview2.0/tmp/jna--1068556606/jna6081905039114819194.tmp
	Found jnidispatch at /Users/moljac/Library/Caches/AndroidStudioPreview2.0/tmp/jna--1068556606/jna6081905039114819194.tmp
	Adding paths from jna.library.path: null
	Trying libc.dylib
	Found library 'c' at libc.dylib
	Looking for library 'Foundation'
	Adding paths from jna.library.path: null
	Trying libFoundation.dylib
	Adding system paths: [/usr/lib, /lib, /usr/lib, /lib]
	Trying libFoundation.dylib
	Looking for matching frameworks
	Trying /System/Library/Frameworks/Foundation.framework/Foundation
	Found library 'Foundation' at /System/Library/Frameworks/Foundation.framework/Foundation


	$ echo $STUDIO_JDK


