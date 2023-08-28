# Interfaces with overloads

interfaces-with-overloads.md



```csharp
    public partial interface IMediationNativeListener : IJavaObject, IJavaPeerable 
    {
        // snip


        // Metadata.xml XPath method reference: path="/api/package[@name='com.google.android.gms.ads.mediation']/interface[@name='MediationNativeListener']/method[@name='onAdFailedToLoad' and count(parameter)=2 and parameter[1][@type='com.google.android.gms.ads.mediation.MediationNativeAdapter'] and parameter[2][@type='com.google.android.gms.ads.AdError']]"
		[Register ("onAdFailedToLoad", "(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/AdError;)V", "GetOnAdFailedToLoad_Lcom_google_android_gms_ads_mediation_MediationNativeAdapter_Lcom_google_android_gms_ads_AdError_Handler:Android.Gms.Ads.Mediation.IMediationNativeListenerInvoker, Xamarin.GooglePlayServices.Ads.Lite")]
		void OnAdFailedToLoad (global::Android.Gms.Ads.Mediation.IMediationNativeAdapter p0, global::Android.Gms.Ads.AdError p1);

		// Metadata.xml XPath method reference: path="/api/package[@name='com.google.android.gms.ads.mediation']/interface[@name='MediationNativeListener']/method[@name='onAdFailedToLoad' and count(parameter)=2 and parameter[1][@type='com.google.android.gms.ads.mediation.MediationNativeAdapter'] and parameter[2][@type='int']]"
		[global::System.Obsolete (@"deprecated")]
		[Register ("onAdFailedToLoad", "(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V", "GetOnAdFailedToLoad_Lcom_google_android_gms_ads_mediation_MediationNativeAdapter_IHandler:Android.Gms.Ads.Mediation.IMediationNativeListenerInvoker, Xamarin.GooglePlayServices.Ads.Lite")]
		void OnAdFailedToLoad (global::Android.Gms.Ads.Mediation.IMediationNativeAdapter adapter, int errorCode);


        // snip

    }
```

results in:

```
./generated/com.google.android.gms.play-services-ads-lite/obj/Debug/monoandroid12.0/generated/src/Android.Gms.Ads.Mediation.IMediationNativeListener.cs(676,48): error CS0102: The type 'IMediationNativeListenerImplementor' already contains a definition for 'OnAdFailedToLoadHandler' [./generated/com.google.android.gms.play-services-ads-lite/com.google.android.gms.play-services-ads-lite.csproj]
./generated/com.google.android.gms.play-services-ads-lite/obj/Debug/net6.0-android/generated/src/Android.Gms.Ads.Mediation.IMediationNativeListener.cs(676,48): error CS0102: The type 'IMediationNativeListenerImplementor' already contains a definition for 'OnAdFailedToLoadHandler' [./generated/com.google.android.gms.play-services-ads-lite/com.google.android.gms.play-services-ads-lite.csproj]

```

Workaround:

```xml
    <attr
        path="/api/package[@name='com.google.android.gms.ads.mediation']/interface[@name='MediationNativeListener']/method[@name='onAdFailedToLoad' and count(parameter)=2 and parameter[1][@type='com.google.android.gms.ads.mediation.MediationNativeAdapter'] and parameter[2][@type='int']]"
        name="managedName"
        >
        OnAdFailedToLoadWithErrorCode
    </attr>
```