# .NET Core deinstallation

uninstall.md

## Uninstall .NET Core

```
export FOLDERS=\
"
/usr/local/share/dotnet/sdk/3.0.100-preview3-010431/ 
/usr/local/share/dotnet/shared/Microsoft.NETCore.App/3.0.0-preview3-27503-5/
/usr/local/share/dotnet/shared/Microsoft.AspNetCore.App/3.0.0-preview3-19153-02/
/usr/local/share/dotnet/host/fxr/3.0.0-preview3-27503-5/
"

for FOLDER in $FOLDERS;
do
    echo $FOLDER
    ls -al $FOLDER
    #sudo rm -fr $FOLDER
done
```