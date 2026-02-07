# MAUI Essentials refactoring statics into interfaces/singeltons

maui-essentials-refactoring-statics-into-interfaces-and-singeltons.md

*   Refactor Essentials statics into interfaces/singletons #4497

    *   https://github.com/dotnet/maui/issues/4497

```
./bin/dotnet/dotnet build Microsoft.Maui-mac.slnf
```


```
./bin/dotnet/dotnet build ./src/Essentials/test/UnitTests/Essentials.UnitTests.cspro
```

```
./bin/dotnet/dotnet build ./src/Essentials/test/DeviceTests/Essentials.DeviceTests.csproj
```

API's to complete:


*   [] Accelerometer

    *   https://docs.microsoft.com/en-us/xamarin/essentials/accelerometer

    *   

*   [] AppActions

*   [x] AppInfo

    *   https://github.com/dotnet/maui/pull/4464

*   [] Barometer

*   [] Battery
*   [] Browser
*   [] Clipboard
*   [] Compass
*   [] Connectivity
*   [] Contacts

    *   https://github.com/dotnet/maui/pull/4539

*   [] DeviceDisplay

    *   https://github.com/dotnet/maui/pull/3213

*   [] DeviceInfo

    *   https://github.com/dotnet/maui/pull/4465

*   [] Email
*   [] FilePicker
*   [] FileSystem
*   [] Flashlight

    *   https://github.com/dotnet/maui/pull/4525

*   [] Geocoding

    *   https://github.com/dotnet/maui/pull/4527

*   [] Geolocation
*   [] Gyroscope
*   [] HapticFeedback
*   [] Launcher
*   [] Magnetometer
*   [] Map
*   [] MediaPicker
*   [] OrientationSensor
*   [] Permissions
*   [] PhoneDialer

    *   https://github.com/dotnet/maui/pull/4466

*   [] Preferences
*   [] Screenshot
*   [] SecureStorage
*   [] SemanticScreenReader
*   [] Share
*   [] Sms
*   [] TextToSpeech
*   [] VersionTracking
*   [] Vibration
*   [] WebAuthenticator



## Essentials Interfaces




*   Essentials.WebAuthenticator refactored to interface and singleton
    *   https://github.com/dotnet/maui/pull/4757
*   Essentials.TextToSpeech refactored to interface and singleton
    *   https://github.com/dotnet/maui/pull/4747
*   Essentials.Vibration refactored to interface and singleton
    *   https://github.com/dotnet/maui/pull/4727
*   Essentials.MediaPicker refactored to interface and singleton
    *   https://github.com/dotnet/maui/pull/4663
*   Essentials.OrientationSensor refactored to interface and singleton
    *   https://github.com/dotnet/maui/pull/4662
*   Essentials.Magnetometer refactored to interface and singleton
    *   https://github.com/dotnet/maui/pull/4652
*   Essentials.HapticFeedback refactored to interface and singleton
    *   https://github.com/dotnet/maui/pull/4651
*   Essentials.Gyroscope refactored to interface and singleton
    *   https://github.com/dotnet/maui/pull/4649
*   Essentials.Accelerometer refactored to interface and singleton
    *   https://github.com/dotnet/maui/pull/4644
*   Essentials.Geolocation refactored to interface and singleton
    *   https://github.com/dotnet/maui/pull/4634
*   Essentials.FileSystem refactored to interface and singleton
    *   https://github.com/dotnet/maui/pull/4633
*   Essentials.Battery refactored to interface and singleton
    *   https://github.com/dotnet/maui/pull/4629
*   Essentials.Email refactored to interface and singleton
    *   https://github.com/dotnet/maui/pull/4623
*   Essentials.Connectivity refactored to interface and singleton
    *   https://github.com/dotnet/maui/pull/4622
*   Essentials.Compass refactored to interface and singleton
    *   https://github.com/dotnet/maui/pull/4615
*   Essentials.Clipboard refactored to interface and singleton
    *   https://github.com/dotnet/maui/pull/4612
*   Essentials.Browser refactored to interface and singleton
    *   https://github.com/dotnet/maui/pull/4605
*   Essentials.AppActions refactored to interface and singleton
    *   https://github.com/dotnet/maui/pull/4596 




*   Essentials.Launcher WIP refactored to interface and singleton
    *   https://github.com/dotnet/maui/pull/4903 
*   Essentials.FilePicker WIP refactored to interface and singleton
    *   https://github.com/dotnet/maui/pull/4632
*   Essentials.Barometer refactored to interface and singleton
    *   https://github.com/dotnet/maui/pull/4604
