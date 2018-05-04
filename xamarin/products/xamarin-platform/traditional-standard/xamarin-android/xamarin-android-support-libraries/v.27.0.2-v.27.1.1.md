

Here’s the changes:

```
support-fragment dependencies changed!
-> Added: livedata-core
-> Added: viewmodel
customtabs dependencies changed!
-> Added: support-core-ui
support-core-ui dependencies changed!
-> Added: support-core-utils
wear dependencies changed!
-> Removed: percent
-> Added: constraint-layout
```

WTF they added constraint-layout to wear?!  you can just pull in the nuget 
package for that

doesn’t look too bad though otherwise.. you’ll need to add new bindings for 
livedata-core and viewmodel
so in the process i would just bump all the android.arch.* to 1.1.1

```
Removed Type Android.Arch.Lifecycle.LiveData.LifecycleBoundObserver
Removed Type Android.Arch.Lifecycle.BuildConfig
Removed Type Android.Arch.Lifecycle.ComputableLiveData
Removed Type Android.Arch.Lifecycle.LifecycleActivity
Removed Type Android.Arch.Lifecycle.LifecycleFragment
Removed Type Android.Arch.Lifecycle.MediatorLiveData
Removed Type Android.Arch.Lifecycle.Transformations

Removed Type Android.Support.Content.BuildConfig
Removed Type Android.Support.CustomTabs.BuildConfig
Removed Type Android.Support.Design.Widget.BottomSheetDialogFragment
Removed Type Android.Support.Graphics.Drawable.BuildConfig
Removed Type Android.Support.Media.TV.TvContractCompat.IWatchNextType
Removed Type Android.Support.Media.TRemoved Type Android.Support.Media.TV.BuildConfig
Removed Type Android.Support.Percent.BuildConfig

Removed Type Android.Support.Media.TV.TvContractCompat.IWatchNextType
Removed Type Android.Support.Media.TV.TvContractCompat.IPreviewProgramColumnsAspectRatio
Removed Type Android.Support.Media.TV.TvContractCompat.IPreviewProgramColumnsAvailability
Removed Type Android.Support.Media.TV.TvContractCompat.IPreviewProgramColumnsInteractionType
Removed Type Android.Support.Media.TV.TvContractCompat.IPreviewProgramColumnsType
Removed Type Android.Support.Media.TV.TvContractCompat.IProgramColumnsReviewRatingStyle

Removed Type Android.Support.Text.Emoji.BuildConfig
Removed Type Android.Support.Text.Emoji.Bundled.BuildConfig
Removed Type Android.Support.Transitions.BuildConfig

Removed Type Android.Support.V17.Leanback.App.BaseRowSupportFragment
Removed Type Android.Support.V17.Leanback.App.BaseSupportFragment
Removed Type Android.Support.V17.Leanback.App.BrandedSupportFragment
Removed Type Android.Support.V17.Leanback.App.BrowseSupportFragment
Removed Type Android.Support.V17.Leanback.App.DetailsSupportFragment
Removed Type Android.Support.V17.Leanback.App.ErrorSupportFragment
Removed Type Android.Support.V17.Leanback.App.GuidedStepSupportFragment
Removed Type Android.Support.V17.Leanback.App.HeadersSupportFragment
Removed Type Android.Support.V17.Leanback.App.OnboardingSupportFragment
Removed Type Android.Support.V17.Leanback.App.PlaybackSupportFragment
Removed Type Android.Support.V17.Leanback.App.RowsSupportFragment
Removed Type Android.Support.V17.Leanback.App.SearchSupportFragment
Removed Type Android.Support.V17.Leanback.App.VerticalGridSupportFragment
Removed Type Android.Support.V17.Leanback.App.VideoSupportFragment
Removed Type Android.Support.V17.Preferences.Leanback.BuildConfig
Removed Type Android.Support.V4.App.RemoteInputCompatBase
Removed Type Android.Support.V4.App.RemoteInputCompatBase_RemoteInputIFactoryExtensions
Removed Type Android.Support.V4.Graphics.Drawable.IDrawableWrapper

Removed Type Android.Support.V7.App.AppCompatActivity
Removed Type Android.Support.V7.App.AppCompatDialogFragment
Removed Type Android.Support.V7.App.MediaRouteChooserDialogFragment
Removed Type Android.Support.V7.App.MediaRouteControllerDialogFragment
Removed Type Android.Support.V7.App.MediaRouteDiscoveryFragment

Removed Type Android.Support.V7.Preferences.BuildConfig
Removed Type Android.Support.V7.Preferences.EditTextPreferenceDialogFragmentCompat
Removed Type Android.Support.V7.Preferences.ListPreferenceDialogFragmentCompat
Removed Type Android.Support.V7.Preferences.MultiSelectListPreferenceDialogFragmentCompat
Removed Type Android.Support.V7.Preferences.PreferenceDialogFragmentCompat
Removed Type Android.Support.V7.Preferences.PreferenceFragmentCompat
Removed Type Android.Support.V7.Widget.ListViewCompat
Removed Type Android.Arch.Core.BuildConfig
Removed Type Android.Arch.Lifecycle.Extensions.BuildConfig
Removed Type Android.Support.Compat.BuildConfig
Removed Type Android.Support.CoreUI.BuildConfig
Removed Type Android.Support.CoreUtils.BuildConfig
Removed Type Android.Support.Design.BuildConfig
Removed Type Android.Support.DynamicAnimation.BuildConfig
Removed Type Android.Support.ExifInterface.BuildConfig
Removed Type Android.Support.Fragment.BuildConfig
Removed Type Android.Support.Graphics.Drawable.Animated.BuildConfig
Removed Type Android.Support.MediaCompat.BuildConfig
Removed Type Android.Support.Recommendation.BuildConfig
Removed Type Android.Support.Text.Emoji.Appcompat.BuildConfig
Removed Type Android.Support.Text.Emoji.Flatbuffer.Constants
Removed Type Android.Support.Text.Emoji.Flatbuffer.FlatBufferBuilder
Removed Type Android.Support.Text.Emoji.Flatbuffer.MetadataItem
Removed Type Android.Support.Text.Emoji.Flatbuffer.MetadataList
Removed Type Android.Support.Text.Emoji.Flatbuffer.Struct
Removed Type Android.Support.Text.Emoji.Flatbuffer.Table
Removed Type Android.Support.V13.BuildConfig
Removed Type Android.Support.V14.Preferences.BuildConfig
Removed Type Android.Support.V14.Preferences.EditTextPreferenceDialogFragment
Removed Type Android.Support.V14.Preferences.ListPreferenceDialogFragment
Removed Type Android.Support.V14.Preferences.MultiSelectListPreference
Removed Type Android.Support.V14.Preferences.MultiSelectListPreferenceDialogFragment
Removed Type Android.Support.V14.Preferences.PreferenceDialogFragment
Removed Type Android.Support.V14.Preferences.PreferenceFragment
Removed Type Android.Support.V14.Preferences.SwitchPreference
Removed Type Android.Support.V17.Leanback.BuildConfig
Removed Type Android.Support.V4.BuildConfig
Removed Type Android.Support.V7.AppCompat.BuildConfig
Removed Type Android.Support.V7.CardView.BuildConfig
Removed Type Android.Support.V7.GridLayout.BuildConfig
Removed Type Android.Support.V7.Mediarouter.BuildConfig
Removed Type Android.Support.V7.Palette.BuildConfig
Removed Type Android.Support.V7.RecyclerView.BuildConfig
Removed Type Android.Support.Wear.BuildConfig
```