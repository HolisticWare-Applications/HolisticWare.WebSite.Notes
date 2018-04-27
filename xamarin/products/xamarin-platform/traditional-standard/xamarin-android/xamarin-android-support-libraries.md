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


