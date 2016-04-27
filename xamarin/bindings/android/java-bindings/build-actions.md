# Xamarin.Android Bindings BuildActions



*	EmbeddedJar	
	*	filetype: 	*.jar
	*	packaging:	
		*	*.jar packaged/embedded into Binding Assembly *dlll
		*	Embeedded Resource 
	*	use
		* 	the simplest and most commonly-used build action
		*	.JAR automatically compiled into byte code and packaged into the 
			Bindings Library.
*	InputJar	
	*	filetype: 	*.jar
	*	packaging:	
		*	*.jar NOT packaged/embedded into Binding Assembly *.dll
	*	use
		*	not want to include the .JAR in your Bindings Library 
			*	licensing reasons
			*	must ensure that the input .JAR is available on the device that runs 
				consuming app.			
*	LibraryProjectZip	
	*	filetype: 	*.aar
	*	packaging:	
		*	*.aar packaged/embedded into Binding Assembly *dlll
		*	Embeedded Resource 
		*	similar to EmbeddedJar, except that consuming app can access resources 
			(as well as code)  in the bound .AAR file.	
	*	use:
		*	Use this option when goal is to embed an .AAR into your Bindings Library.	
*	ReferenceJar
	*	filetype: 	*.jar - reference jar is dependency of bound *.jar or *.aar
	*	packaging:	
	*	use:
		*	to satisfy compile-time dependencies
		When you use this build action, C# bindings are not created for the reference 
		.JAR and it is not embedded in the resulting Bindings Library .DLL.	Use this 
		option when you will make a Bindings Library for the reference .JAR but have not 
		done so yet. This build action is useful for packaging multiple .JARs (and/or .AARs) into multiple interdependent Bindings Libraries.
*	EmbeddedReferenceJar	
	*	Embeds a reference .JAR into the resulting Bindings Library .DLL.	Use this build action when you want to create C# bindings for both the input .JAR (or .AAR) and all of its reference .JAR(s) in your Bindings Library.
*	EmbeddedNativeLibrary
	*	filetype: 	*.so
	*	packaging:	
		*	*.so packaged/embedded into Binding Assembly *dlll
	*	use:
		*	if java uses c/c++ through JNI
*	LibraryProjectZip
	*	filetype: 	*.zip
	*	packaging:	
		*	Eclipse Library Project
		*	special type 
			*	not *.jar nor *.aar
			*	zipped compiled folders from Eclipse (Android Library)
				with removed crunch/ folders
				*	bin/
				*	res/
*	LibraryProjectProperties
*	JavaDocIndex
			