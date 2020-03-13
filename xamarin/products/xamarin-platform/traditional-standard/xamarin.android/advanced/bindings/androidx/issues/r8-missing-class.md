# R8 Missing class: X 

r8-missing-class.md

*   https://r8-docs.preemptive.com/



```
R8 Missing class: X Error: Compilation can't be completed because some library classes are missing.
```

Class X is one of the following:

```
X = new string[] 
{
    "com.google.common.util.concurrent.FutureCallback", 
    "java.lang.java.lang.ClassValue", 
};
```

Related PR (updating Google.Guava): https://github.com/xamarin/XamarinComponents/pull/809

Failing commandline (edited a bit):

```
/Users/Shared/Projects/d/system-installed/macosx/jdk/microsoft_dist_openjdk_8.0.25/bin/java \
    -Xmx1G \
    -classpath /Library/Frameworks/Xamarin.Android.framework/Libraries/xbuild/Xamarin/Android/r8.jar \
    com.android.tools.r8.R8 \
    --release \
    --min-api 21 \
    --output obj/Release/android/bin \
    --lib \
    /Users/Shared/Projects/d/system-installed/macosx/sdk/platforms/android-29/android.jar \
    obj/Release/android/bin/classes.zip \
    /Library/Frameworks/Mono.framework/External/xbuild-frameworks/MonoAndroid/v9.0/mono.android.jar \
    /Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/java_runtime.jar \
    /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.google.guava.listenablefuture/1.0.0.2/buildTransitive/monoandroid50/guava-listenablefuture.jar \
    /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.google.guava.failureaccess/1.0.1.2/buildTransitive/monoandroid50/guava-failureaccess.jar \
    /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.annotation/1.0.2/buildTransitive/monoandroid90/../../jar/androidx.annotation.annotation.jar \
    /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.collection/1.0.0/buildTransitive/monoandroid90/../../jar/androidx.collection.collection.jar \
    /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.lifecycle.common/2.0.0/buildTransitive/monoandroid90/../../jar/androidx.lifecycle.lifecycle-common.jar \
    /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.arch.core.common/2.0.1/buildTransitive/monoandroid90/../../jar/androidx.arch.core.core-common.jar \
    /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.room.common/2.0.0/buildTransitive/monoandroid90/../../jar/androidx.room.room-common.jar /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.paging.common/2.0.0/buildTransitive/monoandroid90/../../jar/androidx.paging.paging-common.jar \
    /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.constraintlayout.solver/1.1.3/buildTransitive/monoandroid90/../../jar/androidx.constraintlayout.constraintlayout-solver.jar \
    obj/Release/lp/135/jl/classes.jar \
    obj/Release/lp/95/jl/classes.jar \
    obj/Release/lp/132/jl/classes.jar \
    obj/Release/lp/92/jl/classes.jar \
    obj/Release/lp/104/jl/classes.jar \
    obj/Release/lp/103/jl/classes.jar \
    obj/Release/lp/150/jl/classes.jar \
    obj/Release/lp/102/jl/classes.jar \
    obj/Release/lp/105/jl/classes.jar \
    obj/Release/lp/133/jl/classes.jar \
    obj/Release/lp/93/jl/classes.jar \
    obj/Release/lp/134/jl/classes.jar \
    obj/Release/lp/94/jl/classes.jar \
    obj/Release/lp/145/jl/classes.jar \
    obj/Release/lp/142/jl/classes.jar \
    obj/Release/lp/129/jl/classes.jar \
    obj/Release/lp/89/jl/classes.jar \
    obj/Release/lp/116/jl/classes.jar \
    obj/Release/lp/111/jl/classes.jar \
    obj/Release/lp/118/jl/classes.jar \
    obj/Release/lp/87/jl/classes.jar \
    obj/Release/lp/127/jl/classes.jar \
    obj/Release/lp/80/jl/classes.jar \
    obj/Release/lp/120/jl/classes.jar \
    obj/Release/lp/143/jl/classes.jar \
    obj/Release/lp/144/jl/classes.jar \
    obj/Release/lp/81/jl/classes.jar \
    obj/Release/lp/121/jl/classes.jar \
    obj/Release/lp/119/jl/classes.jar \
    obj/Release/lp/86/jl/classes.jar \
    obj/Release/lp/126/jl/classes.jar \
    obj/Release/lp/110/jl/classes.jar \
    obj/Release/lp/128/jl/classes.jar \
    obj/Release/lp/88/jl/classes.jar \
    obj/Release/lp/117/jl/classes.jar \
    obj/Release/lp/131/jl/classes.jar \
    obj/Release/lp/91/jl/classes.jar \
    obj/Release/lp/96/jl/classes.jar \
    obj/Release/lp/109/jl/classes.jar \
    obj/Release/lp/100/jl/classes.jar \
    obj/Release/lp/107/jl/classes.jar \
    obj/Release/lp/98/jl/classes.jar \
    obj/Release/lp/106/jl/classes.jar \
    obj/Release/lp/99/jl/classes.jar \
    obj/Release/lp/139/jl/classes.jar \
    obj/Release/lp/101/jl/classes.jar \
    obj/Release/lp/137/jl/classes.jar \
    obj/Release/lp/97/jl/classes.jar \
    obj/Release/lp/108/jl/classes.jar \
    obj/Release/lp/130/jl/classes.jar obj/Release/lp/90/jl/classes.jar \
    obj/Release/lp/112/jl/classes.jar obj/Release/lp/115/jl/classes.jar \
    obj/Release/lp/83/jl/classes.jar obj/Release/lp/123/jl/classes.jar \
    obj/Release/lp/84/jl/classes.jar obj/Release/lp/124/jl/classes.jar \
    obj/Release/lp/148/jl/classes.jar obj/Release/lp/141/jl/classes.jar \
    obj/Release/lp/146/jl/classes.jar obj/Release/lp/85/jl/classes.jar \
    obj/Release/lp/125/jl/classes.jar obj/Release/lp/82/jl/classes.jar \
    obj/Release/lp/122/jl/classes.jar obj/Release/lp/114/jl/classes.jar \
    obj/Release/lp/113/jl/classes.jar obj/Release/lp/147/jl/classes.jar \
    obj/Release/lp/140/jl/classes.jar obj/Release/lp/149/jl/classes.jar \
    obj/Release/lp/144/jl/libs/noto-emoji-compat-java.jar \
    --pg-conf /Users/Shared/Projects/d/system-installed/macosx/sdk//tools/proguard/proguard-android.txt \
    --pg-conf obj/Release/proguard/proguard_xamarin.cfg \
    --pg-conf obj/Release/proguard/proguard_project_references.cfg \
    --pg-conf obj/Release/proguard/proguard_project_primary.cfg \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.versionedparcelable/1.0.0/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.lifecycle.runtime/2.0.0/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.core/1.0.2/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.lifecycle.viewmodel/2.0.0/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.coordinatorlayout/1.0.0/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.vectordrawable.animated/1.0.0/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.transition/1.0.1/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.recyclerview/1.0.0/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.appcompat/1.0.2/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.google.android.material/1.0.0/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.room.runtime/2.0.0/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.work.runtime/2.0.0/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.webkit/1.0.0/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.preference/1.0.0/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.navigation.ui/2.0.0/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.media/1.0.1/buildTransitive/monoandroid90/../../proguard/proguard.txt 
```

