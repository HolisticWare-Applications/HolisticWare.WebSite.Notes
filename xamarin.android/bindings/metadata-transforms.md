# Xamarin.Android Binding Metadata Transforms


## Change XML attributes in API.xml with <attr></attr>

###	Error CS0533: DerivedClass hides inherited abstract member BaseClass

Causes:

*	return type differences		
	java supports covariant return types		
*	abstract/virtual/overriden method accessibility differences 		
	java allows inherited classes to have methods with different accessibility		
	

	OSmDroid
	DeskCase-194166-XamarinAndroidBindings 

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
	
	
	
## Add XML node with add-node


  <add-node
  	path="/api/package[@name='com.microsoft.onlineid.internal.sso.client.request']/class[@name='GetAccountByIdRequest']"
  	>
		<method 
			visibility="public" abstract="false" static="false" return="Java.Lang.Object" name="call"
			deprecated="not deprecated" final="false"  native="false"  synchronized="false" 
			>
		</method>
  </add-node>

  
  