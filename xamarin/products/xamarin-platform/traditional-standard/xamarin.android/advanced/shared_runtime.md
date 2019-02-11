
how would I be able to check if an apk was built using the “Use Shared Mono Runtime” 
setting in the IDE? (edited)


	`unzip -l` the .apk and see if `mscorlib.dll` is present ?_or_? if 
	`libmonodroid_bundle_app.so` is present

	if neither is present, “Use Shared Runtime” is enabled
	
	