`guava.jar` is missing from the commandline. 

`./output/AllPackages.targets` contains `Xamarin.Google.Guava`:

```
<?xml version="1.0" encoding="utf-8"?>
<Project xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
  <ItemGroup>
    <PackageReference Include="Xamarin.AndroidX.Legacy.Preference.V14" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.LiveData" Version="2.0.0" />
    <PackageReference Include="Xamarin.AndroidX.ContentPager" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Navigation.Fragment" Version="2.0.0" />
    <PackageReference Include="Xamarin.Google.Android.Material" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Transition" Version="1.0.1" />
    <PackageReference Include="Xamarin.AndroidX.SlidingPaneLayout" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.AppCompat" Version="1.0.2" />
    <PackageReference Include="Xamarin.AndroidX.ConstraintLayout" Version="1.1.3" />
    <PackageReference Include="Xamarin.AndroidX.MediaRouter" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.Runtime" Version="2.0.0" />
    <PackageReference Include="Xamarin.AndroidX.ConstraintLayout.Solver" Version="1.1.3" />
    <PackageReference Include="Xamarin.AndroidX.Leanback" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Palette" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Interpolator" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Recommendation" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Emoji" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.PercentLayout" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Arch.Core.Runtime" Version="2.0.1" />
    <PackageReference Include="Xamarin.AndroidX.RecyclerView.Selection" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Navigation.Common" Version="2.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Slice.Builders" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.GridLayout" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.LocalBroadcastManager" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.VectorDrawable.Animated" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.ViewPager" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Browser" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Print" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Room.Runtime" Version="2.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Fragment" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.HeifWriter" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Legacy.Support.Core.Utils" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.Extensions" Version="2.0.0" />
    <PackageReference Include="Xamarin.AndroidX.RecyclerView" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Sqlite.Framework" Version="2.1.0" />
    <PackageReference Include="Xamarin.AndroidX.Annotation" Version="1.0.2" />
    <PackageReference Include="Xamarin.AndroidX.DynamicAnimation" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.CoordinatorLayout" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Paging.Common" Version="2.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.Service" Version="2.0.0" />
    <PackageReference Include="Xamarin.AndroidX.DocumentFile" Version="1.0.1" />
    <PackageReference Include="Xamarin.AndroidX.Paging.Runtime" Version="2.0.0" />
    <PackageReference Include="Xamarin.AndroidX.AsyncLayoutInflater" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Navigation.UI" Version="2.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Legacy.Support.V4" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.ExifInterface" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.Common" Version="2.0.0" />
    <PackageReference Include="Xamarin.AndroidX.VersionedParcelable" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.VectorDrawable" Version="1.0.1" />
    <PackageReference Include="Xamarin.AndroidX.Sqlite" Version="2.1.0" />
    <PackageReference Include="Xamarin.AndroidX.Preference" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.LiveData.Core" Version="2.0.0" />
    <PackageReference Include="Xamarin.AndroidX.DrawerLayout" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Media" Version="1.0.1" />
    <PackageReference Include="Xamarin.AndroidX.Navigation.Runtime" Version="2.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Emoji.Bundled" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.MultiDex" Version="2.0.1" />
    <PackageReference Include="Xamarin.AndroidX.Collection" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Slice.View" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Arch.Core.Common" Version="2.0.1" />
    <PackageReference Include="Xamarin.AndroidX.Slice.Core" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Room.Guava" Version="2.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.ViewModel" Version="2.0.0" />
    <PackageReference Include="Xamarin.AndroidX.CustomView" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Emoji.AppCompat" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.SwipeRefreshLayout" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Core" Version="1.0.2" />
    <PackageReference Include="Xamarin.AndroidX.Leanback.Preference" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Room.Common" Version="2.0.0" />
    <PackageReference Include="Xamarin.AndroidX.CursorAdapter" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.WebKit" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.TvProvider" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.Process" Version="2.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Loader" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Legacy.Support.V13" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.CardView" Version="1.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Work.Runtime" Version="2.0.0" />
    <PackageReference Include="Xamarin.AndroidX.Legacy.Support.Core.UI" Version="1.0.0" />
    <PackageReference Include="Xamarin.Google.Guava" Version="27.1.0.3" />
    <PackageReference Include="Xamarin.Google.Guava.FailureAccess" Version="1.0.1.2" />
    <PackageReference Include="Xamarin.Google.Guava.ListenableFuture" Version="1.0.0.2" />
  </ItemGroup>
</Project>
```

