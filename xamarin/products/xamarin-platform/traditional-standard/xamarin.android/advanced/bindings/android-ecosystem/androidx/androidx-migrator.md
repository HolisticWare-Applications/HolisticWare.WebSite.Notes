# androidx-migrator

androidx-migrator.md


Warning/error:

```
WARN: Did not write source server data to output assembly. Source server data is only writeable on Windows
INFO: Writing output assembly to disk
INFO: Copying permissions from /var/folders/2s/f1bh1ny139s5hm700g284_b80000gn/T/Xamarin.AndroidX.Migration/AssemblyMerger/b705e510-2254-4609-9080-f4acd1fdb0c8/67a4f224-5e98-4c77-a614-b8f21e587a90.dll
INFO: Finished in 00:00:19.0642435
androidx-migrator: An error occurred: `Object reference not set to an instance of an object.`.
An error occurred when executing task 'merge'.
Error: Process androidx-migrator exited with code 1.
```

*   https://github.com/gluck/il-repack/blob/master/ILRepack/Steps/SourceServerData/SourceServerDataRepackStep.cs#L96

```
androidx-migrator \
    help \
        merge
```

```
androidx-migrator \
        generate -v \
          --support ./output/AndroidSupport.Merged.dll \
          --androidx ./output/AndroidX.Merged.dll \
          --output ./output/mappings/androidx-mapping.csv
```


