# iOS 10 Simulator Keycahin Save

ios-10-simulator-keycahin-save.md

## Problem

	Error: iOS 10.x Simulator Could not save account to KeyChain: -34018

On 10.x Simulator following error 
    error = Could not save account to KeyChain: -34018
    Add Empty Entitlements.plist 
    File /+ New file /+ iOS /+ Entitlements.plist

Call stack:

    at Xamarin.Auth.KeyChainAccountStore.SaveAsync (Xamarin.Auth.Account account, System.String serviceId) [0x000f0] in /Projects/xa-src/source/Xamarin.Auth.XamarinIOS/PlatformSpecific/KeyChainAccountStore.Aync.cs:256 
      at Xamarin.Auth.KeyChainAccountStore.Save (Xamarin.Auth.Account account, System.String serviceId) [0x00004] in /Projects/xa-src/source/Xamarin.Auth.XamarinIOS/PlatformSpecific/KeyChainAccountStore.cs:46 
      at Xamarin.Auth.Sample.XamarinIOS.TestProvidersController.AccountStoreTests (System.Object authenticator, Xamarin.Auth.AuthenticatorCompletedEventArgs ee) [0x00014] in /Projects/xa-src/samples/Traditional.Standard/references01projects/Providers/Xamarin.Auth.Sample.XamarinIOS/TestProvidersController.cs:288 
      at Xamarin.Auth.Sample.XamarinIOS.TestProvidersController.Auth_Completed (System.Object sender, Xamarin.Auth.AuthenticatorCompletedEventArgs ee) [0x0003f] in /Projects/xa-src/samples/Traditional.Standard/references01projects/Providers/Xamarin.Auth.Sample.XamarinIOS/TestProvidersController.cs:175 


  SecRecord Generic

  SecKeyChain.Add
  Security.SecStatusCode    -34018	


  SecRecord Generic -34018	

## Problem


## Analysis

Search

    keychain 34018 ios 10

This is bug in iOS 10 Simulators:

*   https://forums.developer.apple.com/thread/60617

## [Re]Solution / Workaround

1.	Create (empty) Entitlements.plist with following content:

    <?xml version="1.0" encoding="UTF-8" ?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
    </dict>
    </plist>

2. Add Entitlements.plist to Debug Configuration in iOS *.csproj file:

    <CodesignEntitlements>Entitlements.plist</CodesignEntitlements>


*   issues with not installing on the device with Entitlements.plist.
    *   added 'Enable Keychain' in the Entitlements.plist.      
        By default, it adds app name 'com.company.appname' to keychain groups aswell.   
        It enables saving to the keychain and allowing other apps to access the data    
        via a key.
        But that requires more permissions in the 'App Id' section on Apple's       
        certificate side.
        So removing that fixed issue.

References:

*   Code 	
	https://github.com/moljac/Xamarin.Auth.Samples.NugetReferences/blob/master/Xamarin.Forms/Evolve16Labs/iOS/Entitlements.plist
*   



