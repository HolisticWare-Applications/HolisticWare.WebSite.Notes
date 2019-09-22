# `map.cache`

map-cache.md

```

    		com.google.android.gms.tasks.OnCompleteListener
    		com.google.android.gms.tasks.OnSuccessListener
    		com.google.android.gms.tasks.OnCanceledListener
    		com.google.android.gms.tasks.OnFailureListener
    		com.google.android.gms.tasks.OnTokenCanceledListener
    		com.google.android.gms.tasks.OnCompleteListener

    		com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    		com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    		com.google.android.gms.common.api.ResultCallback
    		com.google.android.gms.common.api.ResultCallback
    		com.google.android.gms.common.api.PendingResult.StatusListener
    		com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    		com.google.android.gms.common.api.internal.SignInConnectionListener
    		com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener

    		com.google.android.gms.dynamic.OnDelegateCreatedListener

    		com.google.android.gms.security.ProviderInstaller.ProviderInstallListener

    		com.google.android.gms.common.images.ImageManager.OnImageLoadedListener

    		com.google.firebase.FirebaseAppLifecycleListener
    		com.google.firebase.FirebaseApp.BackgroundStateChangeListener
    		com.google.firebase.FirebaseApp.IdTokenListenersCountChangedListener
    		com.google.firebase.FirebaseApp.IdTokenListener
```