```
androidx-migrator \
    --verbose \
    merge \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Lifecycle.Common.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Concurrent.Futures.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.Kotlin.StdLib.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.Kotlin.StdLib.Jdk8.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Arch.Core.Common.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Lifecycle.LiveData.Core.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.KotlinX.Coroutines.Android.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Lifecycle.LiveData.Ktx.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Paging.Runtime.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Lifecycle.Runtime.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.CustomView.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.RecyclerView.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.Kotlin.StdLib.Common.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Collection.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Paging.Common.Ktx.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Lifecycle.LiveData.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Arch.Core.Runtime.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Core.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.VersionedParcelable.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.KotlinX.Coroutines.Core.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Paging.Common.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Core.Core.Ktx.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.Kotlin.StdLib.Jdk7.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Annotation.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Lifecycle.ViewModel.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.Google.Guava.ListenableFuture.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Annotation.Experimental.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.KotlinX.Coroutines.Core.Jvm.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.Jetbrains.Annotations.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.heifwriter.heifwriter/bin/Release/monoandroid12.0/Xamarin.AndroidX.HeifWriter.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.palette.palette-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.Palette.Palette.Ktx.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.palette.palette-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.Legacy.Support.Core.Utils.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.palette.palette-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.LocalBroadcastManager.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.palette.palette-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.Palette.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.palette.palette-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.Print.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.palette.palette-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.DocumentFile.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.palette.palette-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.Loader.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.databinding.databinding-common/bin/Release/monoandroid12.0/Xamarin.AndroidX.DataBinding.DataBindingCommon.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/com.google.android.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.CardView.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/com.google.android.material.material/bin/Release/monoandroid12.0/Xamarin.Google.Android.Material.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/com.google.android.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/com.google.android.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.Emoji2.ViewsHelper.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/com.google.android.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.SavedState.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/com.google.android.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.AppCompat.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/com.google.android.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.Fragment.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/com.google.android.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.ViewPager.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/com.google.android.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.CoordinatorLayout.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/com.google.android.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.Activity.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/com.google.android.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.ResourceInspection.Annotation.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/com.google.android.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.AppCompat.AppCompatResources.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/com.google.android.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.ViewPager2.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/com.google.android.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.Startup.StartupRuntime.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/com.google.android.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.ConstraintLayout.Core.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/com.google.android.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.Lifecycle.Process.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/com.google.android.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.ConstraintLayout.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/com.google.android.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.Transition.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/com.google.android.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.CursorAdapter.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/com.google.android.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.DrawerLayout.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/com.google.android.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.Emoji2.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/com.google.android.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.DynamicAnimation.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/com.google.android.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.Interpolator.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/com.google.android.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.VectorDrawable.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/com.google.android.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.VectorDrawable.Animated.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/com.google.android.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.Tracing.Tracing.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.wear.wear-ongoing/bin/Release/monoandroid12.0/Xamarin.AndroidX.Wear.Ongoing.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.work.work-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Sqlite.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.work.work-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Room.Common.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.work.work-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Lifecycle.Service.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.work.work-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Room.Runtime.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.work.work-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Sqlite.Framework.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.work.work-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Work.Runtime.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.recommendation.recommendation/bin/Release/monoandroid12.0/Xamarin.AndroidX.Recommendation.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.room.room-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.Room.Room.Ktx.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.compose.foundation.foundation/bin/Release/monoandroid12.0/Xamarin.AndroidX.Compose.Runtime.Saveable.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.compose.foundation.foundation/bin/Release/monoandroid12.0/Xamarin.AndroidX.Compose.UI.Geometry.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.compose.foundation.foundation/bin/Release/monoandroid12.0/Xamarin.AndroidX.AutoFill.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.compose.foundation.foundation/bin/Release/monoandroid12.0/Xamarin.AndroidX.Compose.UI.Util.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.compose.foundation.foundation/bin/Release/monoandroid12.0/Xamarin.AndroidX.Lifecycle.Common.Java8.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.compose.foundation.foundation/bin/Release/monoandroid12.0/Xamarin.AndroidX.Compose.Animation.Core.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.compose.foundation.foundation/bin/Release/monoandroid12.0/Xamarin.AndroidX.Compose.Animation.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.compose.foundation.foundation/bin/Release/monoandroid12.0/Xamarin.AndroidX.Compose.Foundation.Layout.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.compose.foundation.foundation/bin/Release/monoandroid12.0/Xamarin.AndroidX.Compose.UI.Text.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.compose.foundation.foundation/bin/Release/monoandroid12.0/Xamarin.AndroidX.Compose.Runtime.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.compose.foundation.foundation/bin/Release/monoandroid12.0/Xamarin.AndroidX.Compose.UI.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.compose.foundation.foundation/bin/Release/monoandroid12.0/Xamarin.AndroidX.Compose.UI.Graphics.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.compose.foundation.foundation/bin/Release/monoandroid12.0/Xamarin.AndroidX.Compose.Foundation.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.compose.foundation.foundation/bin/Release/monoandroid12.0/Xamarin.AndroidX.Compose.UI.Unit.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.compose.foundation.foundation/bin/Release/monoandroid12.0/Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.databinding.viewbinding/bin/Release/monoandroid12.0/Xamarin.AndroidX.DataBinding.ViewBinding.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.camera.camera-lifecycle/bin/Release/monoandroid12.0/Xamarin.AndroidX.Camera.Lifecycle.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.camera.camera-lifecycle/bin/Release/monoandroid12.0/Xamarin.Google.AutoValue.Annotations.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.camera.camera-lifecycle/bin/Release/monoandroid12.0/Xamarin.AndroidX.Camera.Core.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.camera.camera-lifecycle/bin/Release/monoandroid12.0/Xamarin.AndroidX.ExifInterface.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.biometric.biometric/bin/Release/monoandroid12.0/Xamarin.AndroidX.Biometric.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.slice.slice-view/bin/Release/monoandroid12.0/Xamarin.AndroidX.Slice.View.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.slice.slice-view/bin/Release/monoandroid12.0/Xamarin.AndroidX.Slice.Core.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.wear.wear-input/bin/Release/monoandroid12.0/Xamarin.AndroidX.Wear.Input.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.navigation.navigation-fragment-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.Navigation.Runtime.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.navigation.navigation-fragment-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.Navigation.Runtime.Ktx.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.navigation.navigation-fragment-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.Collection.Ktx.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.navigation.navigation-fragment-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.Navigation.Common.Ktx.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.navigation.navigation-fragment-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.Navigation.Fragment.Ktx.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.navigation.navigation-fragment-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.SlidingPaneLayout.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.navigation.navigation-fragment-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.Window.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.navigation.navigation-fragment-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.Activity.Ktx.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.navigation.navigation-fragment-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.Navigation.Common.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.navigation.navigation-fragment-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.Fragment.Ktx.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.navigation.navigation-fragment-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.SavedState.SavedState.Ktx.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.navigation.navigation-fragment-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.Navigation.Fragment.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.core.core-google-shortcuts/bin/Release/monoandroid12.0/Xamarin.AndroidX.Core.GoogleShortcuts.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.core.core-google-shortcuts/bin/Release/monoandroid12.0/Xamarin.Google.Crypto.Tink.Android.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.room.room-rxjava3/bin/Release/monoandroid12.0/Xamarin.AndroidX.Room.Room.RxJava3.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.room.room-rxjava3/bin/Release/monoandroid12.0/Xamarin.Android.ReactiveX.RxJava3.RxJava.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.room.room-rxjava3/bin/Release/monoandroid12.0/Xamarin.Android.ReactiveStreams.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.room.room-guava/bin/Release/monoandroid12.0/Xamarin.AndroidX.Room.Guava.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.preference.preference-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.Preference.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.preference.preference-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.Preference.Preference.Ktx.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.emoji.emoji/bin/Release/monoandroid12.0/Xamarin.AndroidX.Emoji.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/io.reactivex.rxjava2.rxjava/bin/Release/monoandroid12.0/Xamarin.Android.ReactiveX.RxJava.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.compose.runtime.runtime-rxjava2/bin/Release/monoandroid12.0/Xamarin.AndroidX.Compose.Runtime.RxJava2.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.ads.ads-identifier-common/bin/Release/monoandroid12.0/Xamarin.AndroidX.Ads.IdentifierCommon.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.tvprovider.tvprovider/bin/Release/monoandroid12.0/Xamarin.AndroidX.TvProvider.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.compose.runtime.runtime-livedata/bin/Release/monoandroid12.0/Xamarin.AndroidX.Compose.Runtime.LiveData.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.lifecycle.lifecycle-reactivestreams-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.Lifecycle.ReactiveStreams.Ktx.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.lifecycle.lifecycle-reactivestreams-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.Lifecycle.ReactiveStreams.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.legacy.legacy-support-v13/bin/Release/monoandroid12.0/Xamarin.AndroidX.Legacy.Support.Core.UI.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.legacy.legacy-support-v13/bin/Release/monoandroid12.0/Xamarin.AndroidX.Legacy.Support.V4.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.legacy.legacy-support-v13/bin/Release/monoandroid12.0/Xamarin.AndroidX.Media.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.legacy.legacy-support-v13/bin/Release/monoandroid12.0/Xamarin.AndroidX.AsyncLayoutInflater.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.legacy.legacy-support-v13/bin/Release/monoandroid12.0/Xamarin.AndroidX.Legacy.Support.V13.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.legacy.legacy-support-v13/bin/Release/monoandroid12.0/Xamarin.AndroidX.SwipeRefreshLayout.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.leanback.leanback-preference/bin/Release/monoandroid12.0/Xamarin.AndroidX.Legacy.Preference.V14.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.leanback.leanback-preference/bin/Release/monoandroid12.0/Xamarin.AndroidX.Leanback.Preference.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.leanback.leanback-preference/bin/Release/monoandroid12.0/Xamarin.AndroidX.Leanback.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.room.room-rxjava2/bin/Release/monoandroid12.0/Xamarin.AndroidX.Room.Room.RxJava2.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-rxjava2/bin/Release/monoandroid12.0/Xamarin.AndroidX.Paging.RxJava2.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-rxjava2/bin/Release/monoandroid12.0/Xamarin.KotlinX.Coroutines.Reactive.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-rxjava2/bin/Release/monoandroid12.0/Xamarin.KotlinX.Coroutines.Rx2.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.car.car-cluster/bin/Release/monoandroid12.0/Xamarin.AndroidX.Car.Cluster.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.car.car-cluster/bin/Release/monoandroid12.0/Xamarin.AndroidX.GridLayout.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.car.car-cluster/bin/Release/monoandroid12.0/Xamarin.AndroidX.Car.Car.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.media2.media2-common/bin/Release/monoandroid12.0/Xamarin.AndroidX.Media2.Common.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.mediarouter.mediarouter/bin/Release/monoandroid12.0/Xamarin.AndroidX.MediaRouter.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.constraintlayout.constraintlayout-solver/bin/Release/monoandroid12.0/Xamarin.AndroidX.ConstraintLayout.Solver.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.browser.browser/bin/Release/monoandroid12.0/Xamarin.AndroidX.Browser.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.navigation.navigation-ui/bin/Release/monoandroid12.0/Xamarin.AndroidX.Navigation.UI.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.media2.media2-session/bin/Release/monoandroid12.0/Xamarin.AndroidX.Media2.Session.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.core.core-animation/bin/Release/monoandroid12.0/Xamarin.AndroidX.Core.Animation.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.multidex.multidex/bin/Release/monoandroid12.0/Xamarin.AndroidX.MultiDex.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.contentpager.contentpager/bin/Release/monoandroid12.0/Xamarin.AndroidX.ContentPager.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.ads.ads-identifier/bin/Release/monoandroid12.0/Xamarin.AndroidX.Ads.Identifier.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.compose.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.Compose.Material.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.compose.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.Compose.Material.Icons.Core.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.compose.material.material/bin/Release/monoandroid12.0/Xamarin.AndroidX.Compose.Material.Ripple.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/com.google.guava.failureaccess/bin/Release/monoandroid12.0/Xamarin.Google.Guava.FailureAccess.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/org.jetbrains.kotlinx.kotlinx-coroutines-guava/bin/Release/monoandroid12.0/Xamarin.Google.Guava.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/org.jetbrains.kotlinx.kotlinx-coroutines-guava/bin/Release/monoandroid12.0/Xamarin.KotlinX.Coroutines.Guava.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.lifecycle.lifecycle-extensions/bin/Release/monoandroid12.0/Xamarin.AndroidX.Lifecycle.Extensions.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.core.core-role/bin/Release/monoandroid12.0/Xamarin.AndroidX.Core.Role.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.percentlayout.percentlayout/bin/Release/monoandroid12.0/Xamarin.AndroidX.PercentLayout.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/org.jetbrains.kotlin.kotlin-reflect/bin/Release/monoandroid12.0/Xamarin.Kotlin.Reflect.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.emoji.emoji-appcompat/bin/Release/monoandroid12.0/Xamarin.AndroidX.Emoji.AppCompat.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.wear.wear/bin/Release/monoandroid12.0/Xamarin.AndroidX.Wear.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.compose.ui.ui-viewbinding/bin/Release/monoandroid12.0/Xamarin.AndroidX.Compose.UI.ViewBinding.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.navigation.navigation-ui-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.Navigation.UI.Ktx.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.core.core-splashscreen/bin/Release/monoandroid12.0/Xamarin.AndroidX.Core.SplashScreen.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.webkit.webkit/bin/Release/monoandroid12.0/Xamarin.AndroidX.WebKit.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.ads.ads-identifier-provider/bin/Release/monoandroid12.0/Xamarin.AndroidX.Ads.IdentifierProvider.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.car.app.app/bin/Release/monoandroid12.0/Xamarin.AndroidX.Car.App.App.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.slice.slice-builders/bin/Release/monoandroid12.0/Xamarin.AndroidX.Slice.Builders.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.recyclerview.recyclerview-selection/bin/Release/monoandroid12.0/Xamarin.AndroidX.RecyclerView.Selection.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.databinding.databinding-adapters/bin/Release/monoandroid12.0/Xamarin.AndroidX.DataBinding.DataBindingRuntime.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.databinding.databinding-adapters/bin/Release/monoandroid12.0/Xamarin.AndroidX.DataBinding.DataBindingAdapters.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.media2.media2-widget/bin/Release/monoandroid12.0/Xamarin.AndroidX.Media2.Widget.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/org.jetbrains.kotlinx.kotlinx-coroutines-jdk8/bin/Release/monoandroid12.0/Xamarin.KotlinX.Coroutines.Jdk8.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.camera.camera-camera2/bin/Release/monoandroid12.0/Xamarin.AndroidX.Camera.Camera2.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.emoji.emoji-bundled/bin/Release/monoandroid12.0/Xamarin.AndroidX.Emoji.Bundled.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.security.security-crypto/bin/Release/monoandroid12.0/Xamarin.AndroidX.Security.SecurityCrypto.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.work.work-runtime-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.Work.Work.Runtime.Ktx.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.wear.wear-phone-interactions/bin/Release/monoandroid12.0/Xamarin.AndroidX.Wear.PhoneInteractions.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.wear.wear-remote-interactions/bin/Release/monoandroid12.0/Xamarin.AndroidX.Wear.RemoteInteractions.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.Paging.Runtime.Ktx.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.window.window-java/bin/Release/monoandroid12.0/Xamarin.AndroidX.Window.WindowJava.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.window.window-extensions/bin/Release/monoandroid12.0/Xamarin.AndroidX.Window.WindowExtensions.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.compose.material.material-icons-extended/bin/Release/monoandroid12.0/Xamarin.AndroidX.Compose.Material.Icons.Extended.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-rxjava2-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.Paging.RxJava2.Ktx.dll  \
    --output ./output/AndroidX.Merged.dll  \
    --search "/Library/Frameworks/Xamarin.Android.framework/Versions/Current/lib/xamarin.android/xbuild-frameworks/MonoAndroid/v12.0"   \
    --search "/Library/Frameworks/Xamarin.Android.framework/Versions/Current/lib/xamarin.android/xbuild-frameworks/MonoAndroid/v1.0"   \
    --inject-assemblyname
```



