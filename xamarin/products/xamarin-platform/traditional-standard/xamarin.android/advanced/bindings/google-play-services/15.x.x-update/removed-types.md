# Removed Types

removed-types.md

*   Android.Gms.Auth.GoogleAuthUtil

    fixed by surfacing

    path="/api/package[@name='com.google.android.gms.auth']/class[@name='zzg']"

*   Android.Gms.Common.Zzc

    Modified base type: Android.Gms.Common.Zzc Android.Gms.Common.GoogleApiAvailabilityLight

    class is not obfuscated anymore
    
*   Android.Gms.Common.Zzcold

*   Android.Gms.Common.Zze

    Modified base type: Android.Gms.Common.Zze Android.Gms.Common.GooglePlayServicesUtilLight

    class is not obfuscated anymore

*   Android.Gms.Common.Apis.InternalResponseObject

    Modified base type: Android.Gms.Common.Apis.InternalResponseObject Android.Gms.Common.Apis.DataBufferResponse

    seems like Removed

*   Android.Gms.Common.Data.InternalAbstractDataBuffer

    *   Modified base type: Android.Gms.Common.Data.InternalAbstractDataBuffer Android.Gms.Common.Data.EntityBuffer

    *   8 occurences

*   Android.Gms.Common.Data.Zzc

    *   Modified base type: Android.Gms.Common.Data.Zzc Android.Gms.Common.Data.DataBufferRef

    *   10 occurences


*   Android.Gms.Games.IGamesMetadataExtensions

    *   seems to be removed

    *   Luyten search - zilch/nada

*   Android.Gms.Games.IPlayersExtensions

    *   seems to be removed

    *   Luyten search - zilch/nada

*   Android.Gms.Games.Achievement.IAchievementsExtensions

    *   seems to be removed

    *   Luyten search - zilch/nada

*   Android.Gms.Games.Event.IEventsExtensions

    *   seems to be removed

*   Android.Gms.Games.LeaderBoard.ILeaderboardsExtensions

    *   seems to be removed

*   Android.Gms.Games.MultiPlayer.IInvitationsExtensions

    *   seems to be removed

*   Android.Gms.Games.MultiPlayer.IMultiplayer

    *   seems to be removed

*   Android.Gms.Games.MultiPlayer.TurnBased.ITurnBasedMultiplayerExtensions

    *   seems to be removed

*   Android.Gms.Games.Quest.IQuestsExtensions

    *   seems to be removed

*   Android.Gms.Games.Request.IRequestsExtensions

    *   seems to be removed

*   Android.Gms.Games.Snapshot.ISnapshotsExtensions

    *   seems to be removed

*   Android.Gms.Games.Stats.IStatsExtensions

    *   seems to be removed

*   Android.Gms.Games.Video.IVideosCaptureStreamingUrlResult

    *   seems to be removed

*   Android.Gms.Games.Video.IVideosExtensions

    *   seems to be removed

*   Android.Gms.Gcm.GcmListenerService

    *   deprecated, but still in the jar??

*   Android.Gms.InstantApp.IInstantAppsApi

    *   seems to be removed

    *   Luyten search - zilch/nada

*   Android.Gms.InstantApp.IInstantAppsApiExtensions

    *   seems to be removed

    *   Luyten search - zilch/nada

*   Android.Gms.InstantApp.IInstantAppsApiGetInstantAppDataResult

    *   seems to be removed

    *   Luyten search - zilch/nada

*   Android.Gms.SafetyNet.ISafetyNetApiAttestationResult

    *   seems to be removed

    *   Luyten search - zilch/nada

*  Android.Gms.SafetyNet.ISafetyNetApiHarmfulAppsResult

    *   seems to be removed

    *   Luyten search - zilch/nada

*   Android.Gms.SafetyNet.ISafetyNetApiVerifyAppsUserResult

    *   seems to be removed

    *   Luyten search - zilch/nada

*   Android.Gms.Wearable.INodeApiNodeListener

    *   NodeApiNodeListener interface not found

*   Android.Gms.Wearable.PeerConnectedEventArgs

    *   added via argType

*   Android.Gms.Wearable.PeerDisconnectedEventArgs

    *   added via argType

