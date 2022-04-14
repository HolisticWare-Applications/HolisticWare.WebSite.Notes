# Assembly Configuration

assembly-configuration.md

*   https://docs.microsoft.com/en-us/windows-hardware/drivers/taef/assembly-config-files

*   https://docs.microsoft.com/en-us/dotnet/api/system.configuration.configurationmanager?view=dotnet-plat-ext-6.0

*   https://riptutorial.com/csharp/example/15944/-assemblyconfiguration-

https://stackoverflow.com/questions/594298/c-sharp-dll-config-file

```
var appConfig = ConfigurationManager
                    .OpenExeConfiguration(Assembly.GetExecutingAssembly().Location)
                    ;
string dllConfigData = appConfig.AppSettings.Settings["dllConfigData"].Value;
```