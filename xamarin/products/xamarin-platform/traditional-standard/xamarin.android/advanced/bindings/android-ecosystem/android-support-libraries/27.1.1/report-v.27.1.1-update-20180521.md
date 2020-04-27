# Report v.27.1.1 update 20180521

report-v.27.1.1-update-20180521.md

## Type Changed: Android.Arch.Lifecycle.LiveData.LifecycleBoundObserver

Modified base type: Java.Lang.Object Android.Arch.Lifecycle.LiveData+ObserverWrapper

Removed properties:

```
	public bool Active { get; set; }
	public int LastVersion { get; set; }
	public ILifecycleOwner Owner { get; set; }
```

### Check

Base class has changed!

From decompiled files:

```
./externals//arch-lifecycle/livedata-core/classes.jar.class.java.txt:
class android.arch.lifecycle.LiveData$LifecycleBoundObserver 
        extends android.arch.lifecycle.LiveData<T>.ObserverWrapper 
        implements android.arch.lifecycle.GenericLifecycleObserver
```

Luyten:

No properties! There are fields, but those are not exposed.

```
Compiled from "LiveData.java"
class android.arch.lifecycle.LiveData$LifecycleBoundObserver 
    extends android.arch.lifecycle.LiveData<T>.ObserverWrapper 
    implements android.arch.lifecycle.GenericLifecycleObserver 
{
  final android.arch.lifecycle.LifecycleOwner mOwner;
  final android.arch.lifecycle.LiveData this$0;
  android.arch.lifecycle.LiveData$LifecycleBoundObserver(android.arch.lifecycle.LifecycleOwner, android.arch.lifecycle.Observer<T>);
  boolean shouldBeActive();
  public void onStateChanged(android.arch.lifecycle.LifecycleOwner, android.arch.lifecycle.Lifecycle$Event);
  boolean isAttachedTo(android.arch.lifecycle.LifecycleOwner);
  void detachObserver();
}
```

## Removed Type Android.Arch.Lifecycle.LifecycleActivity

From decompiled files: Empty search results


## Removed Type Android.Arch.Lifecycle.LifecycleFragment

From decompiled files: Empty search results


## Type Changed: Android.Support.Annotation.IIntDef

Removed method:

```
	public virtual long[] Value ();
```

Added method:

```
	public virtual int[] Value ();
```

Seems like type changed!



## Type Changed: Android.Support.Annotation.IntDefAttribute

Modified properties:

```
	public /*long[]*/ int[] Value { get; set; }
```

From decompiled files:

```
Compiled from "IntDef.java"
public interface android.support.annotation.IntDef extends java.lang.annotation.Annotation 
{
  public abstract int[] value();
  public abstract boolean flag();
}
```

Interface return type changed so property Value changed


## Type Changed: Android.Support.Design.Widget.CoordinatorLayout

Removed properties:

```
	public virtual int NestedScrollAxes { get; set; }
	public override Android.Views.ViewStates Visibility { get; set; }
```