```
  Task "Javac"
    /Projects/system-installed/macosx/jdk/microsoft_dist_openjdk_8.0.25/bin/javac \
        -J-Dfile.encoding=UTF8 \
        -d obj/Debug/android/bin/classes \
        -classpath \
        /Library/Frameworks/Mono.framework/External/xbuild-frameworks/MonoAndroid/v9.0/mono.android.jar
        :
        /Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/java_runtime.jar
        :
        obj/Debug/lp/0/jl/universal-image-loader-1.9.5.jar
        :
        obj/Debug/lp/3/jl/uno.ui-MonoAndroid90.jar:obj/Debug/lp/32/jl/bin/classes.jar
        :
        obj/Debug/lp/7/jl/android.arch.core.common.jar
        :
        obj/Debug/lp/8/jl/bin/classes.jar
        :
        obj/Debug/lp/9/jl/android.arch.lifecycle.common.jar
        :
        obj/Debug/lp/10/jl/bin/classes.jar
        :
        obj/Debug/lp/11/jl/bin/classes.jar
        :
        obj/Debug/lp/12/jl/bin/classes.jar
        :
        obj/Debug/lp/13/jl/bin/classes.jar
        :
        obj/Debug/lp/14/jl/bin/classes.jar
        :
        obj/Debug/lp/15/jl/com.android.support.support-annotations.jar
        :
        obj/Debug/lp/16/jl/bin/classes.jar
        :
        obj/Debug/lp/17/jl/com.android.support.collections.jar
        :
        obj/Debug/lp/18/jl/bin/classes.jar
        :
        obj/Debug/lp/19/jl/bin/classes.jar
        :
        obj/Debug/lp/20/jl/bin/classes.jar
        :
        obj/Debug/lp/21/jl/bin/classes.jar
        :
        obj/Debug/lp/22/jl/bin/classes.jar
        :
        obj/Debug/lp/23/jl/bin/classes.jar
        :
        obj/Debug/lp/24/jl/bin/classes.jar
        :
        obj/Debug/lp/25/jl/bin/classes.jar 
        :
        obj/Debug/lp/26/jl/bin/classes.jar
        :
        obj/Debug/lp/27/jl/bin/classes.jar
        :
        obj/Debug/lp/28/jl/bin/classes.jar
        :
        obj/Debug/lp/29/jl/bin/classes.jar
        :
        obj/Debug/lp/30/jl/bin/classes.jar
        :
        obj/Debug/lp/31/jl/bin/classes.jar
        :
        obj/Debug/lp/33/jl/bin/classes.jar
        :
        obj/Debug/lp/35/jl/bin/classes.jar
        :
        obj/Debug/lp/36/jl/bin/classes.jar
        :
        obj/Debug/lp/37/jl/bin/classes.jar
        :
        obj/Debug/lp/38/jl/bin/classes.jar
        :
        obj/Debug/lp/39/jl/bin/classes.jar
        :
        obj/Debug/lp/48/jl/auto-value-annotations.jar
        -bootclasspath \
        /Projects/system-installed/macosx/sdk/platforms/android-28/android.jar \
        -encoding UTF-8 "@/var/folders/xt/ytq9wfqd2y78kx1ks7z36mrr0000gn/T/tmp4df47737.tmp" 

    obj/Debug/android/src/md5dab4f5c7853fd57f3a9c9a523364ac69/AwaitableTaskCompleteListener_1.java:8: error: 
    package com.google.android.gms.tasks does not exist
    		com.google.android.gms.tasks.OnCompleteListener
    		                            ^
    obj/Debug/android/src/md5dab4f5c7853fd57f3a9c9a523364ac69/AwaitableTaskCompleteListener_1.java:28: error: 
    package com.google.android.gms.tasks does not exist
    	public void onComplete (com.google.android.gms.tasks.Task p0)
    	                                                    ^
    obj/Debug/android/src/md5dab4f5c7853fd57f3a9c9a523364ac69/AwaitableTaskCompleteListener_1.java:33: error: 
    package com.google.android.gms.tasks does not exist
    	private native void n_onComplete (com.google.android.gms.tasks.Task p0);
    	                                                              ^
    obj/Debug/android/src/md513074be467e0034b6ca192c1689af813/GoogleApiClientOnConnectionFailedListenerImpl.java:8: error: 
    package com.google.android.gms.common.api.GoogleApiClient does not exist
    		com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    		                                                 ^
    obj/Debug/android/src/md513074be467e0034b6ca192c1689af813/GoogleApiClientOnConnectionFailedListenerImpl.java:28: error: 
    package com.google.android.gms.common does not exist
    	public void onConnectionFailed (com.google.android.gms.common.ConnectionResult p0)
    	                                                             ^
    obj/Debug/android/src/md513074be467e0034b6ca192c1689af813/GoogleApiClientOnConnectionFailedListenerImpl.java:33: error: 
    package com.google.android.gms.common does not exist
    	private native void n_onConnectionFailed (com.google.android.gms.common.ConnectionResult p0);
    	                                                                       ^
    obj/Debug/android/src/md513074be467e0034b6ca192c1689af813/GoogleApiClientConnectionCallbacksImpl.java:8: error: 
    package com.google.android.gms.common.api.GoogleApiClient does not exist
    		com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    		                                                 ^
    obj/Debug/android/src/md513d0258903c37fed2a3d17a14e8551a2/AwaitableResultCallback_1.java:8: error: 
    package com.google.android.gms.common.api does not exist
    		com.google.android.gms.common.api.ResultCallback
    		                                 ^
    obj/Debug/android/src/md513d0258903c37fed2a3d17a14e8551a2/AwaitableResultCallback_1.java:28: error: 
    package com.google.android.gms.common.api does not exist
    	public void onResult (com.google.android.gms.common.api.Result p0)
    	                                                       ^
    obj/Debug/android/src/md513d0258903c37fed2a3d17a14e8551a2/AwaitableResultCallback_1.java:33: error: 
    package com.google.android.gms.common.api does not exist
    	private native void n_onResult (com.google.android.gms.common.api.Result p0);
    	                                                                 ^
    obj/Debug/android/src/md513d0258903c37fed2a3d17a14e8551a2/ResultCallback_1.java:8: error: 
    package com.google.android.gms.common.api does not exist
    		com.google.android.gms.common.api.ResultCallback
    		                                 ^
    obj/Debug/android/src/md513d0258903c37fed2a3d17a14e8551a2/ResultCallback_1.java:28: error: 
    package com.google.android.gms.common.api does not exist
    	public void onResult (com.google.android.gms.common.api.Result p0)
    	                                                       ^
    obj/Debug/android/src/md513d0258903c37fed2a3d17a14e8551a2/ResultCallback_1.java:33: error: 
    package com.google.android.gms.common.api does not exist
    	private native void n_onResult (com.google.android.gms.common.api.Result p0);
    	                                                                 ^
    obj/Debug/android/src/mono/com/google/firebase/FirebaseAppLifecycleListenerImplementor.java:8: error: 
    package com.google.firebase does not exist
    		com.google.firebase.FirebaseAppLifecycleListener
    		                   ^
    obj/Debug/android/src/mono/com/google/firebase/FirebaseAppLifecycleListenerImplementor.java:28: error: 
    package com.google.firebase does not exist
    	public void onDeleted (java.lang.String p0, com.google.firebase.FirebaseOptions p1)
    	                                                               ^
    obj/Debug/android/src/mono/com/google/firebase/FirebaseAppLifecycleListenerImplementor.java:33: error: 
    package com.google.firebase does not exist
    	private native void n_onDeleted (java.lang.String p0, com.google.firebase.FirebaseOptions p1);
    	                                                                         ^
    obj/Debug/android/src/mono/com/google/firebase/FirebaseApp_BackgroundStateChangeListenerImplementor.java:8: error: 
    package com.google.firebase.FirebaseApp does not exist
    		com.google.firebase.FirebaseApp.BackgroundStateChangeListener
    		                               ^
    obj/Debug/android/src/mono/com/google/firebase/FirebaseApp_IdTokenListenersCountChangedListenerImplementor.java:8: error: 
    package com.google.firebase.FirebaseApp does not exist
    		com.google.firebase.FirebaseApp.IdTokenListenersCountChangedListener
    		                               ^
    obj/Debug/android/src/mono/com/google/firebase/FirebaseApp_IdTokenListenerImplementor.java:8: error: 
    package com.google.firebase.FirebaseApp does not exist
    		com.google.firebase.FirebaseApp.IdTokenListener
    		                               ^
    obj/Debug/android/src/mono/com/google/firebase/FirebaseApp_IdTokenListenerImplementor.java:28: error: 
    package com.google.firebase.internal does not exist
    	public void onIdTokenChanged (com.google.firebase.internal.InternalTokenResult p0)
    	                                                          ^
    obj/Debug/android/src/mono/com/google/firebase/FirebaseApp_IdTokenListenerImplementor.java:33: error: 
    package com.google.firebase.internal does not exist
    	private native void n_onIdTokenChanged (com.google.firebase.internal.InternalTokenResult p0);
    	                                                                    ^
    obj/Debug/android/src/mono/com/google/android/gms/tasks/OnSuccessListenerImplementor.java:8: error: 
    package com.google.android.gms.tasks does not exist
    		com.google.android.gms.tasks.OnSuccessListener
    		                            ^
    obj/Debug/android/src/mono/com/google/android/gms/tasks/OnCanceledListenerImplementor.java:8: error: 
    package com.google.android.gms.tasks does not exist
    		com.google.android.gms.tasks.OnCanceledListener
    		                            ^
    obj/Debug/android/src/mono/com/google/android/gms/tasks/OnFailureListenerImplementor.java:8: error: 
    package com.google.android.gms.tasks does not exist
    		com.google.android.gms.tasks.OnFailureListener
    		                            ^
    obj/Debug/android/src/mono/com/google/android/gms/tasks/OnTokenCanceledListenerImplementor.java:8: error: 
    package com.google.android.gms.tasks does not exist
    		com.google.android.gms.tasks.OnTokenCanceledListener
    		                            ^
    obj/Debug/android/src/mono/com/google/android/gms/tasks/OnCompleteListenerImplementor.java:8: error: 
    package com.google.android.gms.tasks does not exist
    		com.google.android.gms.tasks.OnCompleteListener
    		                            ^
    obj/Debug/android/src/mono/com/google/android/gms/tasks/OnCompleteListenerImplementor.java:28: error: 
    package com.google.android.gms.tasks does not exist
    	public void onComplete (com.google.android.gms.tasks.Task p0)
    	                                                    ^
    obj/Debug/android/src/mono/com/google/android/gms/tasks/OnCompleteListenerImplementor.java:33: error: 
    package com.google.android.gms.tasks does not exist
    	private native void n_onComplete (com.google.android.gms.tasks.Task p0);
    	                                                              ^
    obj/Debug/android/src/mono/com/google/android/gms/dynamic/OnDelegateCreatedListenerImplementor.java:8: error: 
    package com.google.android.gms.dynamic does not exist
    		com.google.android.gms.dynamic.OnDelegateCreatedListener
    		                              ^
    obj/Debug/android/src/mono/com/google/android/gms/dynamic/OnDelegateCreatedListenerImplementor.java:28: error: 
    package com.google.android.gms.dynamic does not exist
    	public void onDelegateCreated (com.google.android.gms.dynamic.LifecycleDelegate p0)
    	                                                             ^
    obj/Debug/android/src/mono/com/google/android/gms/dynamic/OnDelegateCreatedListenerImplementor.java:33: error: 
    package com.google.android.gms.dynamic does not exist
    	private native void n_onDelegateCreated (com.google.android.gms.dynamic.LifecycleDelegate p0);
    	                                                                       ^
    obj/Debug/android/src/mono/com/google/android/gms/security/ProviderInstaller_ProviderInstallListenerImplementor.java:8: error: 
    package com.google.android.gms.security.ProviderInstaller does not exist
    		com.google.android.gms.security.ProviderInstaller.ProviderInstallListener
    		                                                 ^
    obj/Debug/android/src/mono/com/google/android/gms/common/images/ImageManager_OnImageLoadedListenerImplementor.java:8: error: 
    package com.google.android.gms.common.images.ImageManager does not exist
    		com.google.android.gms.common.images.ImageManager.OnImageLoadedListener
    		                                                 ^
    obj/Debug/android/src/mono/com/google/android/gms/common/api/PendingResult_StatusListenerImplementor.java:8: error: 
    package com.google.android.gms.common.api.PendingResult does not exist
    		com.google.android.gms.common.api.PendingResult.StatusListener
    		                                               ^
    obj/Debug/android/src/mono/com/google/android/gms/common/api/PendingResult_StatusListenerImplementor.java:28: error: 
    package com.google.android.gms.common.api does not exist
    	public void onComplete (com.google.android.gms.common.api.Status p0)
    	                                                         ^
    obj/Debug/android/src/mono/com/google/android/gms/common/api/PendingResult_StatusListenerImplementor.java:33: error: 
    package com.google.android.gms.common.api does not exist
    	private native void n_onComplete (com.google.android.gms.common.api.Status p0);
    	                                                                   ^
    obj/Debug/android/src/mono/com/google/android/gms/common/api/GoogleApiClient_OnConnectionFailedListenerImplementor.java:8: error: 
    package com.google.android.gms.common.api.GoogleApiClient does not exist
    		com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    		                                                 ^
    obj/Debug/android/src/mono/com/google/android/gms/common/api/GoogleApiClient_OnConnectionFailedListenerImplementor.java:28: error: 
    package com.google.android.gms.common does not exist
    	public void onConnectionFailed (com.google.android.gms.common.ConnectionResult p0)
    	                                                             ^
    obj/Debug/android/src/mono/com/google/android/gms/common/api/GoogleApiClient_OnConnectionFailedListenerImplementor.java:33: error: 
    package com.google.android.gms.common does not exist
    	private native void n_onConnectionFailed (com.google.android.gms.common.ConnectionResult p0);
    	                                                                       ^
    obj/Debug/android/src/mono/com/google/android/gms/common/api/internal/SignInConnectionListenerImplementor.java:8: error: 
    package com.google.android.gms.common.api.internal does not exist
    		com.google.android.gms.common.api.internal.SignInConnectionListener
    		                                          ^
    obj/Debug/android/src/mono/com/google/android/gms/common/api/internal/BackgroundDetector_BackgroundStateChangeListenerImplementor.java:8: error: 
    package com.google.android.gms.common.api.internal.BackgroundDetector does not exist
    		com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
    		                                                             ^```

