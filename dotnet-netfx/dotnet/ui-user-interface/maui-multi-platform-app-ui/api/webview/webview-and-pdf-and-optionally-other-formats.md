# WebView and PDF (and other formats)

webview-and-pdf-and-optionally-other-formats.md

*   https://learn.microsoft.com/en-us/dotnet/maui/user-interface/controls/webview?view=net-maui-7.0

*   https://learn.microsoft.com/en-us/dotnet/api/microsoft.maui.controls.webview?view=net-maui-7.0

## Analysis

*   https://caniuse.com/pdf-viewer

    When displaying PDFs inline rather than separately, iOS Safari will only display 
    the first page of the document.

*   https://learn.microsoft.com/en-us/dotnet/maui/platform-integration/appmodel/open-browser

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

    https://github.com/react-native-webview/react-native-webview/issues/2660


## Workaround[s]/[Re]Solution[s]

*   native plugin 
    
    *   Xamarin.Forms plugin

    *   launches app - reader for format

    *   maybe browser

*   library to generate HTML for WebViewSource

    *   PDF to HTML

        *   https://www.nuget.org/packages/PDFix.PdfToHtml/

    *   Excel to HTML

        *   https://www.nuget.org/packages/XlsxToHtmlConverter/

        *   ...