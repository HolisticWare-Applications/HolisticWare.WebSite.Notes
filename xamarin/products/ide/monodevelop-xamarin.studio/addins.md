# AddIns

https://developer.xamarin.com/guides/cross-platform/xamarin-studio/customizing-ide/extending_xamarin_studio_with_addins/


https://github.com/mrward/AddIns/tree/monodevelop-6


In order for someone else to use your addin you need to generate an .mpack file, which is basically a zip file of your addin. The addin maker supports doing that if you run a build from the command line passing the CreatePackage property (e.g. xbuild yoursolution.sln /p:CreatePackage=true)
You can also set that property in the project file if you want to have it build the .mpack every time. Behind the scenes this is calling mdtool.exe setup pack path/to/your/addin.dll to generate the .mpack file. mdtool is shipped with Xamarin Studio. With the .mpack you can install that into MonoDevelop/Xamarin Studio from the addin manager dialog using the Install from file button.



To work out what is supported when saving the file you would need to look at the source code as Toni has mentioned. I had a quick look. If you follow the FileCommands.Save through the code it looks like Document.Save is called. Each Document inherits from DocumentContext which has a Saved event. This event fires after the document has been saved. When a document is opened in the IDE there is a DocumentOpened and a DocumentClosed event which are fired by the Workbench which should give you access to the Document.








How do you uninstall monodevelop from flatpak?
flatpak uninstall com.xamarin.MonoDevelop does not work

Jo Shields @directhex Oct 12 16:33
@cra0zy try a --user flag in there
@cra0zy and older releases had a name of com.xamarin.Studio, might be called that instead if you didn't update recently


, needed a --user flag, I keep forgetting that flatpak doesn't switch modes with sudo

















start a Process using environment variables set by the local users bash_profile? At least on mac the UseShellExecute property doesn't seem to create the same environment as my terminal.

Jo Shields @directhex Oct 12 18:21
this is a difference between login terminals & non-login shells
see http://www.joshstaiger.org/archives/2005/07/bash_profile_vs.html for a brief explainer

Ix @Ix_Azai_twitter Oct 12 19:57
Hmm, I guess so. Doesn't seem to read anything exported in the .bashrc either though. The commands I'm running run into the same problems regardless of what's in the bashrc file

Jo Shields @directhex Oct 12 20:12
try executing bash, with command-line param "-c whateveryouroriginalcommandwas"