```
androidx-migrator \
    --verbose \
    merge \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Lifecycle.Common.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Concurrent.Futures.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-rxjava2-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.Paging.RxJava2.Ktx.dll  \
    --output ./output/AndroidX.Merged.dll  \
    --search "/Library/Frameworks/Xamarin.Android.framework/Versions/Current/lib/xamarin.android/xbuild-frameworks/MonoAndroid/v12.0"   \
    --search "/Library/Frameworks/Xamarin.Android.framework/Versions/Current/lib/xamarin.android/xbuild-frameworks/MonoAndroid/v1.0"   \
    --inject-assemblyname
```

to build `Xamarin.AndroidX.Migration.sln`

*   https://github.com/xamarin/java.interop


```
dotnet cake -t=migration-externals
dotnet cake -t=generate-mapping
dotnet cake -t=migration-libs
dotnet cake -t=migration-nuget
```

will download

```
var JAVA_INTEROP_ZIP_URL = "https://github.com/xamarin/java.interop/archive/d16-7.zip";
```

branch:

https://github.com/xamarin/java.interop/tree/d16-7

```
var JAVA_INTEROP_ZIP_URL = "https://github.com/xamarin/java.interop/archive/d17-2.zip";
```



```
androidx-migrator \
    --verbose \
    merge \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Lifecycle.Common.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Concurrent.Futures.dll  \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-rxjava2-ktx/bin/Release/monoandroid12.0/Xamarin.AndroidX.Paging.RxJava2.Ktx.dll  \
    --output ./output/AndroidX.Merged.dll  \
    --search "/Library/Frameworks/Xamarin.Android.framework/Versions/Current/lib/xamarin.android/xbuild-frameworks/MonoAndroid/v12.0"   \
    --search "/Library/Frameworks/Xamarin.Android.framework/Versions/Current/lib/xamarin.android/xbuild-frameworks/MonoAndroid/v1.0"   \
    --inject-assemblyname
```

