# BuildActions

build-actions.md

# Android Targets

Jon Peppers:hot_pepper:  16:53
is @(EmbeddedReferenceJar) supposed to put the java code in the app or not?
@(EmbeddedJar) would, but it also creates a C# binding

Jonathan Pryor  16:53
i believe it’s not supposed to include it, as e.g. it might already exist on the device, e.g. android.jar

Jonathan Pobst  16:56
i think Embedded means it would include it ?

Jonathan Pryor  16:56
“Embedded” means the .jar is included in the .dll (or was…)
16:56
“Reference” means “use it for compilation, but not dx”
