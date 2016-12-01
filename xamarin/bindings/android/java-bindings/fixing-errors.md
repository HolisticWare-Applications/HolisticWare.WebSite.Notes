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




## IComparable

		int Java.Lang.IComparable.CompareTo(Java.Lang.Object obj)
		{
		return CompareTo ((Com.Urbanairship.Richpush.RichPushMessage) obj);
		}


	  <add-node path="/api/package/class[implements[@name='java.lang.Comparable']]">
		<method name="compareTo" return="int" abstract="false" native="false" synchronized="false" static="false" final="false" deprecated="not deprecated" visibility="public">
		  <parameter name="o" type="java.lang.Object" />
		</method>
	  </add-node>
	  <add-node path="/api/package/class[implements[@name='java.util.Comparator']]">
		<method name="compare" return="int" abstract="false" native="false" synchronized="false" static="false" final="false" deprecated="not deprecated" visibility="public">
		  <parameter name="o1" type="java.lang.Object" />
		  <parameter name="o2" type="java.lang.Object" />
		</method>
	  </add-node>

http://lists.ximian.com/pipermail/monodroid/2013-February/013401.html

  