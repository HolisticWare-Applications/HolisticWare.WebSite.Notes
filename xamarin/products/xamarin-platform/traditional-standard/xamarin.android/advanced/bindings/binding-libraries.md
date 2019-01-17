# Bindings in Android

*	binding
	*	native java libraries
	*	native java libraries which reference other libraries
		*	system libraries
			*	Android libs
			*	Android Support libs
			*	Google Play Services
			*	some vendor preinstalled libraries
				*	Samsung
	*	native java librries which reference native c/c++ libraries
	*	native c/c++ libraries
		*	PInvoke
		
## Java to c# mapping

| Java                                      | c#                                     |
|-------------------------------------------|----------------------------------------|
| class                                     | class                                  |
| interface                                 | interface + abstract class for fields  |
| method                                    | virtual method                         |
