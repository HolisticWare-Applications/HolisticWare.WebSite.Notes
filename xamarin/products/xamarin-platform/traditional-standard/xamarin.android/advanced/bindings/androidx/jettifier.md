# Jettifier

jettifier.md

*   https://android.googlesource.com/platform/frameworks/support/+/androidx-master-dev/jetifier

*   https://android.googlesource.com/platform/frameworks/support/+/androidx-master-dev/jetifier/jetifier/migration.config

    seem to be mappings in JSON

*   https://gist.github.com/dlew/5db1b780896bbc6f542e7c00a11db6a0

    migration script


## Missing mappings

```
android.support.design.widget.FloatingActionButton,com.google.android.material.floatingactionbutton.FloatingActionButton
android.support.design.widget.AppBarLayout,com.google.android.material.appbar.AppBarLayout
```

```
android.support.design.widget.Snackbar,com.google.android.material.snackbar.Snackbar
android.support.design.widget.BottomSheetBehavior,com.google.android.material.bottomsheet.BottomSheetBehavior
android.support.design.widget.TextInputEditText,com.google.android.material.textfield.TextInputEditText
android.support.design.widget.TextInputLayout,com.google.android.material.textfield.TextInputLayout
```

*   https://issuetracker.google.com/issues/119776865

    Android relevant issue for missing mappings

*   https://blog.danlew.net/2018/11/14/the-reality-of-migrating-to-androidx/

