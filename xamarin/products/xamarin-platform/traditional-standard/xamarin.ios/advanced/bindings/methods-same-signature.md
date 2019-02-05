# Methods with the Same Signature

methods-same-signature.md

Methods (and constructors):

*   https://gist.github.com/SotoiGhost/52f8f048bcce504a60dcafeccf204c7c


```csharp
////////////////////////////////////////
// ApiDefinition.cs                   //
////////////////////////////////////////

[BaseType (typeof (NSObject), Name = "PrefixFoo")]
interface Foo
{
	// Original bound
	// [Export ("initWithStringA:forNSUIntegerA:")]
	// IntPtr Constructor (string stringA, nuint intA);
	
	// Modified bound
	[Internal]
	[Export ("initWithStringA:forNSUIntegerA:")]
	IntPtr _InitWithStringAAndNSUIntegerA (string stringA, nuint intA);

	
	// Original bound
	// [Export ("initWithStringB:forNSUIntegerB:")]
	// IntPtr Constructor (string stringB, nuint intB);

	// Modified bound
	[Internal]
	[Export ("initWithStringB:forNSUIntegerB:")]
	IntPtr _InitWithStringBAndNSUIntegerB (string stringB, nuint intB);
}


////////////////////////////////////////
// Extensions.cs                      //
////////////////////////////////////////

public enum KindOfParameter
{
	A,
	B
}

public partial class Foo : NSObject
{
	public Foo (string stringAOrStringB, nuint intAOrIntB, KindOfParameter kindOfParameter) : base (NSObjectFlag.Empty)
	{
		if (kindOfParameter == KindOfParameter.A)
			Handle = _InitWithStringAAndNSUIntegerA (stringAOrStringB, intAOrIntB);
		else
			Handle = _InitWithStringBAndNSUIntegerB (stringAOrStringB, intAOrIntB);
	}
}
```