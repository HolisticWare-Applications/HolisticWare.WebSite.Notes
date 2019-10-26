# Native Android Libraries

native-android-libraries.md

*   Create a `./lib/` folder in the project

*   Under that create additional subfolders for the platforms 

    *   armeabi, 
    
    *   armeabi-v7a

*   add `.so` files to the appropriate directory. 

    *   type AndroidNativeLibrary or whatever it is.

    *   `.so` files should be valid EFL executables. 

        *   should be compiled for ARM processor in Android Devices. 
        
        *   should compile them with Android NDK

*   Create p/invoke signatures for the c functions you want to call.

*   Call those functions.




