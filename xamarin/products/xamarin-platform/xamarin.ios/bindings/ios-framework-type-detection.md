# iOS Framework Type Detection

static - iOS7 and up
dynamic (AKA embedded) - iOS8 and up

	mumuco:RichRelevanceSDK.framework moljac$ file RichRelevanceSDK 
	RichRelevanceSDK: Mach-O universal binary with 4 architectures
	RichRelevanceSDK (for architecture i386):	Mach-O dynamically linked shared library i386
	RichRelevanceSDK (for architecture x86_64):	Mach-O 64-bit dynamically linked shared library x86_64
	RichRelevanceSDK (for architecture armv7):	Mach-O dynamically linked shared library arm
	RichRelevanceSDK (for architecture arm64):	Mach-O 64-bit dynamically linked shared library

