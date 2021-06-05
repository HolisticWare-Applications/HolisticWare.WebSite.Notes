# AndroidX update

androidx-update.md

```
firebase-analytics-impl:16.3.0     ->  play-services-measurement-base:[16.3.0]
```

Removed stuff:

```
		{
			"groupId" : "android.arch.core",
			"artifactId" : "runtime",
			"version" : "1.1.1.1",
			"nugetId" : "Xamarin.Android.Arch.Core.Runtime",
			"dependencyOnly" : true
		},
		{
			"groupId" : "android.arch.lifecycle",
			"artifactId" : "common",
			"version" : "1.1.1.1",
			"nugetId" : "Xamarin.Android.Arch.Lifecycle.Common",
			"dependencyOnly" : true
		},


		{
			"groupId" : "com.google.firebase",
			"artifactId" : "firebase-auth-impl",
			"version" : "16.1.0",
			"nugetVersion" : "116.1.0",
			"nugetId" : "Xamarin.Firebase.Auth.Impl"
		},


			"groupId" : "com.google.guava",
			"artifactId" : "listenablefuture",
			"version" : "1.0.0",
			"nugetId" : "Xamarin.Google.Guava.ListenableFuture",
			"dependencyOnly" : true






		{
			"groupId" : "com.google.firebase",
			"artifactId" : "firebase-measurement-connector-impl",
			"version" : "17.0.5",
			"nugetVersion" : "117.0.5",
			"nugetId" : "Xamarin.Firebase.Measurement.Connector.Impl"
		},
```

Tensorflow.Lite 1.14 would be nice (it is in XamarinComponents repo)

```
No matching artifact config found for: org.tensorflow.tensorflow-lite:1.13.1 to satisfy dependency of: com.google.firebase.firebase-ml-model-interpreter:20.0.1
   at AndroidBinderator.Engine.BuildPr
```