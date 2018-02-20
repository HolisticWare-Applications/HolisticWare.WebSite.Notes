# Extensions

    code --list-extensions


    code --install-extension \
        ms-vscode.cpptools \
        WakaTime.vscode-wakatime


    code --install-extension \
        myextension.vsix

    code --uninstall-extension \
        ms-vscode.csharp

    code --disable-extensions



irect download URL is in the form:

http://${publisher}.gallery.vsassets.io/_apis/public/gallery/publisher/${publisher}/extension/${extension name}/${version}/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage


Extensions are installed in your extensions folders. Depending on your platform, the global location is in the following folders:

Windows %USERPROFILE%\.vscode\extensions
Mac ~/.vscode/extensions
Linux ~/.vscode/extensions


