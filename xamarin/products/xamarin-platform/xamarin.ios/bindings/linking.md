# Linking

		
	System.TypeInitializationException: The type initializer for 
		threw an exception. 
	---> 
	System.Exception: Could not create an native instance of the type 
		: the native class hasn't been loaded.	
	

add "-v -v -v" (without the quotes) to the additional mtouch arguments 
	
	
Possible workaround
	"Don't Link" and/or 
	adding "-nolinkaway" under the "Additional mtouch argument"

"-nolinkaway" only changes a small subset of `mscorlib.dll`. 
"Don't Link" turns off linking for _all_ assemblies.	


	lipo -info RichRelevanceSDK.framework/RichRelevanceSDK 
	lipo -detailed_info RichRelevanceSDK.framework/RichRelevanceSDK 
	file RichRelevanceSDK.framework/RichRelevanceSDK 

	lipo -detailed_info RichRelevanceSDK.framework/RichRelevanceSDK 
	Fat header in: RichRelevanceSDK.framework/RichRelevanceSDK
	fat_magic 0xcafebabe
	nfat_arch 2
	architecture armv7
		cputype CPU_TYPE_ARM
		cpusubtype CPU_SUBTYPE_ARM_V7
		offset 16384
		size 447232
		align 2^14 (16384)
	architecture arm64
		cputype CPU_TYPE_ARM64
		cpusubtype CPU_SUBTYPE_ARM64_ALL
		offset 475136
		size 509312
		align 2^14 (16384)

## Linking Errors
		
MonoTouch MTOUCH error MT5209 
"Native linking error: warning: ignoring file *.a, missing required architecture i386 in file"

Indicated missing architecture in ft library or framework.

The same can be indicated with numerous MT5214 
"Native linking failed, undefined symbol. This symbol was referenced by the managed member"
		
		
	MTOUCH: 
	Error MT5209: 
	Native linking error: warning: ignoring file 
		obj/iPhoneSimulator/Debug/mtouch-cache/RichRelevanceSDK.a, 
	missing required architecture i386 in file 
		obj/iPhoneSimulator/Debug/mtouch-cache/RichRelevanceSDK.a 
	(2 slices) (MT5209) (RichRelevance.Sample.XamarinIOS)
	
	MTOUCH: 
	Error MT5214: 
	Native linking failed, undefined symbol: 
		_RCHEndpointProduction. 
	This symbol was referenced by the managed member 
		RichRelevanceSDK.Constants.RCHEndpointProduction. 
	Please verify that all the necessary frameworks have been referenced and 
	native libraries linked.
	
	// extern NSString *const RCHEndpointProduction;
	[Field("RCHEndpointProduction", "__Internal")]
	NSString RCHEndpointProduction { get; }
	
	MTOUCH: 
	Error MT5214: 
	Native linking failed, undefined symbol: 
	This symbol was referenced by the managed member 
	Please verify that all the necessary frameworks have been referenced and 
	native libraries linked.
	
### Could not AOT

	MTOUCH: 
	Error MT3001: 
	Could not AOT the assembly 
		'./obj/iPhone/Debug/build-iphone4.1-8.3/mtouch-cache/Build/DeprecatedBindingMethod.RichRelevance.XamarinIOS.dll'

For BuildAction=ObjcBindingNativeFramework

		MTOUCH:  warning MT1302: Could not extract the native library 
			'RichRelevanceSDK' 
		from 
		'obj/iPhone/Debug/build-iphone4.1-8.3/mtouch-cache/RichRelevanceSDK'. 
		Please ensure the native library was properly embedded in the managed assembly 
		(if the assembly was built using a binding project, the native library must be 
		included in the project, and its Build Action must be 
		'ObjcBindingNativeLibrary').

		
		

## Diverse TODO

libInigmaWrapper.a references a inexistent method.

There may be a way around this:

Upgrade to Xamarin.iOS 7.2.1 or later.
Change your LinkWith attribute to:

[assembly: LinkWith (..., ForceLoad = false, SmartLink = true)]
This will make Xamarin.iOS ask the native linker to remove unused code from 
the native library, and if you're lucky, the reference to the inexistent 
method will be in unused code, so it will end up removed.
	
	
similar problem with just trying to link a simple object that used "new" in my 
objective-C code to create an object from a third-party library. 
I could not get this to link and I say your note above and changed the 
ForceLoad attribute in the LinkWith as you suggested:

    [assembly: LinkWith (..., ForceLoad = false, SmartLink = true)]
	
It is now linking successfully. Can you please help me understand what 
difference ForceLoad makes? Why would "new" not resolve without this?

