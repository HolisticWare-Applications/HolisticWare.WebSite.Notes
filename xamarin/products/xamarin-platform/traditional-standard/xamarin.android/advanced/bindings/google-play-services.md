# Google play services

## Steps

1. grab the source

    *   


    Project Components - Google Play Services - macOS
    https://jenkins.mono-project.com/view/Components/job/Components-GooglePlayServices/

    Project Components - Google Play Services - Windows (x64)
    https://jenkins.mono-project.com/view/Components/job/Components-GooglePlayServices-Win/

*   TODO
    *   old: 11
    *   new: 15.0.1+

## Steps

1. get the source

   1. clone https://github.com/xamarin/androidsupportcomponents
   
   2. create branch for new versions `15.0.1`
   
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

## Troubleshooting

Searching the `javap` output

```
    find . -type f \( -name api.xml -o -name *.cs \) -exec grep -iHn "addApi" {} \;
```

## References / Links

*   https://github.com/xamarin/java.interop

https://github.com/xamarin/java.interop/blob/master/src/Xamarin.Android.Tools.Bytecode/JavaDocumentScraper.cs
*   
