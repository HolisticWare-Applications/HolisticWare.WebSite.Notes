# Error: iOS Application could not be uploaded to the device

error-ios-application-could-not-be-uploaded-to-the-device.md 

## Problem

Error

    ApplicationVerificationFailed: Failed to verify code signature of 
    /private/var/installd/Library/Caches/com.apple.mobile.installd.staging/temp.1L8cUb/extracted/XamarinAuthSampleXamarinIOS.app 
    : 
    0xe8008016 
    (The executable was signed with invalid entitlements.)
    error MT1006: Could not install the application 
        '/Projects/xa-src/samples/Traditional.Standard/references01projects/Providers/Xamarin.Auth.Sample.XamarinIOS/bin/iPhone/Debug/device-builds/iphone7.2-10.2.1/XamarinAuthSampleXamarinIOS.app' 
    on the device 'Miljenko's iPhone 6': 
    Your code signing/provisioning profiles are not correctly configured. 
    Probably 
        you have an entitlement not supported by your current provisioning profile, 
    or 
        your device is not part of the current provisioning profile. 
    Please check the iOS Device Log for details (error: 0xe8008016).

Application could not be uploaded to the device.


iOS development certificate was Invalid on Developer Portal

Regenerated it.

Nuked bin/ and obj/ folders, rebuilt, redeployed

 ApplicationVerificationFailed: 
 Failed to verify code signature of 
    /private/var/installd/Library/Caches/com.apple.mobile.installd.staging/temp.CkBgMP/extracted/XamarinAuthSampleXamarinIOS.app 
 : 
 0xe8008016 (The executable was signed with invalid entitlements.)
error MT1006: 
Could not install the application 
    '/Projects/xa-src/samples/Traditional.Standard/references01projects/Providers/Xamarin.Auth.Sample.XamarinIOS/bin/iPhone/Debug/device-builds/iphone7.2-10.2.1/XamarinAuthSampleXamarinIOS.app' 
on the device 
    'Miljenko's iPhone 6': 
Your code signing/provisioning profiles are not correctly configured. 
Probably 
    you have an entitlement not supported by your current provisioning profile, 
or 
    your device is not part of the current provisioning profile. 
Please check the iOS Device Log for details (error: 0xe8008016).
--- inner exception
Xamarin.Installation.FailedInstallException: Your code signing/provisioning profiles are not correctly configured. 
Probably 
    you have an entitlement not supported by your current provisioning profile, 
or 
    your device is not part of the current provisioning profile. Please check the iOS Device Log for details (error: 0xe8008016)
  at Xamarin.Installation.InstallationProxyService.InstallApplicationBundle (System.String app_path, MonoTouch.MobileDevice.ProgressCallback callback, System.String shadow_directory) [0x000f5] in <dda2a3dd91794abfb100422ac28efd84>:0 
  at Xamarin.Launcher.DevController.InstallApplicationBundle (Xamarin.Hosting.RealDevice d, Xamarin.Hosting.AppBundle bundle, System.String shadow_directory) [0x0003d] in <dda2a3dd91794abfb100422ac28efd84>:0 
  at Xamarin.Launcher.DevController+<InstallApplicationBundleAsync>c__async0+<InstallApplicationBundleAsync>c__AnonStorey9.<>m__0 () [0x00000] in <dda2a3dd91794abfb100422ac28efd84>:0 
  at Xamarin.Hosting.RealDevice.ExecuteWithSession (System.Action action) [0x0000e] in <26d23b8a977048db99c7be2b68926132>:0 
  at Xamarin.Launcher.DevController+<InstallApplicationBundleAsync>c__async0.MoveNext () [0x000c2] in <dda2a3dd91794abfb100422ac28efd84>:0 
--- End of stack trace from previous location where exception was thrown ---
  at Xamarin.Utils.NSRunLoopExtensions.RunUntilTaskCompletion (Foundation.NSRunLoop this, System.Threading.Tasks.Task task) [0x00070] in <26d23b8a977048db99c7be2b68926132>:0 
  at Xamarin.Launcher.DevController.InstallApplication (System.String device_name, System.String device_type, System.String app_path) [0x00166] in <dda2a3dd91794abfb100422ac28efd84>:0 
---
  at Xamarin.Launcher.DevController.InstallApplication (System.String device_name, System.String device_type, System.String app_path) [0x001cb] in <dda2a3dd91794abfb100422ac28efd84>:0 
  at Xamarin.Launcher.Driver.Main2 (System.String[] args) [0x009db] in <dda2a3dd91794abfb100422ac28efd84>:0 
  at Xamarin.Launcher.Driver.Main (System.String[] args) [0x00074] in <dda2a3dd91794abfb100422ac28efd84>:0 

Application could not be uploaded to the device.
