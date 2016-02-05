# Xamarin.Android Binding Services

trying to use a 3rd party Android Service written in Java. They are trying to use an Android Binding Library to accomplish this but this seems incorrect to me as an Android Binding Library would not, by default at least, create what is needed for a Service to run and be bound to (as in service binding, not to be confused with the aforementioned library binding). Is it possible to do this? If so, what would be the best approach to consuming a Android Service created in Java using XA?

Matthew Leibowitz [2:39 AM] 
ah... they probably need to make use of the `IBinder` and a proxy class

Matthew Leibowitz [2:39 AM]
but...

Matthew Leibowitz [2:39 AM]
I think that is automatically generated if they have an AIDL file

Matthew Leibowitz [2:40 AM]
someone else will have to confirm the details, but i think that is what will have to happen...

Matthew Leibowitz [2:40 AM]
It has been a long time since I bound to an android service

Matthew Leibowitz [2:43 AM]
here are some docs that may help: http://developer.xamarin.com/guides/android/application_fundamentals/backgrounding/part_2_android_services/

Matthew Leibowitz [2:43 AM]
http://developer.xamarin.com/guides/android/application_fundamentals/services/part_2_-_bound_services/

Matthew Leibowitz [2:44 AM]2:44
here is a sample: http://developer.xamarin.com/guides/android/application_fundamentals/services/part_3_-_viewing_running_services_and_stock_service_example/

Matthew Leibowitz [2:47 AM]
effectively, connect to the service `IServiceConnection`, get the binder `IBinder` and then use the `Messenger` to communicate... Of course, this is just once sentence :wink:

Jon Goldberger [2:54 AM] 
@mattleibow: Thanks. However not sure if the AIDL is still necessary based on this from the first linked guide (I already looked over both of those, but they deal with Services created in XA using C#) 
"Since the introduction of Service Messengers, AIDL has largely been superseded, because Service Messengers are much simpler to use and easier to implement. "

trying to use a 3rd party Android Service written in Java. They are trying to use an Android Binding Library to accomplish this but this seems incorrect to me as an Android Binding Library would not, by default at least, create what is needed for a Service to run and be bound to (as in service binding, not to be confused with the aforementioned library binding). Is it possible to do this? If so, what would be the best approach to consuming a Android Service created in Java using XA?

Matthew Leibowitz [2:39 AM] 
ah... they probably need to make use of the `IBinder` and a proxy class

Matthew Leibowitz [2:39 AM]
but...

Matthew Leibowitz [2:39 AM]
I think that is automatically generated if they have an AIDL file

Matthew Leibowitz [2:40 AM]
someone else will have to confirm the details, but i think that is what will have to happen...

Matthew Leibowitz [2:40 AM]
It has been a long time since I bound to an android service

Matthew Leibowitz [2:43 AM]
here are some docs that may help: http://developer.xamarin.com/guides/android/application_fundamentals/backgrounding/part_2_android_services/

Matthew Leibowitz [2:43 AM]
http://developer.xamarin.com/guides/android/application_fundamentals/services/part_2_-_bound_services/

Matthew Leibowitz [2:44 AM]2:44
here is a sample: http://developer.xamarin.com/guides/android/application_fundamentals/services/part_3_-_viewing_running_services_and_stock_service_example/

Matthew Leibowitz [2:47 AM]
effectively, connect to the service `IServiceConnection`, get the binder `IBinder` and then use the `Messenger` to communicate... Of course, this is just once sentence :wink:

Jon Goldberger [2:54 AM] 
@mattleibow: Thanks. However not sure if the AIDL is still necessary based on this from the first linked guide (I already looked over both of those, but they deal with Services created in XA using C#) 
"Since the introduction of Service Messengers, AIDL has largely been superseded, because Service Messengers are much simpler to use and easier to implement. "


This doc: http://developer.xamarin.com/guides/android/application_fundamentals/services/part_2_-_bound_services/

Matthew Leibowitz [2:57 AM]
here is the connection http://developer.xamarin.com/guides/android/application_fundamentals/services/part_2_-_bound_services/#Calling_a_Messenger_Service_from_the_Client

Matthew Leibowitz [2:57 AM]
note:
>`activity.demoMessenger = new Messenger (service);`
in `OnServiceConnected`

Matthew Leibowitz [2:58 AM]
talking to the service:
```Message message = Message.Obtain ();
Bundle b = new Bundle ();
b.PutString ("InputText", "text from client");
message.Data = b;
demoMessenger.Send (message);
```

Jon Goldberger [2:58 AM] 
Yeah, saw all that. So they do not even need to bind (as in binding the Java code, not binding the service) the Java code using an Andorid Binding Library, they would just need to install the Java Service on the device, correct?

Matthew Leibowitz [2:58 AM] 
yes

Matthew Leibowitz [2:59 AM]
I am assuming the service is in the SDK?

Jon Goldberger [2:59 AM] 
Ok, that is what I was thinking. Thanks for the confirmation.

Matthew Leibowitz [2:59 AM] 
binding to a service can start the service automatically

Jon Goldberger [2:59 AM] 
The Service is a third party service, not in any SDK that I am aware of..

Matthew Leibowitz [3:00 AM] 
ah, then in that case, they should be able to just use the `BindService()` method and pass in an instance of `IServiceConnection`

Matthew Leibowitz [3:01 AM]
`Context.BindService` that is, once the connection has happened, then they communicate with Xamarin.Android's already provided `Messenger`

Jon Goldberger [3:01 AM] 
OK, nevermind… just got a reply from the customer. Since we (not me personally, but the support team) dropped the ball on this case they did not get a response for two weeks, and they have now told me that they decided to go native since they could not resolve this issue.

This doc: http://developer.xamarin.com/guides/android/application_fundamentals/services/part_2_-_bound_services/

Matthew Leibowitz [2:57 AM]
here is the connection http://developer.xamarin.com/guides/android/application_fundamentals/services/part_2_-_bound_services/#Calling_a_Messenger_Service_from_the_Client

Matthew Leibowitz [2:57 AM]
note:
>`activity.demoMessenger = new Messenger (service);`
in `OnServiceConnected`

Matthew Leibowitz [2:58 AM]
talking to the service:
```Message message = Message.Obtain ();
Bundle b = new Bundle ();
b.PutString ("InputText", "text from client");
message.Data = b;
demoMessenger.Send (message);
```

Jon Goldberger [2:58 AM] 
Yeah, saw all that. So they do not even need to bind (as in binding the Java code, not binding the service) the Java code using an Andorid Binding Library, they would just need to install the Java Service on the device, correct?

Matthew Leibowitz [2:58 AM] 
yes

Matthew Leibowitz [2:59 AM]
I am assuming the service is in the SDK?

Jon Goldberger [2:59 AM] 
Ok, that is what I was thinking. Thanks for the confirmation.

Matthew Leibowitz [2:59 AM] 
binding to a service can start the service automatically

Jon Goldberger [2:59 AM] 
The Service is a third party service, not in any SDK that I am aware of..

Matthew Leibowitz [3:00 AM] 
ah, then in that case, they should be able to just use the `BindService()` method and pass in an instance of `IServiceConnection`

Matthew Leibowitz [3:01 AM]
`Context.BindService` that is, once the connection has happened, then they communicate with Xamarin.Android's already provided `Messenger`

Jon Goldberger [3:01 AM] 
OK, nevermind… just got a reply from the customer. Since we (not me personally, but the support team) dropped the ball on this case they did not get a response for two weeks, and they have now told me that they decided to go native since they could not resolve this issue.