t depends on why your project didn't link. If it was because of a missing 
symbol, the library in your LinkWith attribute was referring to a symbol 
that didn't exist. The reason setting ForceLoad = false may work, is that 
in that case the linker will not include any code from your native library 
that isn't used, and if that missing symbol is used in a section of code 
that is otherwise unused, it would be removed, and the linker wouldn't be 
looking for the missing symbol.








trying to link a static C library and the library cannot be found at runtime. The library is being linked though.

The test C code is simply:

    int DoSomeStuff( float floatList[], int length );
The symbol is in the library:

    nm libTestCProjectSDK.a | grep DoSomeStuff
    0000000000000000 T _DoSomeStuff
                    U _DoSomeStuff
Lipo also indicates I have all the architectures:

    lipo -info libTestCProjectSDK.a
    Architectures in the fat file: libTestCProjectSDK.a are: i386 armv7 x86_64 arm64
The linker options in Xamarin are:

    -gcc_flags "-L${ProjectDir} -lTestCProjectSDK -force_load ${ProjectDir}/libTestCProjectSDK.a"
The code to declare the external test function is:

    [DllImport ("TestCProjectSDK.a")]
    static extern int DoSomeStuff( ref float[] floatList, int length );
The code that throws the error is:

    float[] f = new float[50];
    int i = DoSomeStuff (ref f, 50);
The thrown error is:

    $exception  {System.DllNotFoundException: TestCProjectSDK.a   at (wrapper managed-to-native) TestInterop.ViewController:DoSomeStuff (single[]&,int)   at TestInterop.ViewController.ViewDidLoad () [0x00013] in /Users/bryon/Desktop/TestInterop/ViewController.cs:23    at (wrapper managed-to-native) UIKit.UIApplication:UIApplicationMain (int,string[],intptr,intptr)   at UIKit.UIApplication.Main (System.String[] args, IntPtr principal, IntPtr delegate) [0x00005] in /Users/builder/data/lanes/1977/2c66d2fe/source/maccore/src/UIKit/UIApplication.cs:63    at UIKit.UIApplication.Main (System.String[] args, System.String principalClassName, System.String delegateClassName) [0x00038] in /Users/builder/data/lanes/1977/2c66d2fe/source/maccore/src/UIKit/UIApplication.cs:47    at TestInterop.Application.Main (System.String[] args) [0x00008] in /Users/bryon/Desktop/TestInterop/Main.cs:12 }    System.DllNotFoundException
Do you have any ideas why the library cannot be found at runtime?

The static library doesn't exist at runtime, it's embedded inside the executable. This means your DllImport needs to look like this:

[DllImport ("__Internal")] // two underscores
static extern int DoSomeStuff (...);

in the Linux Shared Library Search Path documentation here:

As a Mono extension, if the library being loaded is __Internal, then the main program is searched for method
symbols. This is equivalent to calling dlopen(3) with a filename of NULL. This allows you to P/Invoke methods
that are within an application that is embedding Mono.



crux of the challenge with calling C++ objects is how to handle the construction and destruction of the objects. The rest appears to be the same as C - except you need to handle the name mangling.

    libTestCProjectSDK.a(TestModule.o):
    0000000000000000 T _DoSomeStuff
    0000000000000041 T _EmptyFunction
    0000000000000047 T _SimpleFunction

    libTestCProjectSDK.a(TestCppModule.o):
    0000000000000040 T __ZN9Rectangle4AreaEv
    0000000000000034 T __ZN9Rectangle9SetValuesEii
    000000000000000c T __ZN9RectangleC1Eii
    0000000000000000 T __ZN9RectangleC2Eii
    0000000000000026 T __ZN9RectangleD1Ev
    0000000000000018 T __ZN9RectangleD2Ev
The above is from my simple test case, TestModule is a C library, and TestCppModule is C++. Below is the code.

    Rectangle::Rectangle( int w, int h ) {
            width = w; height = h;
    }

    Rectangle::~Rectangle() {
        width = height = 0;     // Just do something so you can test a destructor
    }

    void Rectangle::SetValues(int w ,int h) {
        width = w;
        height = h;
    }

    int Rectangle::Area() {
        return width * height;
    }
So how do we handle constructors/destructors. I am sure the answer is in the EntryPoint in the DllImport - but the examples and explanations I can find all seem to focus on calling functions in C++ - not methods on objects.


If you have just few C++ classes, the easiest is to expose a C API:

extern "C" {
    Rectangle * createRectangle (int w, int h)
    {
        return new Rectangle (w, h);
    }
}


