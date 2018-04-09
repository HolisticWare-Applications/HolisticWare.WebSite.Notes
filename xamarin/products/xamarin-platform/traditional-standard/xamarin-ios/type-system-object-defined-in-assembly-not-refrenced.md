# The types defined in assembly not referenced

Xamarin.Auth case in LinkSource - simple .net 4.5 library assembly.

## The type `System.Object' is defined in an assembly that is not referenced

	source/Extensions/Xamarin.Auth.Extensions.LinkSource/OAuth2AuthenticatorExtensions.cs
	Error CS0012: 
	The type 
		`System.Object' 
	is defined in an assembly that is not referenced. 
	Consider adding a reference to assembly 
		`System.Runtime, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a'

		
Manually add:

	<Reference Include="System.Runtime" />

	
## 	The type `System.Threading.Tasks.Task' is defined in an assembly that is not referenced
	
	source/Extensions/Xamarin.Auth.Extensions.LinkSource/OAuth2AuthenticatorExtensions.cs(25,25): 
	Error CS0012: 
	The type 
		`System.Threading.Tasks.Task`1<System.Collections.Generic.IDictionary<string,string>>' 
	is defined in an assembly that is not referenced. 
	Consider adding a reference to assembly 
		`System.Threading.Tasks, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a'
	
	
Manually add:

	<Reference Include="System.Threading.Tasks" />
	