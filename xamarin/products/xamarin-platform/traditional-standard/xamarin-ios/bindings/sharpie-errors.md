# Objective Sharpie Errors


## SDK not installed

sharpie error

	Done. Exiting with error code 1.
	error: : framework requires SDK 'iphoneos9.0' which is not installed. You may 
	need a newer Xcode.




@dikoga in your case it looks like you are trying to directly parse a framework 
header file but aren't passing the fact that the compiler should use the Objective-C 
parser. You'll want to pass -xobjective-c after the -c argument to help the compiler out.

Even better, you might also try telling Objective Sharpie to parse the whole framework, 
so it can deduce some more things for you, so you don't have to specify everything 
manually.

Assuming you're using WePay from GitHub, I produced the binding scaffolding like this:

	git clone https://github.com/wepay/wepay-ios
	cd wepay-ios
	xcodebuild
	sharpie bind -sdk iphoneos9.1 -framework build/Release-iphoneos/WePay.framework

You now have an ApiDefinition.cs file that contains the binding scaffolding that 
you may integrate in an iOS binding project.


##  Error in tmp file

Sharpie
error: expected a module name
      after module import

@import ;
        ^

	  
	  
Xcode Options:
  -sdks            List all available Xcode SDKs. Pass -verbose for more details.
sdk: appletvos9.1    arch: arm64   
sdk: iphoneos9.2     arch: arm64   armv7   
sdk: macosx10.11     arch: x86_64  i386    
sdk: watchos2.1      arch: armv7   
OS X SDKs:
	OS X 10.11                    	-sdk macosx10.11

iOS SDKs:
	iOS 9.2                       	-sdk iphoneos9.2

iOS Simulator SDKs:
	Simulator - iOS 9.2           	-sdk iphonesimulator9.2

tvOS SDKs:
	tvOS 9.1                      	-sdk appletvos9.1

tvOS Simulator SDKs:
	Simulator - tvOS 9.1          	-sdk appletvsimulator9.1

watchOS SDKs:
	watchOS 2.1                   	-sdk watchos2.1

watchOS Simulator SDKs:
	Simulator - watchOS 2.1       	-sdk watchsimulator2.1

Passing the following user-specified options to Clang: -v -arch arm64 -fmodules -fmodules-cache-path=/var/folders/8b/l3jkjtld7fj2fp3ps1z865rr0000gn/T/com.xamarin.ObjectiveSharpie/ModuleCache -F /Projects/HolisticWare/gitlab[]holisticware-bindings/20160116113719/Sinch.Verification/external/binaries-xtensive/SinchVerification/objc/SinchVerification.framework -xobjective-c
Using Xcode SDK: iphoneos9.2 from Xcode 7.2.1 @ /Applications/Xcode.app
Parsing 1 header files...
clang version 3.8.0 
Target: aarch64-apple-darwin15.3.0
Thread model: posix
InstalledDir: 
clang version 3.8.0 
Target: aarch64-apple-darwin15.3.0
Thread model: posix
InstalledDir: 
clang Invocation:
 "/Library/Frameworks/ObjectiveSharpie.framework/Versions/3.0.8/sharpie" "-cc1" "-triple" "arm64-apple-ios9.2.0" "-Wdeprecated-objc-isa-usage" "-Werror=deprecated-objc-isa-usage" "-Werror=implicit-function-declaration" "-fsyntax-only" "-disable-free" "-disable-llvm-verifier" "-main-file-name" "62badbb40cd64399b6f5628cbd6ac323.h" "-mrelocation-model" "pic" "-pic-level" "2" "-mthread-model" "posix" "-mdisable-fp-elim" "-masm-verbose" "-target-cpu" "cyclone" "-target-feature" "+neon" "-target-feature" "+crc" "-target-feature" "+crypto" "-target-feature" "+zcm" "-target-feature" "+zcz" "-target-feature" "+reserve-x18" "-target-abi" "darwinpcs" "-target-linker-version" "253.3" "-v" "-dwarf-column-info" "-resource-dir" "/Library/Frameworks/ObjectiveSharpie.framework/Versions/Current/clang-resources" "-isysroot" "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS9.2.sdk" "-F/Projects/HolisticWare/gitlab[]holisticware-bindings/20160116113719/Sinch.Verification/external/binaries-xtensive/SinchVerification/objc/SinchVerification.framework" "-D" "NS_BUILD_32_LIKE_64" "-I" "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include" "-I" "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1" "-fdebug-compilation-dir" "/Projects/HolisticWare/gitlab[]holisticware-bindings/20160116113719/Sinch.Verification/external/binaries-xtensive/bat" "-ferror-limit" "19" "-fmessage-length" "160" "-stack-protector" "1" "-fallow-half-arguments-and-returns" "-fblocks" "-fmodules" "-fimplicit-module-maps" "-fmodules-cache-path=/var/folders/8b/l3jkjtld7fj2fp3ps1z865rr0000gn/T/com.xamarin.ObjectiveSharpie/ModuleCache" "-fobjc-runtime=ios-9.2.0" "-fencode-extended-block-signature" "-fobjc-exceptions" "-fexceptions" "-fmax-type-align=16" "-fdiagnostics-show-option" "-fcolor-diagnostics" "-fno-spell-checking" "-detailed-preprocessing-record" "-x" "objective-c" "/private/var/folders/8b/l3jkjtld7fj2fp3ps1z865rr0000gn/T/com.xamarin.ObjectiveSharpie/62badbb40cd64399b6f5628cbd6ac323.h"

clang -cc1 version 3.8.0 based upon LLVM 3.8.0git default target x86_64-apple-darwin15.3.0
ignoring nonexistent directory "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS9.2.sdk/usr/local/include"
ignoring nonexistent directory "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS9.2.sdk/Library/Frameworks"
#include "..." search starts here:
#include <...> search starts here:
 /Projects/HolisticWare/gitlab[]holisticware-bindings/20160116113719/Sinch.Verification/external/binaries-xtensive/SinchVerification/objc/SinchVerification.framework (framework directory)
 /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include
 /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1
 /Library/Frameworks/ObjectiveSharpie.framework/Versions/Current/clang-resources/include
 /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS9.2.sdk/usr/include
 /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS9.2.sdk/System/Library/Frameworks (framework directory)
End of search list.
/private/var/folders/8b/l3jkjtld7fj2fp3ps1z865rr0000gn/T/com.xamarin.ObjectiveSharpie/62badbb40cd64399b6f5628cbd6ac323.h:1:9: error: expected a module name
      after module import
@import ;
        ^

Binding...
1 error generated.
Error while processing /private/var/folders/8b/l3jkjtld7fj2fp3ps1z865rr0000gn/T/com.xamarin.ObjectiveSharpie/62badbb40cd64399b6f5628cbd6ac323.h.

Submitting usage data to Xamarin...
  usage data:
    CommandLine: -verbose --namespace OpenTok --output ./sharpie-generated-framework/ --sdk iphoneos9.2 --framework ../SinchVerification/objc/SinchVerification.framework/
    DocsWritten: 0
    ToolName: bind
    ExitCode: 1

  Submitted - thank you for helping to improve Objective Sharpie!

Done. Exiting with error code 1.
error: Clang failed to parse input and exited with code 1	  