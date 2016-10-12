# Bug in Visual Studio Targets

Xamarin.ObjcBinding.CSharp.targets

The attribute "DependsOnTarget" in element <Target> is unrecognized. 

https://bugzilla.xamarin.com/show_bug.cgi?id=27309

	<!--
	mc++
	Bindings.XamarinIOS-Classic.csproj : 
	error  : 
	The attribute "DependsOnTarget" in element <Target> is unrecognized.  
	C:\Program Files (x86)\MSBuild\Xamarin\iOS\Xamarin.ObjcBinding.CSharp.targets
	
	<Target Name="_CollectGeneratedSources" DependsOnTargets="_GenerateBindings">
	-->
	<Target Name="_CollectGeneratedSources" >
 