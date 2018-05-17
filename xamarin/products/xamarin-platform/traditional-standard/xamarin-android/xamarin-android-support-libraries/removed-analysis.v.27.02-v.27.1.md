# Removed Types Analysis 

removed-analysis.v.27.02-v.27.1.md

Folowing types look most suspicious and all  I could find was:

https://medium.com/@mikhailgritsenko/lifecycleactivity-is-deprecated-6aeef509e595

```
Removed Type Android.Arch.Lifecycle.LiveData.LifecycleBoundObserver
Removed Type Android.Arch.Lifecycle.BuildConfig
Removed Type Android.Arch.Lifecycle.ComputableLiveData
Removed Type Android.Arch.Lifecycle.LifecycleActivity
Removed Type Android.Arch.Lifecycle.LifecycleFragment
Removed Type Android.Arch.Lifecycle.MediatorLiveData
Removed Type Android.Arch.Lifecycle.Transformations
```

More code smell:

```
Removed Type Android.Support.V7.Widget.ListViewCompat
Removed Type Android.Support.V14.Preferences.EditTextPreferenceDialogFragment
Removed Type Android.Support.V14.Preferences.ListPreferenceDialogFragment
Removed Type Android.Support.V14.Preferences.MultiSelectListPreference
Removed Type Android.Support.V14.Preferences.MultiSelectListPreferenceDialogFragment
Removed Type Android.Support.V14.Preferences.PreferenceDialogFragment
Removed Type Android.Support.V14.Preferences.PreferenceFragment
Removed Type Android.Support.V14.Preferences.SwitchPreference
```

Further checks:

```
OK      Removed Type Android.Support.Content.BuildConfig
OK      Removed Type Android.Support.CustomTabs.BuildConfig

OK      Removed Type Android.Support.Graphics.Drawable.BuildConfig


OK      Removed Type Android.Support.Media.TV.TvContractCompat.IWatchNextType
OK      Removed Type Android.Support.Media.TV.TvContractCompat.IPreviewProgramColumnsAspectRatio
OK      Removed Type Android.Support.Media.TV.TvContractCompat.IPreviewProgramColumnsAvailability
OK      Removed Type Android.Support.Media.TV.TvContractCompat.IPreviewProgramColumnsInteractionType
OK      Removed Type Android.Support.Media.TV.TvContractCompat.IPreviewProgramColumnsType
OK      Removed Type Android.Support.Media.TV.TvContractCompat.IProgramColumnsReviewRatingStyle

OK      Removed Type Android.Support.Media.TV.BuildConfig

OK      Removed Type Android.Support.Percent.BuildConfig


OK      Removed Type Android.Support.Text.Emoji.BuildConfig
OK      Removed Type Android.Support.Text.Emoji.Bundled.BuildConfig
OK      Removed Type Android.Support.Transitions.BuildConfig
```

Not checked (fully):

```
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
Removed Type Android.Support.V17.Leanback.BuildConfig
Removed Type Android.Support.V4.BuildConfig
Removed Type Android.Support.V7.AppCompat.BuildConfig
Removed Type Android.Support.V7.CardView.BuildConfig
Removed Type Android.Support.V7.GridLayout.BuildConfig
Removed Type Android.Support.V7.Mediarouter.BuildConfig
Removed Type Android.Support.V7.Palette.BuildConfig
Removed Type Android.Support.V7.RecyclerView.BuildConfig
Removed Type Android.Support.Wear.BuildConfig
