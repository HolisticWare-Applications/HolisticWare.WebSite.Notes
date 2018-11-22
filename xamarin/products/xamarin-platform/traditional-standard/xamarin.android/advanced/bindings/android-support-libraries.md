# Xamarin.Android.Support Libraries

xamarin-android-support-libraries.md

## References / Links

*   https://blog.xamarin.com/mastering-android-support-libraries/


## Building

*   TODO
    *   old: 27.0.2
    *   new: 27.1.1

## Steps

1. get the source

   1. clone https://github.com/xamarin/androidsupportcomponents
   
   2. create branch for new versions `27.1.1`
   
2.  check the versions for new artifacts

    *   https://maven.google.com
    
        *   https://dl.google.com/dl/android/maven2/index.html

3.  for new artifacts create bindings projects (copy simple existing ones)

    *   https://www.guidgenerator.com/online-guid-generator.aspx

4. download Android Support binaries (*.jar and *.aar)

```
sh build.sh --target=externals
```
   
5. compile and fix

```
sh build.sh --target=libs
```

6. diff the API of the new version and old

```
sh build.sh --target=diff`
```


### Batch Build (All steps at once)

```
sh build.sh --target=clean \
&& \
rm -fr ./externals \
sh build.sh --target=externals \
&&
sh build.sh --target=libs \
&&
sh build.sh --target=diff
```    


### Build times

Just to have some information about build duration:

*   clean repo (freshly cloned) - 1 hr 20+ minutes

*   built repo - 40+ minutes

## References / Links

*   https://maven.google.com

*   https://github.com/xamarin/androidsupportcomponents

*   https://github.com/redth/mavennet


## CI / Build Servers

*   Project Components - Android Support - macOS

    *   https://jenkins.mono-project.com/view/Components/job/Components-AndroidSupport/

*   Project Components - Android Support - Windows (x64)

    *   https://jenkins.mono-project.com/view/Components/job/Components-AndroidSupport-Win/



## v.27.1.1

### Steps

1.  changed Cake script so build works with newer Cake plugins (pinning the version)

2.  make new version bindings compile clean 

3.  detect/investigate new APIs

    1.  run target diff

        `sh build.sh --target=diff`

    2.  check html output: `output/AndroidSupport.api-diff.html`

    3.  inspecting `*.aar[s]` and `*.jar[s]` with decompilers (JD_GUI, Luyten, jadx)

For detailed see [./xamarin-android-support-libraries/steps.md](./xamarin-android-support-libraries/steps.md)


[./xamarin-android-support-libraries/questions.md](./xamarin-android-support-libraries/questions.md)