# Android dependencies

*	aar - Android Archive
	*	contnent - compiled code in classes.jar
	*	tool - gradle
*	apklib 
	*	content - code + resource 
	*	tool - shared with Maven

From my understanding, apklib contains code + resource shared with Maven . aar 
files are distributed by Gradle . The aar differ from apklib in one major way : 
classes are compiled and included in a classes.jar in the root of the aar. 
Whereas apklib cannot contain compiled class files or jars.


ote that his post is about creating an apklib from Gradle, which is a slightly 
weird thing to want to do, but it provides a pretty clear idea of how one of 
these things is structured.

The good news is that this is "standard" Android project structure as of when 
Eclipse was the primary IDE, and Android Studio knows how to import modules 
that look like this. So follow these steps:

Unpack your apklib into a temporary directory. It's in zip format, so something 
like unzip library.apklib should work.
Look at what's unpacked. You should see a directory containing 
AndroidManifest.xml, 
src, and 
res folders.

In Android Studio, inside an existing project, choose File > Import Module and 
point it at the directory from step 2.
Android Studio should manage the import by copying the files into your project 
in a new module, arranging them in its preferred directory structure, and will 
add a build.gradle file for the module.
At this point you're up and running. If you actually want the .aar file, then 
check to see if your new module is set up as a library module or an application 
module. In its build.gradle, if you've got apply plugin: 'com.android.library' 
then it's a library module, and Gradle will generate an .aar as part of the build: 
it will be in the build/outputs/aar directory after a successful build.
If your module imported as an app module and not a library (apply plugin: 
'com.android.application', then change that apply plugin statement, and you may 
also need to remove the applicationId statement from the build file. Now it should 
compile as a library and generate a .aar.












main differences between apklib vs aar files ?
Couple differences that comes to my mind, in addition to the one you said:

aar can contain no source code and a java jar inside the libs folder in case 
you don't want to provide the source code (like Google Play Services does);
aar can contain custom proguard file and custom lint rules, although I'm not 
sure they are take into account at the moment.
2 Can Maven use aar ? Can Gradle use apklib ?
The Android Maven Plugin supports aar since version 3.7.0. Gradle doesn't 
support using apklib dependencies but you could export your android-library 
as apklib








radle does not support apklib dependencies how can one migrate from apklib dependencies to aar dependencies? Is it possible to either manually or automatically convert apklib dependency to aar? If yes - how, if no - why not?

In this question I assume that I don't have original project for apklib, but rather the file itself.





apklib doesn't contain object files, only source files, so the only way it can be included in any project is by recompiling it. According to some docs you can read at:

Android dependencies : apklib vs aar files and https://plus.google.com/+ChristopherBroadfoot/posts/7uyipf8DTau

The apklib format was invented as a way to share Android code+resources. It’s essentially a zipped up Android library project, which was already the status quo for code+resource sharing.
And you can see in Chris Broadfoot's post that the task that generates the apklib just zips up the AndroidManifest.xml file and the src and res directories:

task apklib(type: Zip) {
    appendix = extension = 'apklib'

    from 'AndroidManifest.xml'
    into('res') {
        from 'res'
    }
    into('src') {
        from 'src'
    }
}
Note that his post is about creating an apklib from Gradle, which is a slightly weird thing to want to do, but it provides a pretty clear idea of how one of these things is structured.

The good news is that this is "standard" Android project structure as of when Eclipse was the primary IDE, and Android Studio knows how to import modules that look like this. So follow these steps:

Unpack your apklib into a temporary directory. It's in zip format, so something like unzip library.apklib should work.
Look at what's unpacked. You should see a directory containing AndroidManifest.xml, src, and res folders.
In Android Studio, inside an existing project, choose File > Import Module and point it at the directory from step 2.
Android Studio should manage the import by copying the files into your project in a new module, arranging them in its preferred directory structure, and will add a build.gradle file for the module.
At this point you're up and running. If you actually want the .aar file, then check to see if your new module is set up as a library module or an application module. In its build.gradle, if you've got apply plugin: 'com.android.library' then it's a library module, and Gradle will generate an .aar as part of the build: it will be in the build/outputs/aar directory after a successful build.
If your module imported as an app module and not a library (apply plugin: 'com.android.application', then change that apply plugin statement, and you may also need to remove the applicationId statement from the build file. Now it should compile as a library and generate a .aar.



difference between JARs and apklib is that apklibs can contain android code and resources.




. What is apklib?
apklib is a way to bundle an Android library project.

Many Android developers thought the existing Android build system, based on Ant, was insufficient. Maven is arguably a better build system, so the android-maven-plugin was created, to let Maven users build their Android projects.

Maven downloads all of the dependencies for your project - for most Java projects, these are jars. The apklib format was invented as a way to share Android code+resources. It’s essentially a zipped up Android library project, which was already the status quo for code+resource sharing.

2. Why doesn’t Gradle support it?
The Android team introduced the aar format at Google I/O 2013. From what I gather, it differs from apklib in one major way: classes are compiled and included in a classes.jar in the root of the aar, whereas apklib cannot contain compiled class files or jars (they are ignored).




Using android-maven-plugin, maven can use both apklib and aar format.

But gradle only can use aar foramt.

Eclipse can use maven plugin to work with apklib and aar. But I can not work that out. I did that before.

Using android-maven-plugin, maven can generate apklib and aar format. But the files in libs will be packed. I don't know how to exclude that. I was not sure weather the aar war right or not.





