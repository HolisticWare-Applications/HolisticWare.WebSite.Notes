# Lifecycle

lifecycle.md

```csharp
                            #if ANDROID
                            AppLifecycle.AddAndroid
                                            (
                                                android => 
                                                android.OnActivityResult
                                                            (
                                                                (activity, code, result_code, data) 
                                                                => 
                                                                Lifecycle.OnActivityResult(activity, code, result_code, data)
                                                            )
                                            );
                            AppLifecycle.AddAndroid
                                            (
                                                android => 
                                                android.OnApplicationConfigurationChanged
                                                            (
                                                                (application, config) 
                                                                => 
                                                                Lifecycle.ApplicationConfigurationChanged(application, config)
                                                            )
                                            );
                            AppLifecycle.AddAndroid
                                            (
                                                android => 
                                                android.OnApplicationCreate
                                                            (
                                                                (activity) => Lifecycle.ApplicationCreate()
                                                            )
                                            );
                            AppLifecycle.AddAndroid
                                            (
                                                android => 
                                                android.OnApplicationCreating
                                                            (
                                                                (activity) => Lifecycle.ApplicationCreating()
                                                            )
                                            );
                            AppLifecycle.AddAndroid
                                            (
                                                android => 
                                                android.OnApplicationConfigurationChanged
                                                            (
                                                                (application, config)
                                                                => 
                                                                Lifecycle.ApplicationConfigurationChanged(application, config)
                                                            )
                                            );
                        #endif
                        #if IOS
                        AppLifecycle.AddiOS
                                            (
                                                ios => 
                                                ios.WillEnterForeground((app) => EnteredForeground())
                                            );
                        #endif
                        #if WINDOWS
                        AppLifecycle.AddWindows
                                            (
                                                windows =>
                                                windows.OnNativeMessage
                                                            (
                                                                (app, args) => 
                                                                {
                                                                    app.ExtendsContentIntoTitleBar = false;
                                                                }
                                                            )
                                            );
                        #endif
```


