# OAuth



Pierce Boggan [03:32]  

Hey! Quick question - what’s our plan of attack regarding Google’s 
upcoming OAuth webview changes for Xamarin.Auth: 

https://developers.googleblog.com/2016/08/modernizing-oauth-interactions-in-native-apps.html

https://9to5google.com/2016/08/22/google-oauth-third-party-disable/

 9to5Google Abner Li
Google disabling third-party OAuth app logins from web-views over the next year
Using a login party&nbsp;like Google, Twitter, or Facebook is much more convenient 
than remembering a username and password for individual&nbsp;services.&nbsp;To
improve security for this type of sign-in, Google is deprecating third-party
app logins from web-views in favor of&nbsp;the native browser.

Signing into third-party applications via&nbsp;a&nbsp;Google Account involves
sending an OAuth request.&nbsp;Over the next year, Google will be disabling 
login requests sent 

 
Had a few folks from the Azure Mobile Client SDK team (which uses Xamarin.Auth 
for iOS/Android) asking.


Mark Taparauskas [15:33]  
https://developers.googleblog.com/2016/08/modernizing-oauth-interactions-in-native-apps.html?m=1

In the coming months, we will no longer allow OAuth requests to Google in 
embedded browsers known as “web-views”, such as the WebView UI element on 
Android and UIWebView/WKWebView on iOS, and equivalents on Windows and OS X.






https://www.linkedin.com/pulse/webviews-bad-use-appauth-mike-schwartz
