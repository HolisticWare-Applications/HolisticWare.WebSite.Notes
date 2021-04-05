# Xamarin.Android Binding Metadata Transforms


```
	<remove-node path="/api/package/class[@visibility='']" />
	<remove-node path="/api/package/interface[@visibility='']" />
	<remove-node path="/api/package/class[@deprecated='deprecated']" />
	<remove-node path="/api/package/interface[@deprecated='deprecated']" />
	<remove-node path="/api/package/class/method[@deprecated='deprecated']" />
	<remove-node path="/api/package/interface/method[@deprecated='deprecated']" />
```



issue with this binding, not sure how to resolve it.
In MotionLayout there are 2 Methods (AddTransitionListener and SetTransitionListener) using interface ITransitionListener
and in region Event implementation for Android.Support.Constraints.Motion.MotionLayout.ITransitionListener there are two implemenatation of ITransitionListener interface so we have error that MotionLayout already contains definition for interface methods....
We can remove one of methods (AddTransitionListener and SetTransitionListener) and it will work but that is not good solution. Do you have idea how to fix it? or it is maybe Xamarin.Android bug?

I also find simular issue https://forums.xamarin.com/discussion/85194/android-binding-library-question


So the add/remove are the better options to keep, so we can do things to the set.

I believe there is an "eventName" thing you can set to a blank string that might prevent the event generation.

```
<attr path="xxx" name="eventName"></attr>
```



Brendan Zagaeski

https://gist.github.com/brendanzagaeski/9607158

## Change XML attributes in API.xml with <attr></attr>




###	Error CS0533: DerivedClass hides inherited abstract member BaseClass

Causes:

*	return type differences		
	java supports covariant return types		
*	abstract/virtual/overriden method accessibility differences 		
	java allows inherited classes to have methods with different accessibility		
	

	OSmDroid
	DeskCase-194166-XamarinAndroidBindings 

```
	<!--
	Com.Microsoft.Onlineid.Sts.Request.ServiceRequest.cs(85,85): 
	Error CS0533: 
		`Com.Microsoft.Onlineid.Sts.Request.ServiceRequest.InstantiateResponse()' 
	hides inherited abstract member 
		`Com.Microsoft.Onlineid.Sts.Request.AbstractStsRequest.InstantiateResponse()' 
	-->

	
	
	<!--
	Com.Microsoft.Onlineid.Sts.ServerConfig.cs(80,80): 
	Error CS0533: 
		`Com.Microsoft.Onlineid.Sts.ServerConfig.Edit()' 
	hides inherited abstract member 
		`Com.Microsoft.Onlineid.Internal.Configuration.AbstractSettings.Edit()'


	DerivedClass
		public virtual unsafe global::Com.Microsoft.Onlineid.Sts.ServerConfig.Editor Edit ()
	BaseClass
		protected abstract global::Com.Microsoft.Onlineid.Internal.Configuration.AbstractSettings.Editor Edit ()

	-->
	<attr
		path="/api/package[@name='com.microsoft.onlineid.internal.configuration']/class[@name='AbstractSettings']/method[@name='edit' and count(parameter)=0]"
		name="visibility"
		>
		public
	</attr>
	<attr
		path="/api/package[@name='com.microsoft.onlineid.sts']/class[@name='ServerConfig']/method[@name='edit' and count(parameter)=0]"
		name="managedReturn"
		>
		Com.Microsoft.Onlineid.Internal.Configuration.AbstractSettings.Editor
	</attr>
```	
	
	
## Add XML node with add-node

```
  <add-node
  	path="/api/package[@name='com.microsoft.onlineid.internal.sso.client.request']/class[@name='GetAccountByIdRequest']"
  	>
		<method 
			visibility="public" abstract="false" static="false" return="Java.Lang.Object" name="call"
			deprecated="not deprecated" final="false"  native="false"  synchronized="false" 
			>
		</method>
  </add-node>
```




There were 3 solutions for one problem (hiding inherited member)

Let me comment a bit (though there are comments in metadata.xml file):

1. visibility change to protected

https://gitlab.com/xamarin-support/DeskCase-194166-XamarinAndroidBindings/blob/master/OsmDroid/OsmDroid/OsmDroid/Transforms/Metadata.xml#L13

You have changed visibility from public to protected. You will always want public visibility, so you can call API from c#. Actually in most cases You'll need subset of java API surfaced to c#, so You can remove a lot, even namespaces/packages. (Next item)

2. removal of the API (methods, fields, classes, namespaces/packages)

https://gitlab.com/xamarin-support/DeskCase-194166-XamarinAndroidBindings/blob/master/OsmDroid/OsmDroid/OsmDroid/Transforms/Metadata.xml#L192

This issue was caused by:

DerivedClass.Method() hides inherited abstract member BaseClass.Method()

There are several reasons for this error:

* DerivedClass.Method() returns different type from BaseClass.Method()
this was the case here
* DerivedClass.Method() visibility differs from visibility of BaseClass.Method()
this was the case here


This could be solved with attribute changing (managedReturn and/or visibility), but due to the fast that this was class in "internal" package/namespace, so probably not intended to be used from outside (and thus c#) - I have removed it. And not only the class, but whole package/namespace.

3. fixes DerivedClass.Method() hides inherited abstract member BaseClass.Method()

number of errors = 4

changing both visibility of the base class and return type

https://gitlab.com/xamarin-support/DeskCase-194166-XamarinAndroidBindings/blob/master/OsmDroid/OsmDroid/OsmDroid/Transforms/Metadata.xml#L209

changing only return type (because visibility of the base class was changed previously)

https://gitlab.com/xamarin-support/DeskCase-194166-XamarinAndroidBindings/blob/master/OsmDroid/OsmDroid/OsmDroid/Transforms/Metadata.xml#L237

https://gitlab.com/xamarin-support/DeskCase-194166-XamarinAndroidBindings/blob/master/OsmDroid/OsmDroid/OsmDroid/Transforms/Metadata.xml#L256

again both visibility and return type

https://gitlab.com/xamarin-support/DeskCase-194166-XamarinAndroidBindings/blob/master/OsmDroid/OsmDroid/OsmDroid/Transforms/Metadata.xml#L277

basically this is it.
  
  