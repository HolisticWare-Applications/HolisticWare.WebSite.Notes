# WebView and PDF (and other formats)

webview-and-pdf-and-optionally-other-formats.md


This issue will be closed, because underlying platforms do not support rendering PDF in WebView.

The most feasible solution would be to implement MAUI Control similar to Control implemented in
Xamarin.Forms recipe:

https://github.com/xamarin/docs-archive/tree/master/Recipes/xamarin-forms/Controls/display-pdf

Such Control was not maintained in Xamarin.Forms and will not be implemented and maintained in
MAUI.

## Analysis

Presenting PDF, or any other format like Excel, in embedded WbView will be difficult to implement, because only few platforms (browser rendering engines) implement PDF rendering.

WebView is based on platform embedded browser control/view/widget which is for security reasons based on slimmed down browser rendering engine depending on platform. So, installation of browser, extensions/plugins/addins is not possible.

Reference browser capabilities:

*   https://caniuse.com/pdf-viewer
     iOS:
    >When displaying PDFs inline rather than separately, iOS Safari will only display 
    the first page of the document.

### Implementations

*   google docs renderer

    ```
    https://drive.google.com/viewerng/viewer?url={0}
    ```

    *   subject to possible changes in ToS by Google

*   native renderer app

    *   mandatory app installation

*   embedding native renderer 

    *   windows desktop
    
        *   https://github.com/MicrosoftEdge/WebView2Feedback/issues/38

    ```
    <embed 
        width="100%" height="100%" 
        src="https://www.example.com/xxxxxxxx/TestPdfFile.pdf" type="application/pdf" 
        style="margin:0px;padding:0px;overflow:hidden;display:block;"
        >
    ```

*   using `pdf.js`


### Other frameworks

*   Xamarin.Forms

    *   https://learn.microsoft.com/en-us/answers/questions/383713/xamarin-forms-issue-with-showing-a-pdf-files-using

    *   https://github.com/xamarin/docs-archive/tree/master/Recipes/xamarin-forms/Controls/display-pdf

    *   https://www.pujolsluis.com/how-to-display-pdf-in-xamarin-forms-with-ease/

    *   https://stackoverflow.com/questions/47833809/xamarin-forms-display-pdf-in-webview-not-working

    *   https://stackoverflow.com/questions/35474618/how-to-open-pdf-in-webview-for-android-in-xamarin-forms

    *   https://stackoverflow.com/questions/58969480/how-to-load-the-online-pdf-files-in-xamarin-webview

    *   https://medium.com/medialesson/show-pdf-files-in-your-xamarin-android-app-3718148de1c0    

*   Flutter

    *   https://stackoverflow.com/questions/57419091/can-flutter-for-web-show-pdf-or-webview

    *   https://stackoverflow.com/questions/72769673/how-do-i-webview-a-pdf-link-on-flutter

    *   https://stackoverflow.com/questions/59577042/how-to-open-the-pdf-document-inside-web-view-using-flutter

    *   https://github.com/flutter/flutter/issues/110239

    *   https://github.com/flutter/flutter/issues/48245
    
    *   https://www.appsloveworld.com/flutter/100/26/can-flutter-for-web-show-pdf-or-webview

*   React Native

    *   https://stackoverflow.com/questions/58155621/react-native-webview-for-android-not-displaying-pdf-and-word-files

    *   https://stackoverflow.com/questions/35899438/view-a-pdf-in-react-native

    *   https://stackoverflow.com/questions/70604566/view-base64-pdf-in-webview-react-native-on-ios/

    *   https://github.com/react-native-webview/react-native-webview/issues/891

    *   https://github.com/react-native-webview/react-native-webview/issues/2660


## Workaround[s]/[Re]Solution[s]

*   native plugin - 3rd party controls for PDF
    
    *   Xamarin.Forms plugin

    *   launches app - reader for format

    *   maybe browser

*   library to generate HTML for WebViewSource

    *   PDF to HTML

        *   https://www.nuget.org/packages/PDFix.PdfToHtml/

    *   Excel to HTML

        *   https://www.nuget.org/packages/XlsxToHtmlConverter/

        *   ...




# Details

```
#if __IOS__ || MACCATALYST
using PlatformView = WebKit.WKWebView;
#elif MONOANDROID
using PlatformView = Android.Webkit.WebView;
#elif WINDOWS
using PlatformView = Microsoft.UI.Xaml.Controls.WebView2;
#elif TIZEN
using PlatformView = Microsoft.Maui.Platform.MauiWebView;
#elif (NETSTANDARD || !PLATFORM) || (NET6_0_OR_GREATER && !IOS && !ANDROID && !TIZEN)
using PlatformView = System.Object;
#endif

#if __ANDROID__
using Android.Webkit;
#elif __IOS__
using WebKit;
#endif
```

*   https://learn.microsoft.com/en-us/dotnet/maui/user-interface/controls/webview?view=net-maui-7.0

*   https://learn.microsoft.com/en-us/dotnet/api/microsoft.maui.controls.webview?view=net-maui-7.0

*   https://github.com/dotnet/maui/blob/main/src/Controls/src/Core/WebView.cs

*   https://github.com/dotnet/maui/tree/main/src/Core/src/Handlers/WebView

*   https://github.com/dotnet/maui/tree/main/src/Core/src/Handlers/WebView

*   https://github.com/dotnet/maui/blob/main/src/Controls/src/Core/WebViewSource.cs

*   Handlers

    *   https://github.com/dotnet/maui/blob/main/src/Core/src/Handlers/WebView/WebViewHandler.Android.cs

    *   

*   Compatibility - Renderers

    *   https://github.com/dotnet/maui/blob/main/src/Compatibility/Core/src/Android/Renderers/WebViewRenderer.cs

    *   https://github.com/dotnet/maui/blob/main/src/Compatibility/Core/src/MacOS/Renderers/WebViewRenderer.cs

    *   https://github.com/dotnet/maui/blob/main/src/Compatibility/Core/src/iOS/Renderers/WkWebViewRenderer.cs


