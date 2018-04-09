# Binding pointer to struct

binding-pointer-to-struct.md

User trying to bind SDK and receiving error messages about missing
CFHTTPMessageRef class.

CFHTTPMessageRef declaration in Apple code and docs:

	typedef struct __CFHTTPMessage *CFHTTPMessageRef;

https://developer.apple.com/reference/cfnetwork/cfhttpmessageref
https://opensource.apple.com/source/CFNetwork/CFNetwork-128.2/Headers/CFHTTPMessage.h
https://opensource.apple.com/source/CFNetwork/CFNetwork-128/HTTP/CFHTTPMessage.c


CFHTTPMessageRef is pointer to struct, so missing in Xamarin.iOS and it 
was not bound with another name.

__CFHTTPMessage is defined in Xamarin.iOS, so CFHTTPMessageRef is just an
IntPtr.
__CFHTTPMessage is just a pointer to the Handle of the current 
instantiated CFHTTPMessage object


Is there replacement for CFHTTPMessageRef? Just CFHTTPMessage?

CFHTTPMessageObject.Handle

*	If user is binding a C API		
	*	`CFHTTPMessageRef` will be CFHTTPMessageObject.Handle		
	*	User must new to pass the `Handle` of a CFHTTPMessage object		
*	else (not c API)		
	it is an actual ObjC ApiDefinition (binding project)
	user can try to use `CFHTTPMessage` and if that does not work 		
	usef needs to switch it for `IntPtr` and when calling the ObjC API 		
	user would need to do `FooCFHTTPMessage.Handle`
	https://github.com/xamarin/xamarin-macios/blob/master/src/CFNetwork/CFHTTPMessage.cs#L90  	
	since `CFHTTPMessage` is an `INativeObject` 	
	https://github.com/xamarin/xamarin-macios/blob/master/src/CFNetwork/CFHTTPMessage.cs#L26	
	it is difficult to say if that is special cased in the generator

Basically in Xamarin.iOS/Xamarin.Mac code CFHTTPMessageRef is replaced with 
IntPtr, so user can try that.	
	
    