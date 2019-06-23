# Desugaring in AndroidX

desugaring-androidx.md 


Like always errors a bit formatted for easier reading:

```
Error while processing 
    '[Method] java.time.temporal.Temporal adjustInto(java.time.temporal.Temporal temporal, long newValue)' 
in 
    '[Class] java.time.temporal.ChronoField': Type 'java.time.temporal.Temporal' 
was not found.
Error while processing 
    '[Method] java.time.temporal.Temporal addTo(java.time.temporal.Temporal temporal, long amount)' 
in 
    '[Class] java.time.temporal.ChronoUnit': Type 'java.time.temporal.Temporal' 
was not found.
```

*   https://stackoverflow.com/questions/51128130/xamarin-android-binding-generation-giving-type-x-was-not-found-errors-for-clas


```
        <AndroidEnableDesugar>true</AndroidEnableDesugar>
```

*   https://developer.android.com/studio/write/java8-support

*   https://stackoverflow.com/questions/48532610/is-java-8-features-available-for-xamarin-android-in-java-binding-project

*   https://jenkins.mono-project.com/view/Xamarin.Android/job/xamarin-android-builds-master/643/PublishUrls/

*   https://gist.github.com/Redth/d1d6eeb79fa12ce62319aab0951c5bac#file-glidex-binding-cs-L421-L432
