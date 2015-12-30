# Mono Installation Directory


*	$PREFIX_MONO/lib/mono/2.0 		
	contains metadata only assemblies		 
	(probably not available when compiled from source, since they are shiped		
	those with the packages)		
*	$PREFIX_MONO/lib/mono/4.0 		
	metadata only assemblies			
*	$PREFIX_MONO/lib/mono/4.5 		
	"real" assemblies, used during runtime. 
	contains even stuff that's technically in 4.6

Build system:

*	$PREFIX_MONO/lib/xbuild-frameworks. 		
	that one is used by xbuild when deciding where to look when it 		
	compiles against a specific profile
*	/lib/mono/xbuild-frameworks 
	above it has folders for each of the profiles, e.g. 
	.NETFramework/4.0, 
	.NETFramework/4.6, 
	.NETFramework/4.6.1 
	(the last two were only added recently)
	there's an XML file in there that tells xbuild where to look for the 
	reference assemblies it can use.

	
	
