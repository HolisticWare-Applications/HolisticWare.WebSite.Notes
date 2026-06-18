

.NET MAUI does not have official, out-of-the-box support for the Android TV "Leanback" user interface. However, because MAUI apps compile down to native Android apps, you can manually configure a MAUI project to build, deploy, and run on Android TV devices.Setting this up requires custom implementation in your Android MainActivity and specific deployment tweaks:1. Configure the Android ManifestTo make your MAUI application visible and operable on the Android TV launcher, you must declare TV support and add the Leanback launcher intent filter.Open your project's Platforms/Android/MainActivity.cs.Add the following attributes directly above the MainActivity class


```csharp
[Activity(Theme = "@style/Maui.SplashTheme", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize | ConfigChanges.Density)]
[IntentFilter(new[] { Android.Content.Intent.ActionMain }, Categories = new[] { Android.Content.Intent.CategoryLeanbackLauncher })]
public class MainActivity : MauiAppCompatActivity
{
    // ...
}
```


2. Declare TV Hardware RequirementsBy default, Android TV assumes apps require a touchscreen. You must explicitly tell the OS that a touchscreen is not required so your app can be installed.In Platforms/Android/AndroidManifest.xml, ensure you include the following uses-feature tags inside the <manifest> block:

```xml
<uses-feature android:name="android.hardware.touchscreen" android:required="false" />
<uses-feature android:name="android.hardware.telephony" android:required="false" />
```


3. Add a TV Banner

    *   Android TV requires a specific banner image for your app icon on the home screen.Add a banner 
        image (typically 320 × 180 pixels) to 
    
        ```
        Platforms/Android/Resources/drawable
        ```
        folder
    
    *   Reference the banner in your MainActivity
    
        ```csharp
        [Activity(Theme = "@style/Maui.SplashTheme", Banner = "@drawable/tv_banner", ...)]
        ```

4. Optimize UI/UX for the D-PadMAUI controls are inherently designed for touch, not D-Pad (remote control) navigation. To create a good TV experience, you will need to rely heavily on custom handlers, or ensure all interactive elements handle keyboard/focus events properly. Standard MAUI Button elements typically need custom styling to display clear focus states (e.g., highlighting when a user is hovering over them with a remote).

5. Deployment and DebuggingYou can test your app locally by pairing your TV to your development machine.Turn on Developer Options and USB Debugging on your Android TV.Depending on your TV's processor (e.g., ARM32, ARM64, or x64), make sure you are compiling your MAUI app targeting the correct architecture (e.g., android-arm64).You can deploy directly from Visual Studio or use adb connect <TV_IP_ADDRESS> to debug wirelessly.

https://www.reddit.com/r/dotnetMAUI/comments/1hwq2er/net_maui_hybrid_90_on_android_arm_32_bits/

