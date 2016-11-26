# Project Setup 


## Tricks n Tips

### Bindings Generator

Two bindings generators:

*	jar2xml
*	class-parse

To activate class-parse uncomment or insert following snippet:

	<!--
	<AndroidClassParser>class-parse</AndroidClassParser>
	-->

	
### Intellisense in MCWs (Managed Callable Wrappers) generated code

To get intellisense working in MCWs (Managed Callable Wrappers) generated code
add following code to the *.csproj:

Working, but complex version:

	<ItemGroup>
		<None Include="obj\Debug\api.xml" Condition="'$(Configuration)'=='Debug'"></None>    
		<None Include="obj\Release\api.xml" Condition="'$(Configuration)'=='Release'"></None>    
		<Compile Include="obj\Debug\generated\src\*.cs" Condition="'$(Configuration)'=='Debug'"></Compile>
		<Compile Include="obj\Release\generated\src\*.cs" Condition="'$(Configuration)'=='Release'"></Compile>
	</ItemGroup>

This version might need Refresh on obj/ folder or even project unload/reload…

	<!--
	C# Managed Callable Wrappers in obj\$(Configuration)\generated\src\*.cs
	Browsing and Intellisense trick
	<ItemGroup>
		<None Include="obj\$(Configuration)\api.xml"></None>    
		<Compile Include="obj\$(Configuration)\generated\src\*.cs"></Compile>
	</ItemGroup>
	-->


Seems like escaping/unescaping $(Configuration) in csproj at the time when this compact
version was tried this did not work in XS that great...

Now it is OK


Old version:

	<ItemGroup>
		<Compile Include="obj\Debug\generated\src\*.cs" />
		<Compile Include="obj\Release\generated\src\*.cs" />
		<None Include="obj\Debug\api.xml" />
		<None Include="obj\Release\api.xml" />
	</ItemGroup>

NOTE Remove/uncomment after the bindings are finished:

    <!--
	<ItemGroup>
		<Compile Include="obj\Debug\generated\src\*.cs" />
		<Compile Include="obj\Release\generated\src\*.cs" />
		<None Include="obj\Debug\api.xml" />
		<None Include="obj\Release\api.xml" />
	</ItemGroup>
	-->


## Tools 



### HolisticWare

To be added




ConvertResourceCases task has f