*   Firebase.Iid.FirebaseInstanceIdInternalReceiver

    *   Lutyen search in no results firebase-iid

    *   Lutyen search in no results firebase-iid-interop

*   Android.Gms.Ads.Identifier.AdvertisingIdClient

    ```
    ./externals/play-services-ads/classes.jar.class.java.txt:1959:  public com.google.android.gms.ads.identifier.AdvertisingIdClient$Info zzcgr;
    ./externals/play-services-ads/classes.jar.class.java.txt:2495:  public final com.google.android.gms.internal.ads.zzanz<com.google.android.gms.ads.identifier.AdvertisingIdClient$Info> zzae(android.content.Context);
    ./externals/play-services-ads/classes.jar.class.java.txt:2503:  public abstract com.google.android.gms.internal.ads.zzanz<com.google.android.gms.ads.identifier.AdvertisingIdClient$Info> zzae(android.content.Context);
    ./externals/play-services-ads/classes.jar.class.java.txt:6205:  public final com.google.android.gms.ads.identifier.AdvertisingIdClient zzan();
    ./externals/play-services-tagmanager-v4-impl/classes.jar.class.java.txt:507:  public final com.google.android.gms.ads.identifier.AdvertisingIdClient$Info zzmd();
    ./externals/play-services-tagmanager-v4-impl/classes.jar.class.java.txt:681:  public abstract com.google.android.gms.ads.identifier.AdvertisingIdClient$Info zzmd();
    ./externals/play-services-tagmanager/classes.jar.class.java.txt:17:  public final com.google.android.gms.ads.identifier.AdvertisingIdClient$Info zzmd();
    ./externals/play-services-tagmanager/classes.jar.class.java.txt:24:  public abstract com.google.android.gms.ads.identifier.AdvertisingIdClient$Info zzmd();
    ```
*   Android.Gms.Dynamite.Descriptors.FirebaseDatabase.ModuleDescriptor

*   Android.Gms.Dynamite.Descriptors.Flags.ModuleDescriptor

*   Android.Gms.Internal.InternalObfuscatedBase1

    *   `javap` search - not found

*   Android.Gms.Internal.InternalObfuscatedBase2

    *   `javap` search - not found

*   Android.Gms.Internal.InternalObfuscatedBase2Consts

    *   `javap` search - not found

*   Android.Gms.People.ProtoModel.FetchBackUpDeviceContactInfoResponseEntity

    *   `javap` search - not found

*   Com.Google.Android.Gms.Auth.Api.Phone.ISmsRetrieverApi

    *   MOVED

    *   New Namespace Android.Gms.Auth.Api.Phone

*   Com.Google.Android.Gms.Auth.Api.Phone.SmsRetriever

    *   MOVED

    *   New Namespace Android.Gms.Auth.Api.Phone

*   Com.Google.Android.Gms.Auth.Api.Phone.SmsRetrieverClient

    *   MOVED

    *   New Namespace Android.Gms.Auth.Api.Phone

*   Com.Google.Android.Gms.Dynamite.Descriptors.Com.Google.Firebase.Perf.ModuleDescriptor


*   Com.Google.Firebase.Perf.FirebasePerformance

    *   MOVED

    *   New Namespace Firebase.Perf

*   Com.Google.Firebase.Perf.Metrics.AddTraceAttribute

    *   MOVED

    *   New Namespace Firebase.Perf

*   Com.Google.Firebase.Perf.Metrics.AppStartTrace

    *   MOVED

    *   New Namespace Firebase.Perf

*   Com.Google.Firebase.Perf.Metrics.IAddTrace

    *   MOVED

    *   New Namespace Firebase.Perf

*   Com.Google.Firebase.Perf.Network.FirebasePerfHttpClient

    *   MOVED

    *   New Namespace Firebase.Perf

*   Com.Google.Firebase.Perf.Network.FirebasePerfOkHttpClient

    *   MOVED

    *   New Namespace Firebase.Perf

*   Com.Google.Firebase.Perf.Network.FirebasePerfUrlConnection

    *   MOVED

    *   New Namespace Firebase.Perf

*   Com.Google.Firebase.Perf.Provider.FirebasePerfProvider

    *   MOVED

    *   New Namespace Firebase.Perf


