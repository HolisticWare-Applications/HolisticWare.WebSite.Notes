# Xamarin.iOS Binding Projects

BuildActions

*	ObjcBindingNativeLibrary
	*	lib*.a
*	ObjcBindingApiDefinition
	*	ApiDefinition[s].cs
*	ObjcBindingCoreSource
	*	StructsAndEnums.cs
		inheriting from nint is a bug 2016-11-04
*	Compile
*	None

```
	<ItemGroup>
		<NativeReference Include="..\..\externals\ios\Pods\Name.framework">
			<Kind>Framework</Kind>
			<SmartLink>True</SmartLink>
			<ForceLoad>True</ForceLoad>
			<IsCxx>True</IsCxx>
			<LinkerFlags>-ObjC</LinkerFlags>
		</NativeReference>
	</ItemGroup>
	<ItemGroup>
		<!--
		<Compile Include="Name.linkwith.cs">
			<DependentUpon>libName.a</DependentUpon>
		</Compile>
		<ObjcBindingNativeLibrary Include="..\..\externals\ios\libName.a">
			<Link>libName.a</Link>
		</ObjcBindingNativeLibrary>
		-->
		<None Include="Name.linkwith.cs">
			<DependentUpon>Name.a</DependentUpon>
		</None>
		<None Include="..\..\externals\ios\libName.a">
			<Link>libName.a</Link>
		</None>
	</ItemGroup>
```
	
```	
	<ItemGroup>
		<NativeReference Include="..\..\externals\ios\Pods\Name.framework">
			<Kind>Framework</Kind>
			<Frameworks>CoreTelephony VideoToolbox CoreMedia CoreVideo QuartzCore ImageIO CoreText AssetsLibrary MobileCoreServices CoreImage GLKit OpenGLES QuickLook UIKit Foundation CoreGraphics AudioToolbox CFNetwork SystemConfiguration AVFoundation</Frameworks>
			<IsCxx>True</IsCxx>
			<ForceLoad>True</ForceLoad>
		</NativeReference>
		<None Include="..\..\externals\ios\libName.a">
			<Link>libName.a</Link>
		</None>
		<None Include="libName.linkwith.cs">
			<DependentUpon>libName.a</DependentUpon>
		</None>
	</ItemGroup>
```

*	https://gist.github.com/JonDouglas/dda6d8ace7d071b0e8cb