Luyten(./externals//support-core-ui/classes.jar):

REMOVED 

From IDE navigate to base class `ViewGroup`:

```
public abstract class ViewGroup : View, IViewManager, IJavaObject, IDisposable, IViewParent
{
		public virtual ScrollAxis NestedScrollAxes {
			[Register ("getNestedScrollAxes", "()I", "GetGetNestedScrollAxesHandler", ApiSince = 21)]
			get;
		}
}
```

REMARKS: 

*   `get` but not `set`???

```
[Register ("android/view/View", DoNotGenerateAcw = true, ApiSince = 1)]
public class View : Java.Lang.Object, Drawable.ICallback, IJavaObject, IDisposable, IAccessibilityEventSource, KeyEvent.ICallback
{
    public unsafe virtual ViewStates Visibility
    {
        [Register ("getVisibility", "()I", "GetGetVisibilityHandler")]
        get;
        [Register ("setVisibility", "(I)V", "GetSetVisibility_IHandler")]
        set;
    }
}
```


Added property:

```
	public Android.Support.V4.View.WindowInsetsCompat LastWindowInsets { get; }
```

Removed methods:

```
	public bool LayoutDependsOn (CoordinatorLayout parent, Android.Views.View child, Android.Views.View dependency);
	public bool OnDependentViewChanged (CoordinatorLayout parent, Android.Views.View child, Android.Views.View dependency);
	public void SetVisibility (Android.Views.ViewStates visibility);
```

REMARKS: 

*   search in decompiled files:

```
LayoutDependsOn             not found
OnDependentViewChanged      not found
SetVisibility               garbage found
```

From decompiled files:

```
./externals//support-core-ui/classes.jar.class.java.txt:
Compiled from "CoordinatorLayout.java"
public class android.support.design.widget.CoordinatorLayout 
    extends android.view.ViewGroup 
    implements android.support.v4.view.NestedScrollingParent2 
{
  static final java.lang.String TAG;
  static final java.lang.String WIDGET_PACKAGE_NAME;
  static final java.lang.Class<?>[] CONSTRUCTOR_PARAMS;
  static final java.lang.ThreadLocal<java.util.Map<java.lang.String, java.lang.reflect.Constructor<android.support.design.widget.CoordinatorLayout$Behavior>>> sConstructors;
  static final int EVENT_PRE_DRAW;
  static final int EVENT_NESTED_SCROLL;
  static final int EVENT_VIEW_REMOVED;
  static final java.util.Comparator<android.view.View> TOP_SORTED_CHILDREN_COMPARATOR;
  android.view.ViewGroup$OnHierarchyChangeListener mOnHierarchyChangeListener;
  public android.support.design.widget.CoordinatorLayout(android.content.Context);
  public android.support.design.widget.CoordinatorLayout(android.content.Context, android.util.AttributeSet);
  public android.support.design.widget.CoordinatorLayout(android.content.Context, android.util.AttributeSet, int);
  public void setOnHierarchyChangeListener(android.view.ViewGroup$OnHierarchyChangeListener);
  public void onAttachedToWindow();
  public void onDetachedFromWindow();
  public void setStatusBarBackground(android.graphics.drawable.Drawable);
  public android.graphics.drawable.Drawable getStatusBarBackground();
  protected void drawableStateChanged();
  protected boolean verifyDrawable(android.graphics.drawable.Drawable);
  public void setyy(int);
  public void setStatusBarBackgroundResource(int);
  public void setStatusBarBackgroundColor(int);
  final android.support.v4.view.WindowInsetsCompat setWindowInsets(android.support.v4.view.WindowInsetsCompat);
  public final android.support.v4.view.WindowInsetsCompat getLastWindowInsets();
  public boolean onInterceptTouchEvent(android.view.MotionEvent);
  public boolean onTouchEvent(android.view.MotionEvent);
  public void requestDisallowInterceptTouchEvent(boolean);
  static android.support.design.widget.CoordinatorLayout$Behavior parseBehavior(android.content.Context, android.util.AttributeSet, java.lang.String);
  android.support.design.widget.CoordinatorLayout$LayoutParams getResolvedLayoutParams(android.view.View);
  void getDescendantRect(android.view.View, android.graphics.Rect);
  protected int getSuggestedMinimumWidth();
  protected int getSuggestedMinimumHeight();
  public void onMeasureChild(android.view.View, int, int, int, int);
  protected void onMeasure(int, int);
  public void onLayoutChild(android.view.View, int);
  protected void onLayout(boolean, int, int, int, int);
  public void onDraw(android.graphics.Canvas);
  public void setFitsSystemWindows(boolean);
  void recordLastChildRect(android.view.View, android.graphics.Rect);
  void getLastChildRect(android.view.View, android.graphics.Rect);
  void getChildRect(android.view.View, boolean, android.graphics.Rect);
  void getDesiredAnchoredChildRect(android.view.View, int, android.graphics.Rect, android.graphics.Rect);
  protected boolean drawChild(android.graphics.Canvas, android.view.View, long);
  final void onChildViewsChanged(int);
  public void dispatchDependentViewsChanged(android.view.View);
  public java.util.List<android.view.View> getDependencies(android.view.View);
  public java.util.List<android.view.View> getDependents(android.view.View);
  final java.util.List<android.view.View> getDependencySortedChildren();
  void ensurePreDrawListener();
  void addPreDrawListener();
  void removePreDrawListener();
  void offsetChildToAnchor(android.view.View, int);
  public boolean isPointInChildBounds(android.view.View, int, int);
  public boolean doViewsOverlap(android.view.View, android.view.View);
  public android.support.design.widget.CoordinatorLayout$LayoutParams generateLayoutParams(android.util.AttributeSet);
  protected android.support.design.widget.CoordinatorLayout$LayoutParams generateLayoutParams(android.view.ViewGroup$LayoutParams);
  protected android.support.design.widget.CoordinatorLayout$LayoutParams generateDefaultLayoutParams();
  protected boolean checkLayoutParams(android.view.ViewGroup$LayoutParams);
  public boolean onStartNestedScroll(android.view.View, android.view.View, int);
  public boolean onStartNestedScroll(android.view.View, android.view.View, int, int);
  public void onNestedScrollAccepted(android.view.View, android.view.View, int);
  public void onNestedScrollAccepted(android.view.View, android.view.View, int, int);
  public void onStopNestedScroll(android.view.View);
  public void onStopNestedScroll(android.view.View, int);
  public void onNestedScroll(android.view.View, int, int, int, int);
  public void onNestedScroll(android.view.View, int, int, int, int, int);
  public void onNestedPreScroll(android.view.View, int, int, int[]);
  public void onNestedPreScroll(android.view.View, int, int, int[], int);
  public boolean onNestedFling(android.view.View, float, float, boolean);
  public boolean onNestedPreFling(android.view.View, float, float);
  public int getNestedScrollAxes();
  protected void onRestoreInstanceState(android.os.Parcelable);
  protected android.os.Parcelable onSaveInstanceState();
  public boolean requestChildRectangleOnScreen(android.view.View, android.graphics.Rect, boolean);
  protected android.view.ViewGroup$LayoutParams generateDefaultLayoutParams();
  protected android.view.ViewGroup$LayoutParams generateLayoutParams(android.view.ViewGroup$LayoutParams);
  public android.view.ViewGroup$LayoutParams generateLayoutParams(android.util.AttributeSet);
  static {};
}
```


## Type Changed: Android.Support.Design.Widget.CoordinatorLayout.Behavior

Removed method:

```
	public virtual bool OnMeasureChild (CoordinatorLayout parent, Android.Views.View child, int parentWidthMeasureSpec, int widthUsed, int parentHeightMeasureSpec, int heightUsed);
```

Added method:

```
	public virtual bool OnMeasureChild (CoordinatorLayout parent, Java.Lang.Object child, int parentWidthMeasureSpec, int widthUsed, int parentHeightMeasureSpec, int heightUsed);
```

REMARKS: 

*   parameter 2 type changed

## Type Changed: Android.Support.Design.Widget.HeaderScrollingViewBehavior

Removed method:

```
	public override bool OnMeasureChild (CoordinatorLayout parent, Android.Views.View child, int parentWidthMeasureSpec, int widthUsed, int parentHeightMeasureSpec, int heightUsed);
```

```
./externals//design/classes.jar.class.java.txt
Compiled from "HeaderScrollingViewBehavior.java"
abstract class android.support.design.widget.HeaderScrollingViewBehavior extends android.support.design.widget.ViewOffsetBehavior<android.view.View> {
  final android.graphics.Rect mTempRect1;
  final android.graphics.Rect mTempRect2;
  public android.support.design.widget.HeaderScrollingViewBehavior();
  public android.support.design.widget.HeaderScrollingViewBehavior(android.content.Context, android.util.AttributeSet);
  public boolean onMeasureChild(android.support.design.widget.CoordinatorLayout, android.view.View, int, int, int, int);
  protected void layoutChild(android.support.design.widget.CoordinatorLayout, android.view.View, int);
  float getOverlapRatioForOffset(android.view.View);
  final int getOverlapPixelsForOffset(android.view.View);
  abstract android.view.View findFirstDependency(java.util.List<android.view.View>);
  int getScrollRange(android.view.View);
  final int getVerticalLayoutGap();
  public final void setOverlayTop(int);
  public final int getOverlayTop();
}
```


## Type Changed: Android.Support.V4.App.FragmentActivity

Removed method:

```
	public override void OnRequestPermissionsResult (int requestCode, string[] permissions, Android.Content.PM.Permission[] grantResults);
```


```
./externals//support-fragment/classes.jar.class.java.txt
Compiled from "FragmentActivity.java"
public class android.support.v4.app.FragmentActivity 
    extends android.support.v4.app.BaseFragmentActivityApi16 
    implements 
        android.arch.lifecycle.ViewModelStoreOwner,
        android.support.v4.app.ActivityCompat$OnRequestPermissionsResultCallback,
        android.support.v4.app.ActivityCompat$RequestPermissionsRequestCodeValidator 
{
    public void onRequestPermissionsResult(int, java.lang.String[], int[]);
}
```

REMARKS:

*   method is virtual in base class 

## Type Changed: Android.Support.V13.App.ActivityCompat

Removed method:

```
	public static Android.Support.V13.View.DragAndDropPermissionsCompat RequestDragAndDropPermissions (Android.App.Activity activity, Android.Views.DragEvent dragEvent);
```

From decompiled files:

```
./externals//support-v13/classes.jar.class.java.txt
Compiled from "ActivityCompat.java"
public class android.support.v13.app.ActivityCompat 
    extends android.support.v4.app.ActivityCompat 
{
  protected android.support.v13.app.ActivityCompat();
}
```

Checking base class:

```
Compiled from "ActivityCompat.java"
public class android.support.v4.app.ActivityCompat 
    extends android.support.v4.content.ContextCompat 
{
  protected android.support.v4.app.ActivityCompat();
  public static void setPermissionCompatDelegate(android.support.v4.app.ActivityCompat$PermissionCompatDelegate);
  public static android.support.v4.app.ActivityCompat$PermissionCompatDelegate getPermissionCompatDelegate();
  public static boolean invalidateOptionsMenu(android.app.Activity);
  public static void startActivityForResult(android.app.Activity, android.content.Intent, int, android.os.Bundle);
  public static void startIntentSenderForResult(android.app.Activity, android.content.IntentSender, int, android.content.Intent, int, int, int, android.os.Bundle) throws android.content.IntentSender$SendIntentException;
  public static void finishAffinity(android.app.Activity);
  public static void finishAfterTransition(android.app.Activity);
  public static android.net.Uri getReferrer(android.app.Activity);
  public static <T extends android.view.View> T requireViewById(android.app.Activity, int);
  public static void setEnterSharedElementCallback(android.app.Activity, android.support.v4.app.SharedElementCallback);
  public static void setExitSharedElementCallback(android.app.Activity, android.support.v4.app.SharedElementCallback);
  public static void postponeEnterTransition(android.app.Activity);
  public static void startPostponedEnterTransition(android.app.Activity);
  public static void requestPermissions(android.app.Activity, java.lang.String[], int);
  public static boolean shouldShowRequestPermissionRationale(android.app.Activity, java.lang.String);
  public static android.support.v13.view.DragAndDropPermissionsCompat requestDragAndDropPermissions(android.app.Activity, android.view.DragEvent);
}
```

REMARKS:

*   method moved to base class!

## 

```
Compiled from "MultiSelectListPreference.java"
public class android.support.v14.preference.MultiSelectListPreference 
    extends android.support.v7.preference.internal.AbstractMultiSelectListPreference 
{
  public android.support.v14.preference.MultiSelectListPreference(android.content.Context, android.util.AttributeSet, int, int);
  public android.support.v14.preference.MultiSelectListPreference(android.content.Context, android.util.AttributeSet, int);
  public android.support.v14.preference.MultiSelectListPreference(android.content.Context, android.util.AttributeSet);
  public android.support.v14.preference.MultiSelectListPreference(android.content.Context);
  public void setEntries(java.lang.CharSequence[]);
  public void setEntries(int);
  public java.lang.CharSequence[] getEntries();
  public void setEntryValues(java.lang.CharSequence[]);
  public void setEntryValues(int);
  public java.lang.CharSequence[] getEntryValues();
  public void setValues(java.util.Set<java.lang.String>);
  public java.util.Set<java.lang.String> getValues();
  public int findIndexOfValue(java.lang.String);
  protected boolean[] getSelectedItems();
  protected java.lang.Object onGetDefaultValue(android.content.res.TypedArray, int);
  protected void onSetInitialValue(boolean, java.lang.Object);
  protected android.os.Parcelable onSaveInstanceState();
  protected void onRestoreInstanceState(android.os.Parcelable);
}
```

## Removed Type Android.Support.V4.Graphics.Drawable.IDrawableWrapper

### New Type Android.Support.V4.Graphics.Drawable.IWrappedDrawable

REMARKS:

*   interface renamed


## Type Changed: Android.Support.Media.TV.TvContractCompat.WatchNextPrograms


*   Removed Type Android.Support.Media.TV.TvContractCompat.IWatchNextType

*   Removed Type Android.Support.Media.TV.TvContractCompat.IPreviewProgramColumnsAspectRatio

*   Removed Type Android.Support.Media.TV.TvContractCompat.IPreviewProgramColumnsAvailability

*   Removed Type Android.Support.Media.TV.TvContractCompat.IPreviewProgramColumnsInteractionType

*   Removed Type Android.Support.Media.TV.TvContractCompat.IPreviewProgramColumnsType

*   Removed Type Android.Support.Media.TV.TvContractCompat.IProgramColumnsReviewRatingStyle




## Type Changed: Android.Support.V4.Content.FileProvider.SimplePathStrategy

Removed constructor:

	public FileProvider (string authority);

Removed method:

	public virtual void AddRoot (string name, Java.IO.File root);

REMARKS:

*   package private ctor (no access modifier)

```
Compiled from "FileProvider.java"
class android.support.v4.content.FileProvider$SimplePathStrategy 
    implements android.support.v4.content.FileProvider$PathStrategy 
{
  android.support.v4.content.FileProvider$SimplePathStrategy(java.lang.String);
  void addRoot(java.lang.String, java.io.File);
}
```

## Removed Type Android.Support.V4.Graphics.Drawable.IDrawableWrapper

New Type Android.Support.V4.Graphics.Drawable.IWrappedDrawable

REMARKS:

*   renamed interface


## Type Changed: Android.Support.V4.View.GestureDetectorCompat.GestureDetectorCompatImplBase


Removed constructor:

```
	public GestureDetectorCompat (Android.Content.Context context, Android.Views.GestureDetector.IOnGestureListener listener, Android.OS.Handler handler);
```

REMARKS:

*   package private ctor (no access modifier)



## Type Changed: Android.Support.V7.View.ContextThemeWrapper

Removed property:

```
	public virtual Android.Content.Res.Configuration OverrideConfiguration { get; }
```

REMARKS:

*   not found!


## Type Changed: Android.Support.V7.Widget.DropDownListView

Modified base type: Android.Support.V7.Widget.ListViewCompat Android.Widget.ListView

Removed constructor:

```
	public DropDownListView (Android.Content.Context context, bool hijackFocus);
```
```
class android.support.v7.widget.DropDownListView 
    extends android.widget.ListView 
{
  public static final int INVALID_POSITION;
  public static final int NO_POSITION;
  android.support.v7.widget.DropDownListView(android.content.Context, boolean);
}
```

REMARKS:

*   package private ctor (no access modifier)




## Type Changed: Android.Support.V7.Widget.LinearLayoutManager.AnchorInfo

Removed methods:

```
	public virtual void AssignFromView (Android.Views.View child);
	public virtual void AssignFromViewAndKeepVisibleRect (Android.Views.View child);
```

Added methods:

```
	public virtual void AssignFromView (Android.Views.View child, int position);
	public virtual void AssignFromViewAndKeepVisibleRect (Android.Views.View child, int position);
```

REMARKS:

*   API changed (function/method signature)

```
Compiled from "LinearLayoutManager.java"
class android.support.v7.widget.LinearLayoutManager$AnchorInfo
{
  public void assignFromViewAndKeepVisibleRect(android.view.View, int);
  public void assignFromView(android.view.View, int);
}
```



## Removed Type Android.Support.V7.Widget.ListViewCompat


Found only in  `support-compat`

```
./externals//support-compat/classes.jar.class.java.txt:
Compiled from "ListViewCompat.java"
public final class android.support.v4.widget.ListViewCompat 
{
}
```


## Removed Namespace Android.Support.Text.Emoji.Flatbuffer

Removed Type Android.Support.Text.Emoji.Flatbuffer.Constants

Removed Type Android.Support.Text.Emoji.Flatbuffer.FlatBufferBuilder

Removed Type Android.Support.Text.Emoji.Flatbuffer.MetadataItem

Removed Type Android.Support.Text.Emoji.Flatbuffer.MetadataList

Removed Type Android.Support.Text.Emoji.Flatbuffer.Struct

Removed Type Android.Support.Text.Emoji.Flatbuffer.Table

REMARKS:

*   moved to AndroidX

