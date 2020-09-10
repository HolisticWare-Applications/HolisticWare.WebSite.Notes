# Xamarin.UI.Tests with Xamarin.Android

xamarin-ui-tests-with-xamarin-android.md

## Error

```
Xamarin.Android
Error	
    NU1201	
    Project 
        AdMobSample 
    is not compatible with 
        net45 (.NETFramework,Version=v4.5). 
    Project 
        AdMobSample 
    supports: 
        monoandroid90 (MonoAndroid,Version=v9.0)
```        

for search: 

```
Xamarin.Android
Error	
    NU1201	
    Project 
    is not compatible with 
    Project 
    supports: 
        
```

*   https://stackoverflow.com/questions/51296837/xamarin-uitesting-nu1201-error-android-8-1-is-incompatible-with-netframework-4

Solved it after many more hours of testing and trialling. Instead of adding the Android project to the references, Within the AppInitializer I added another method to the StartApp() call like so:

```
public class AppInitializer
{
    public static IApp StartApp(Platform platform)
    {
        if (platform == Platform.Android)
        {
            return ConfigureApp.Android.InstalledApp("com.companyname.App1").StartApp();
        }

        return ConfigureApp.iOS.StartApp();
    }
}
```

Therefore once I had already run the app via the emulator for the first time and installed on the device, the UITest simply uses the installed APK on the emulator instead of the project.



*   https://stackoverflow.com/questions/51862395/xamarin-ui-test-referencing-xamarin-android-project-throws-errors


You typically won't reference your Android project in your UI-test project. The reason for this is that:

You might test an app you only have the apk or ipa for
Cloud solutions like Test Cloud won't have access to the source code and therefor won't compile the code.
I am using the apk like this:

```
[TestFixture]
public class DroidTest
{
    const string _droidPath = "../../APK/my-app.apk";
    IApp _app;

    [TestFixtureSetUp]
    public void Setup()
    {
        _app = ConfigureApp.Android.ApkFile(_droidPath).StartApp();
    }
}
```

If you made changes in the Android project build and create a new apk. After that re-run your tests.


