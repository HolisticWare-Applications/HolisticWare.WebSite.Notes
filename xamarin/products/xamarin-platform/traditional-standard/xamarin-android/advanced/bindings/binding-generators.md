
## Analysing Android (java) binaries

*	Android (java) binaries
	*	jar[s]
	*	aar[s]
	

	javap -classpath classes.jar \
		$(jar -tf classes.jar | grep "class$" | sed s/\.class$//)

## Xamarin.Android Binding Generators
		
*	bindings generators
	*	jar2xml
	*	class-parse
	
		<AndroidClassParser>class-parse</AndroidClassParser>

This does work with C8 by setting the $(AndroidClassParser) MSBuild property to `class-parse`:

    xbuild /p:AndroidClassParser=class-parse

What's needed now is a way to change the $(AndroidClassParser) value from within the IDE.
