# Binaries analysis

	BINARYNAME=lib*.a
	lipo -info $BINARYNAME

	xcrun \
		-sdk iphoneos \
		lipo -info $BINARYNAME
