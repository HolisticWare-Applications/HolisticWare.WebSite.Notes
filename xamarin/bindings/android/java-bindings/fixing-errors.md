# Project Setup 


## Tricks n Tips

To get intellisense working in MCWs (Managed Callable Wrappers) generated code
add following code to the *.csproj:


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

## Analyzing jar[s]

	JARNAME=classes.jar
	javap \
		-classpath $JARNAME \
		$(jar -tf $JARNAME | grep "class$" | sed s/\.class$//) \
		>> classes-java.txt
	cat classes-java.txt

ConvertResourceCases task has f