Adding it:

```
    /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.google.guava/27.1.0.3/buildTransitive/monoandroid50/guava.jar \
```

New command line command:

```
/Users/Shared/Projects/d/system-installed/macosx/jdk/microsoft_dist_openjdk_8.0.25/bin/java \
    -Xmx1G \
    -classpath /Library/Frameworks/Xamarin.Android.framework/Libraries/xbuild/Xamarin/Android/r8.jar \
    com.android.tools.r8.R8 \
    --release \
    --min-api 21 \
    --output obj/Release/android/bin \
    --lib \
    /Users/Shared/Projects/d/system-installed/macosx/sdk/platforms/android-29/android.jar \
    obj/Release/android/bin/classes.zip \
    /Library/Frameworks/Mono.framework/External/xbuild-frameworks/MonoAndroid/v9.0/mono.android.jar \
    /Library/Frameworks/Mono.framework/External/xbuild/Xamarin/Android/java_runtime.jar \
    /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.google.guava/27.1.0.3/buildTransitive/monoandroid50/guava.jar \
    /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.google.guava.listenablefuture/1.0.0.2/buildTransitive/monoandroid50/guava-listenablefuture.jar \
    /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.google.guava.failureaccess/1.0.1.2/buildTransitive/monoandroid50/guava-failureaccess.jar \
    /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.annotation/1.0.2/buildTransitive/monoandroid90/../../jar/androidx.annotation.annotation.jar \
    /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.collection/1.0.0/buildTransitive/monoandroid90/../../jar/androidx.collection.collection.jar \
    /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.lifecycle.common/2.0.0/buildTransitive/monoandroid90/../../jar/androidx.lifecycle.lifecycle-common.jar \
    /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.arch.core.common/2.0.1/buildTransitive/monoandroid90/../../jar/androidx.arch.core.core-common.jar \
    /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.room.common/2.0.0/buildTransitive/monoandroid90/../../jar/androidx.room.room-common.jar /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.paging.common/2.0.0/buildTransitive/monoandroid90/../../jar/androidx.paging.paging-common.jar \
    /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.constraintlayout.solver/1.1.3/buildTransitive/monoandroid90/../../jar/androidx.constraintlayout.constraintlayout-solver.jar \
    obj/Release/lp/135/jl/classes.jar \
    obj/Release/lp/95/jl/classes.jar \
    obj/Release/lp/132/jl/classes.jar \
    obj/Release/lp/92/jl/classes.jar \
    obj/Release/lp/104/jl/classes.jar \
    obj/Release/lp/103/jl/classes.jar \
    obj/Release/lp/150/jl/classes.jar \
    obj/Release/lp/102/jl/classes.jar \
    obj/Release/lp/105/jl/classes.jar \
    obj/Release/lp/133/jl/classes.jar \
    obj/Release/lp/93/jl/classes.jar \
    obj/Release/lp/134/jl/classes.jar \
    obj/Release/lp/94/jl/classes.jar \
    obj/Release/lp/145/jl/classes.jar \
    obj/Release/lp/142/jl/classes.jar \
    obj/Release/lp/129/jl/classes.jar \
    obj/Release/lp/89/jl/classes.jar \
    obj/Release/lp/116/jl/classes.jar \
    obj/Release/lp/111/jl/classes.jar \
    obj/Release/lp/118/jl/classes.jar \
    obj/Release/lp/87/jl/classes.jar \
    obj/Release/lp/127/jl/classes.jar \
    obj/Release/lp/80/jl/classes.jar \
    obj/Release/lp/120/jl/classes.jar \
    obj/Release/lp/143/jl/classes.jar \
    obj/Release/lp/144/jl/classes.jar \
    obj/Release/lp/81/jl/classes.jar \
    obj/Release/lp/121/jl/classes.jar \
    obj/Release/lp/119/jl/classes.jar \
    obj/Release/lp/86/jl/classes.jar \
    obj/Release/lp/126/jl/classes.jar \
    obj/Release/lp/110/jl/classes.jar \
    obj/Release/lp/128/jl/classes.jar \
    obj/Release/lp/88/jl/classes.jar \
    obj/Release/lp/117/jl/classes.jar \
    obj/Release/lp/131/jl/classes.jar \
    obj/Release/lp/91/jl/classes.jar \
    obj/Release/lp/96/jl/classes.jar \
    obj/Release/lp/109/jl/classes.jar \
    obj/Release/lp/100/jl/classes.jar \
    obj/Release/lp/107/jl/classes.jar \
    obj/Release/lp/98/jl/classes.jar \
    obj/Release/lp/106/jl/classes.jar \
    obj/Release/lp/99/jl/classes.jar \
    obj/Release/lp/139/jl/classes.jar \
    obj/Release/lp/101/jl/classes.jar \
    obj/Release/lp/137/jl/classes.jar \
    obj/Release/lp/97/jl/classes.jar \
    obj/Release/lp/108/jl/classes.jar \
    obj/Release/lp/130/jl/classes.jar obj/Release/lp/90/jl/classes.jar \
    obj/Release/lp/112/jl/classes.jar obj/Release/lp/115/jl/classes.jar \
    obj/Release/lp/83/jl/classes.jar obj/Release/lp/123/jl/classes.jar \
    obj/Release/lp/84/jl/classes.jar obj/Release/lp/124/jl/classes.jar \
    obj/Release/lp/148/jl/classes.jar obj/Release/lp/141/jl/classes.jar \
    obj/Release/lp/146/jl/classes.jar obj/Release/lp/85/jl/classes.jar \
    obj/Release/lp/125/jl/classes.jar obj/Release/lp/82/jl/classes.jar \
    obj/Release/lp/122/jl/classes.jar obj/Release/lp/114/jl/classes.jar \
    obj/Release/lp/113/jl/classes.jar obj/Release/lp/147/jl/classes.jar \
    obj/Release/lp/140/jl/classes.jar obj/Release/lp/149/jl/classes.jar \
    obj/Release/lp/144/jl/libs/noto-emoji-compat-java.jar \
    --pg-conf /Users/Shared/Projects/d/system-installed/macosx/sdk//tools/proguard/proguard-android.txt \
    --pg-conf obj/Release/proguard/proguard_xamarin.cfg \
    --pg-conf obj/Release/proguard/proguard_project_references.cfg \
    --pg-conf obj/Release/proguard/proguard_project_primary.cfg \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.versionedparcelable/1.0.0/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.lifecycle.runtime/2.0.0/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.core/1.0.2/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.lifecycle.viewmodel/2.0.0/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.coordinatorlayout/1.0.0/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.vectordrawable.animated/1.0.0/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.transition/1.0.1/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.recyclerview/1.0.0/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.appcompat/1.0.2/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.google.android.material/1.0.0/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.room.runtime/2.0.0/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.work.runtime/2.0.0/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.webkit/1.0.0/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.preference/1.0.0/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.navigation.ui/2.0.0/buildTransitive/monoandroid90/../../proguard/proguard.txt \
    --pg-conf /Users/Shared/Projects/d/X/AndroidX_master/samples/packages/xamarin.androidx.media/1.0.1/buildTransitive/monoandroid90/../../proguard/proguard.txt 
```

```
Warning: Missing class: java.lang.ClassValue
Error: Compilation can't be completed because some library classes are missing.
Compilation failed
```