```
androidx-migrator \
    --verbose \
    merge \
    --assembly  /Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/generated/androidx.paging.paging-runtime/bin/Release/monoandroid12.0/Xamarin.AndroidX.Lifecycle.Common.dll  \
    --output ./output/AndroidX.Merged.dll  \
    --search "/Library/Frameworks/Xamarin.Android.framework/Versions/Current/lib/xamarin.android/xbuild-frameworks/MonoAndroid/v12.0"   \
    --search "/Library/Frameworks/Xamarin.Android.framework/Versions/Current/lib/xamarin.android/xbuild-frameworks/MonoAndroid/v1.0"   \
    --inject-assemblyname
```

```
/usr/local/share/dotnet/sdk/6.0.202/Microsoft.Common.CurrentVersion.targets(5,5): 
Error MSB3030: 
    Could not copy the file 
        "/Users/Shared/Projects/d/X/AX/mu-20220518-installreferrer/output/JetifierWrapper/jetifierWrapper-1.0.jar" 
    because it was not found. (MSB3030) (Xamarin.AndroidX.Migration.Tool)
```

```
mkdir output/JetifierWrapper/
cp \
    source/migration/JetifierWrapper/build/libs/jetifierWrapper-1.0.jar \
    output/JetifierWrapper/
```


*   https://github.com/gluck/il-repack/blob/master/ILRepack/ILRepack.cs#L66


https://github.com/xamarin/AndroidX/blob/mu-20220518-installreferrer/source/migration/Migration/AssemblyMerger.cs#L72

https://github.com/xamarin/java.interop/tree/d17-2