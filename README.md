# HolisticWare.WebSite.CompositeC1.Content.MarkDown

Notes in markdown format:

*   content for HolisticWare website and personal blog before converting to html


MSFT:

```
open -a Safari
```

HolisticWare:

```
open -a Firefox
```

## Links References


*   https://github.com/moljac

*   https://gitlab.com/moljac

*   https://github.com/moljac/HolisticWare.WebSite.Notes

*   https://github.com/xamarin

    *   https://github.com/xamarin/XamarinComponents

    *	https://github.com/xamarin/Xamarin.Auth

    *   https://github.com/xamarin/AndroidSupportComponents

        *    https://github.com/xamarin/AndroidSupportComponents/tree/AndroidX

    *   https://github.com/xamarin/GooglePlayServicesComponents

	*    https://github.com/xamarin/GooglePlayServicesComponents/tree/15.0.1-binderate

*   https://github.com/HolisticWare

    *   working projects 2018-12

	*   https://github.com/HolisticWare/HolisticWare.Core.Math.Statistics.Descriptive.Sequential

	*   https://github.com/HolisticWare/HolisticWare.Core.Linq

	*   https://github.com/HolisticWare/HolisticWare.Core.Text
	
*   bindings

    *   https://github.com/xamarin/XamarinComponents
    
    *   https://github.com/HolisticWare/HolisticWareComponents
    
    

*    https://holisticware-moljac.visualstudio.com/

* .  usefull links

    *   http://packagesearch.azurewebsites.net/
    
    *   https://apisof.net/
    
    
 ## Building `Android.Support` and `Google.Play.Services-Firebase`

```
sh ./build.sh --target=clean && sh ./build.sh --target=binderate \
&& \
sh ./build.sh --target=libs && sh ./build.sh --target=nuget
```
