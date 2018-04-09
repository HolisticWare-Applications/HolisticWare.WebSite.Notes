# Binding Swift Libraries

binding-swift-libraries.md

*   swift library can be bound it as dynamic framework

*   need to link swift libraries too, 
    
    *   @israelsoto has a workaround to automate that, so it only includes what is needed

        https://gist.github.com/dalexsoto/e1878713a15b4091215dc50d720afa49

        <!-- Add below this definition in your app.csproj, the next line is not needed -->
        <Import Project="$(MSBuildExtensionsPath)\Xamarin\iOS\Xamarin.iOS.CSharp.targets" />
        
	<PropertyGroup>
		<_SwiftySwiftMasterAfterTargets>_CodesignNativeLibraries</_SwiftySwiftMasterAfterTargets>
		<_SwiftySwiftMasterDependsOnTargets>_SwiftySwiftCopySwiftDependencies</_SwiftySwiftMasterDependsOnTargets>
		<_XcodeToolChain>/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/</_XcodeToolChain>
		<_TargetPlatform Condition=" '$(Platform)' == 'iPhoneSimulator' ">iphonesimulator</_TargetPlatform>
		<_TargetPlatform Condition=" '$(Platform)' == 'iPhone' ">iphoneos</_TargetPlatform>
	</PropertyGroup>
	<Target Name="_SwiftySwiftMasterTarget"
		Condition="'$(_SwiftySwiftMasterDependsOnTargets)'!=''"
		AfterTargets="$(_SwiftySwiftMasterAfterTargets)"
		DependsOnTargets="$(_SwiftySwiftMasterDependsOnTargets)" />
	<Target Name="_SwiftySwiftCopySwiftDependencies" Condition="!Exists('$(_AppBundlePath)Frameworks/libswiftCore.dylib')">
		<Message Text="Copying Swift Frameworks dependencies for %(_Frameworks.Identity) to $(_AppBundlePath)Frameworks folder" />
		<Exec Command="$(_XcodeToolChain)usr/bin/swift-stdlib-tool --copy --verbose --sign $(_CodeSigningKey) --scan-executable %(_Frameworks.Identity) --scan-folder $(_AppBundlePath)Frameworks/ --scan-folder $(_AppBundlePath)PlugIns/ --platform $(_TargetPlatform) --toolchain $(_XcodeToolChain) --destination $(_AppBundlePath)Frameworks/ --strip-bitcode --resource-destination $(_AppBundlePath) --resource-library libswiftRemoteMirror.dylib"/>
	</Target>
