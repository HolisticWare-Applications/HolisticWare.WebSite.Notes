# Steps

1.  changed Cake script so build works with newer Cake plugins (pinning the version)

2.  make new version bindings compile clean 

    changed stuff in v.27.0.2 -> 27.1.1

    1.  `support-core-ui`

        1.  Metadata.xml for `CoordinatorLayout.ViewElevationComparator`
        
        2.  removed code in Additions.cs

            1.  `SpringAnimation`

            2.  `FlingAnimation`

    2.  `appcompat-v7`

        1.  Metadata.xml for `MenuPopupWindow.MenuDropDownListView`

        2.  removed code in Additions.cs

            1.  `ListViewCompat`

    3.  `design`

        1.  Metadata.xml for `MenuPopupWindow.MenuDropDownListView`

        2.  removed code in Additions.cs

            1.  `CoordinatorLayout`

    4.  `leanback-v17`

        1.  Metadata.xml for 
        
            1.  `GuidedActionDiffCallback` parameter names

    5.  `preference-v14`

        1.  removed code in Additions.cs

            1.  `MultiSelectListPreference`

3.  detect/investigate new APIs

    1.  run target diff

        `sh build.sh --target=diff`

    2.  check html output: `output/AndroidSupport.api-diff.html`

        [./AndroidSupport.api-diff.html](./AndroidSupport.api-diff.html)

    3.  inspecting `*.aar[s]` and `*.jar[s]` with decompilers (JD_GUI, Luyten, jadx)

        [./ViewModelProviders.class](./ViewModelProviders.class)