```
+   0   UniversalImageLoader
-       Uno
-       Uno.Foundation
+       Uno.UI.BindingHelper.Android
-       Uno.UI
-       Uno.UI.Toolkit
-       Uno.Xaml
+   7   Xamarin.Android.Arch.Core.Common
+   8   Xamarin.Android.Arch.Core.Runtime
+   9   Xamarin.Android.Arch.Lifecycle.Common
+   10  Xamarin.Android.Arch.Lifecycle.LiveData.Core
+   11  Xamarin.Android.Arch.Lifecycle.LiveData
+   12  Xamarin.Android.Arch.Lifecycle.Runtime
+   13  Xamarin.Android.Arch.Lifecycle.ViewModel
+   14  Xamarin.Android.Support.Animated.Vector.Drawable
+   15  Xamarin.Android.Support.Annotations
+   16  Xamarin.Android.Support.AsyncLayoutInflater
+   17  Xamarin.Android.Support.Collections
+   18  Xamarin.Android.Support.Compat
+   19  Xamarin.Android.Support.CoordinaterLayout
+   20  Xamarin.Android.Support.Core.UI
+   21  Xamarin.Android.Support.Core.Utils
+   22  Xamarin.Android.Support.CursorAdapter
+   23  Xamarin.Android.Support.CustomView
+   24  Xamarin.Android.Support.DocumentFile
+   25  Xamarin.Android.Support.DrawerLayout
+   26  Xamarin.Android.Support.Fragment
+   27  Xamarin.Android.Support.Interpolator
+   28  Xamarin.Android.Support.Loader
+   29  Xamarin.Android.Support.LocalBroadcastManager
+   30  Xamarin.Android.Support.Media.Compat
+   31  Xamarin.Android.Support.Print
-   32  Xamarin.Android.Support.SlidingPaneLayout
+   33  Xamarin.Android.Support.SwipeRefreshLayout
-   34  Xamarin.Android.Support.v4
+   35  Xamarin.Android.Support.v7.AppCompat
+   36  Xamarin.Android.Support.v7.RecyclerView
+   37  Xamarin.Android.Support.Vector.Drawable
+   38  Xamarin.Android.Support.VersionedParcelable
+   39  Xamarin.Android.Support.ViewPager
-   40  Xamarin.Firebase.Abt
-   41  Xamarin.Firebase.Analytics
-   42  Xamarin.Firebase.Analytics.Impl
-   43  Xamarin.Firebase.Common
-   44  Xamarin.Firebase.Config
-   45  Xamarin.Firebase.Iid
-   46  Xamarin.Firebase.Iid.Interop
-   47  Xamarin.Firebase.Perf
+   48  Xamarin.Google.AutoValue.Annotations
-   49  Xamarin.GooglePlayServices.Ads.Identifier
-   50  Xamarin.GooglePlayServices.Base
-   51  Xamarin.GooglePlayServices.Basement
-   52  Xamarin.GooglePlayServices.Clearcut
-   53  Xamarin.GooglePlayServices.Measurement.Api
-   54  Xamarin.GooglePlayServices.Measurement.Base
-   55  Xamarin.GooglePlayServices.Phenotype
-   56  Xamarin.GooglePlayServices.Stats
-   57  Xamarin.GooglePlayServices.Tasks
```