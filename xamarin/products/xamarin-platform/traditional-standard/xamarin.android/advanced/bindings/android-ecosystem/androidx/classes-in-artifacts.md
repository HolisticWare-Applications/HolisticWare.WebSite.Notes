# AndroidX 

classes-in-artifacts.md

Classes in artifacts:

```
androidx/cardview/widget/CardViewDelegate: androidx.cardview\cardview\classes.jar
androidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper: androidx.cardview\cardview\classes.jar
androidx/cardview/widget/RoundRectDrawableWithShadow: androidx.cardview\cardview\classes.jar
androidx/interpolator/view/animation/LookupTableInterpolator: androidx.interpolator\interpolator\classes.jar
android/support/v4/media/MediaBrowserCompat$CallbackHandler: androidx.media\media\classes.jar
android/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler: androidx.media\media\classes.jar
android/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper: androidx.media\media\classes.jar
androidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler: androidx.mediarouter\mediarouter\classes.jar
com/google/android/material/appbar/HeaderScrollingViewBehavior: com.google.android.material\material\classes.jar
androidx/cardview/widget/CardViewDelegate: androidx.cardview\cardview.aar
androidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper: androidx.cardview\cardview.aar
androidx/cardview/widget/RoundRectDrawableWithShadow: androidx.cardview\cardview.aar
androidx/interpolator/view/animation/LookupTableInterpolator: androidx.interpolator\interpolator.aar
android/support/v4/media/MediaBrowserCompat$CallbackHandler: androidx.media\media.aar
android/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler: androidx.media\media.aar
android/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper: androidx.media\media.aar
androidx/mediarouter/media/MediaRouter$GlobalMediaRouter$CallbackHandler: androidx.mediarouter\mediarouter.aar
com/google/android/material/appbar/HeaderScrollingViewBehavior: com.google.android.material\material.aar
```

Missing classes:

```
androidx.lifecycle.HolderFragment.
androidx.lifecycle.HolderFragment.HolderFragmentManager.
androidx.interpolator.view.animation.LookupTableInterpolator.
androidx.interpolator.view.animation.LookupTableInterpolator.
androidx.cardview.widget.CardViewDelegate.
androidx.cardview.widget.CardViewDelegate.
androidx.cardview.widget.RoundRectDrawableWithShadow.
androidx.cardview.widget.RoundRectDrawableWithShadow.RoundRectHelper.
androidx.cardview.widget.RoundRectDrawableWithShadow.RoundRectHelper.
com.google.android.material.appbar.HeaderScrollingViewBehavior.
com.google.android.material.appbar.HeaderScrollingViewBehavior.
android.support.v4.media.MediaBrowserCompat.CallbackHandler.
android.support.v4.media.MediaBrowserCompat.ServiceBinderWrapper.
```

*   https://devdiv.visualstudio.com/DevDiv/_build/results?buildId=2497512

8   https://github.com/xamarin/XamarinAndroidXMigration/blob/master/mappings/androidx-mapping.csv


*   TAR - types Android registered

*   TNAR - types nested Android registered

*   TAUR - types Android unregistered 

    *   this makes questionable sense, 
    
    *   collecting this after witnessing what lives in dlls [1]

*   TR - Reference Types (in Cecil)

    *   mostly `System.*`, `Android.*`, `Java.*`

    *   collecting this after witnessing what lives in dlls [1]



@moljac when i run the cecilfier on managed-only assemblies, 
it does not appear to update the namespaces

https://xamarinhq.slack.com/archives/CFBG061K8/p1554153919010700

Aaexercise.Managed.Support.dll



run it on a binding dll, it replaces the jni with null

android/support/v4/app/Fragment     android.support.v4.app.Fragment

androidx/fragment/app/Fragment      androidx.fragment.app.Fragment  
