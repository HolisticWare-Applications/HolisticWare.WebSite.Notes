# Talk Video Recording Evolve 2013 Jonathan Pryor - Binding Java Libraries

Jonathan Pryor: Android dev lead


* 	reasons 
	*	to perform bindings
		*	save time
			*	reuse existing APIs in binary form
				*	libraries - simple jars
				*	OS (Android libraries -  jars) itself
			*	porting java to c# 
				*	time consuming
				* 	usually not feasible
	*	not to perform bindings
		*	performance
			*	architecture parts:
				*	Dalvik VM
				*	mono VM		
				*	JNI boundary
				
Java Library Binding:

	*	allows:
		* 	instance creation (java types creation)
		*	method invocation
		*	filed access
		*	inheritance
		*	method overriding
		*	method overloading
	*	automagically generated properties and events for certain Java constructs
		*	java beans get/set -> properties
		*	java listener convention -> .net events
	*	Follows .net conventions:
		*	PascalCase casing
			*	namespaces (java packages)
			*	classes
		*	SCREAMINGCASE (uppercase) for fileds -> camelCase for .net
		*	I prefix for Interfaces
		*	normalization / .netization
			*	plurlization - namespaces in plural
			
*	binding alternatives
	*	porting java code to c#
		*	not feasible
		*	for small samples (stackoverflow) few LOCs
			*	copy into *.cs file
			*	manually port it
		*	tools
			*	sharpen
			*	Tangible Java2CSharpTranslator
			*	XES
	*	including java code into projects
		*	source *.java
			*	BuildAction=AndroidJavaSource
		*	binaries *.jar			
			TODO		
			*	BuildAction=AndroidJavaLibrary
			*	extend with Android mechanisms for communication
				*	Activities
				*	Intents
				*	Services


## Build Process Internals		

1.	*.jar library		
	tool: jar2xml
	api.xml = jar2xml(*.jar);
2.	api.xml		
	API Description
	tool: generator
	obj\Debug\src\generated\*.cs = generator(api.xml);
3.	generated *.cs files
4.	compilation		
	csc		
	4.1.	*.cs files from step 3.		
	4.2.	*.cs Additions files	
5.	resulting *.dll Assembly	

## Nomenclature

*	Fully Qualified java Name		
	packagename.subpackagename.OuterType.InnerType		
*	JNI name		
	[Register]	Attribute
	EnumMethods.xml		
	EnumFields.xml		
	*	packagename/subpackagename/OuterType$InnerType		
*	Java name XPath: Metadata.xml		
	/api/package[@name='packagename.subpackagename']/type[@name='OuterType.innerType']		
*	JNI Method Signature		
	"(ArgTypes) RetType"		


Metadata Transform files:

	*	multiple files allowed		
		user can separate 
	*	additive

API Transform (API changes) sample:

Metadata.xml

	*	XPath path expressions
	*	

	<metadata>
		<!--
		====================================================================================
			XML node removal (API removal)
			
			removal of:
				*	package[s]
				*	classes
				*	methods
				*	fields
		-->
		<remove-node
			path="/api/package[@name='java.text']"
			>
		</remove-node>	
		
		<!--
		====================================================================================
			XML node addition/insertion (API enhancements)
			
			when jar2xml fails to generate enough metadata 
				*	missing base classes
				*	missing types
				...
		-->
		<add-node
			path="/api/package[@name='android.app']/clas[@name='IntentService']"
			>
			<constructor
				type="mono.android.app.IntentService"
				static="false" visibility="protected" name="IntentService" 
				final="false" deprecated="false" 
				>
			</constructor>
		</add-node>	
		<add-node
			path="/api/"
			>
			<package
				name="mono.android.app"
				managedname="Android.App"
				>
			</package>
		</add-node>	
		
		<!--
			moving nodes
			not recommended -  but it is possible
		-->
		<move-node
			path="/api/package[@name='android.app']/class[@name='IntentService']"
			>
			/api/package[@name='mono.android.app']
		</move-node>
		
		<!--
		====================================================================================
			XML node update (attribute value changes)
			Changing return type!
			
			TODO: ask JonP
			shouldn't it be
				name="managedReturn"
			instead of
				name="managedReturn"
			???
			
			All Activities nodes in doc that have method called getTitleColor			
		-->
		<attr
			path="//class[@name='Activity']/method[@name='getTitleColor']"
			name="return"
			>
			Android.Graphics.Color
		</attr>

		<!--
			JNI return type changes
			
			fixing Java generics (generic return type to non-generic)
			
			JNI does not care, cos generics do not exist.
		-->
		<attr
			path="//method[starts-with(@return, 'java.util.Map&lt;')]"
			name="return"
			>
			public
		</attr>
		
		<!--
			API Accessibility/Visibility changes
		-->		
		<attr
			path="//class[@name='ContentProvider']/method[@name='setReadPermission']"
			name="visibility"
			>
			public
		</attr>
		
		<!--
			Java Listeners -> .net Events
		-->
		<attr
			path="//class[@name='View']/method[@name='setOnCreateContextMenuListener']"
			name="eventName"
			>
			ContextMenuCreated
		</attr>
		
		
	</metadata>
	

EnumMethods.xml

	*	handling happens in a later steps
	*	uses JNI types instead of XPath

	<enum-methods-mappings>
		<mapping
			jni-interface="org/osmdroid/api/IMapView"
			>
			<method
				jni-name="setBackgroundColor" parameter="p0"
				clr-enum="Android.Graphics.Color"
				>
		</mapping>	
		
		<mapping
			jni-interface="org/osmdroid/api/IMyLocationOverlay"
			>
			<method
				jni-name="onStatusChanged" parameter="p1"
				clr-enum="Android.Locations.Availability"
				>
		</mapping>	
		
		<mapping
			jni-interface="org/osmdroid/views/safecanvas/ISafeCanvas"
			>
			<method
				jni-name="drawColor" parameter="p0"
				clr-enum="Android.Graphics.Color"
				>
		</mapping>	
		
		<mapping
			jni-interface="org/osmdroid/views/safecanvas/ISafeCanvas"
			>
			<method
				jni-name="save" parameter="p0"
				clr-enum="Android.Graphics.SaveFlags"
				>
		</mapping>	
		
	</enum-methods-mappings>	
	
	
##	Generating c# code with Generator.exe

### Managed Callable Wrappers MCWs

### Android Callable Wrappers

*	generated by: monodroid.exe
*	needed any time the Android runtime needs to invoke managed code
*	required because there is no way to register classes with ART (the Android runtime) 
	at runtime. 		
	(Specifically, the JNI DefineClass() function is not supported by the Android runtime. 
	they thus make up for the lack of runtime type registration support.)
*	Every time Android code needs to execute a virtual or interface method which is 
	*	overridden or 
	*	implemented in managed code, 
	Xamarin.Android needs to provide a Java proxy so that the method gets dispatched to 
	the appropriate managed type. 
*	These Java proxy types are Java code which have the "same" base class and Java interface list as the managed type, implementing the same constructors and declaring any overridden base class and interface methods.

Android callable wrappers are generated by the monodroid.exe program during the build process, and are generated for all types that (directly or indirectly) inherit Java.Lang.Object.