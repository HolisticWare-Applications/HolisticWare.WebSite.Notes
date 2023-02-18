# Bait and Switch


*   http://log.paulbetts.org/the-bait-and-switch-pcl-trick/

*   https://log.paulbetts.org/the-bait-and-switch-pcl-trick/

*   https://github.com/mattleibow/CreatingPlatformPlugins

*   http://ericsink.com/entries/pcl_bait_and_switch.html

*   https://github.com/Alxandr/Blog/issues/3

*   http://blog.alxandr.me/2014/07/24/the-epitome-of-multi-platform-libraries/

*   http://www.azurefromthetrenches.com/platform-specific-code-and-portable-class-libraries/

*   http://ryandavis.io/creating-and-publishing-a-cross-platform-library/

*   http://blog.stephencleary.com/2012/11/portable-class-library-enlightenment.html

*   https://blogs.msdn.microsoft.com/dsplaisted/2012/08/27/how-to-make-portable-class-libraries-work-for-you/

*   http://www.michaelridland.com/xamarin/best-practices-using-xamarin-plugins/

*   https://forums.xamarin.com/discussion/45475/xam-pcl-settings-plugin-gives-error-in-test-project

*   https://github.com/jamesmontemagno/Xamarin.Plugins/blob/master/Settings/README.md#setup--usage

*   https://nftb.saturdaymp.com/today-i-learned-bait-and-switch-for-net-pcls/


```
InnerException	Count = error CS0103: The name 'InnerExceptionCount' does not exist in 
the current context	System.Exception {System.AggregateException}
```

"Something went wrong in the build configuration.  This is the bait assembly, which is 
for referencing by portable libraries, and should never end up part of the app.  
Reference the appropriate platform assembly instead."
```
