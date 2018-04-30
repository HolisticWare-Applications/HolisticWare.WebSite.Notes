# Xamarin.Android.Support Libraries

xamarin-android-support-libraries.md

*   TODO
    *   old: 27.0.2
    *   new: 27.1.1

## Steps

1. get the source

   1. clone https://github.com/xamarin/androidsupportcomponents
   
   2. create branch for new versions `27.1.1`
   
2. download Android Support binaries (*.jar and *.aar)

   `sh build.sh --target=externals`
   
3. compile and fix

   `sh build.sh --target=libs`

4. diff the API of the new version and old

   `sh build.sh --target=diff`


## References / Links

*   https://maven.google.com

*   https://github.com/xamarin/androidsupportcomponents

*   https://github.com/redth/mavennet


## v.27.1.1

### Steps

1.  changed Cake script so build works with newer Cake plugins (pinning the version)

2.  `support-core-ui`

    1.  Metadata.xml for `CoordinatorLayout.ViewElevationComparator`
    
    2.  removed code in Additions.cs

        1.  `SpringAnimation`

        2.  `FlingAnimation`

3.  `appcompat-v7`

    1.  Metadata.xml for `MenuPopupWindow.MenuDropDownListView`

    2.  removed code in Additions.cs

        1.  `ListViewCompat`

3.  `design`

    1.  Metadata.xml for `MenuPopupWindow.MenuDropDownListView`

    2.  removed code in Additions.cs

        1.  `CoordinatorLayout`

3.  `leanback-v17`

    1.  Metadata.xml for 
    
        1.  `GuidedActionDiffCallback` parameter names

### investigating new APIs

#### Questions

1.  `androidx` 

    What is? 
    Purpose of? 
    Need to bind?

    1.  androidx.constraintlayout

        1.  constraintlayout

        2.  constraintlayout-solver

    2.  androidx.core

        1.  core-ktx

    3.  androidx.databinding

        1.  adapters

        2.  baseLibrary

        3.  compiler

        4.  compilerCommon

        5.  databinding-adapters

        6.  databinding-common

        7.  databinding-compiler

        8.  databinding-compiler-common

        9.  databinding-runtime

        10. library

2.  `com.android.databinding`

    What is? 
    Purpose of? 
    Need to bind?

    1.  adapters

    2.  baseLibrary

    3.  compiler

    4.  compilerCommon

    5.  library


