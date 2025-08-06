# Interfaces with overloads

interfaces-with-overloads.md

https://discord.com/channels/732297728826277939/732297837953679412/1382321296242905129

```java
public interface TypeConverter extends FromNativeConverter, ToNativeConverter {}

public interface ToNativeConverter {
    Class<?> nativeType();
}

public interface FromNativeConverter {
    Class<?> nativeType();
}```

Fix that oversight so that using `//attr[@name='managedOverride']`
can be used to emit `override abstract`:

https://github.com/dotnet/java-interop/commit/73ebad2496a0d6df251fd24e216248da70e3fea9

We have decided to support `//attr[@name='skipInvokerMethods']`
metadata on the `class` that the invoker class would be created for:

	<attr path="/api/package[@name='java.nio']/class[@name='CharBuffer']"
	    name="skipInvokerMethods">java/nio/Buffer.duplicate()Ljava/nio/Buffer;</attr>

and/or possibly skipInvokerMethods?

https://github.com/dotnet/java-interop/commit/22d5687bc5c572ea0eadbd1a23f02f424af782d1





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