Open Silver

For Best App Performance:
Enable virtualization if you are working with a list, ComboBox, or a TreeView that contains many items.
Compile the application using the Ahead-of-Time (AOT) setting. This improves speed by 3 to 5 times. Note that it's not enabled by default because compilation takes significantly longer, but it's definitely the way to go when publishing the app.
Make sure to enable IIS compression and to fine-tune the "trimming" settings when publishing, to significantly reduce the initial loading time.

Other Tips:
For REST calls, use HttpClient instead of WebClient.
The browser security context may require that you enable cross-domain calls by 
configuring CORS 
    https://doc.opensilver.net/documentation/in-depth-topics/wcf-and-webclient.html#adding-support-for-cross-domain-calls-cors
and 
the SameSite attribute.


https://forms.opensilver.net/vsix-for-vscode-download-confirmation.aspx

https://www.infoworld.com/article/3851827/opensilver-extends-to-ios-and-android.html

https://opensilver.net/announcements/3-2/

