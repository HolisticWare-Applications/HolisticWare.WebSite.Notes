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

	<metadata>
		<!--
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
		
		
	</metadata>
	

	
	