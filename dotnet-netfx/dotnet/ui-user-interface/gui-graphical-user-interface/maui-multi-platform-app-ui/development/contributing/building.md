# Building repo


```shell
dotnet tool restore
dotnet build ./Microsoft.Maui.BuildTasks.slnf
```

```
dotnet build ./src/Controls/src/Core/Controls.Core.csproj /p:PublicApiType=Generate
```

*   https://github.com/dotnet/maui/wiki/Testing

## Unit

```shell
dotnet test  ./src/Core/tests/UnitTests/Core.UnitTests.csproj
dotnet test  src/Controls/tests/Core.UnitTests/Controls.Core.UnitTests.csproj

dotnet test  ./src/Controls/Foldable/test/Controls.DualScreen.UnitTests.csproj
dotnet test  ./src/Controls/tests/BindingSourceGen.UnitTests/Controls.BindingSourceGen.UnitTests.csproj
dotnet test  ./src/Controls/tests/Core.UnitTests/Controls.Core.UnitTests.csproj
dotnet test  ./src/AI/tests/Essentials.AI.UnitTests/Essentials.AI.UnitTests.csproj
dotnet test  ./src/Compatibility/Core/tests/WinUI/Compatibility.Windows.UnitTests.csproj
dotnet test  ./src/Compatibility/Core/tests/Compatibility.UnitTests/Compatibility.Core.UnitTests.csproj
dotnet test  ./src/Compatibility/Core/tests/Android/Compatibility.Android.UnitTests.csproj
dotnet test  ./src/Compatibility/Core/tests/iOS/Compatibility.iOS.UnitTests.csproj
dotnet test  ./src/Essentials/test/UnitTests/Essentials.UnitTests.csproj
dotnet test  ./src/SingleProject/Resizetizer/test/UnitTests/Resizetizer.UnitTests.csproj
dotnet test  ./src/Controls/tests/Core.Design.UnitTests/Controls.Core.Design.UnitTests.csproj
dotnet test  ./src/Controls/tests/Xaml.UnitTests/Controls.Xaml.UnitTests.csproj
dotnet test  ./src/Controls/tests/SourceGen.UnitTests/SourceGen.UnitTests.csproj
```



## UI

*   https://github.com/dotnet/maui/wiki/UITests


```shell
dotnet build \
    ./src/Provisioning/Provisioning.csproj \
    -t:ProvisionAppium \
    -p:SkipAppiumDoctor="true" \
    -bl:"./artifacts/logs/provision-appium.binlog"
```



```shell
dotnet test ./src/Controls/tests/TestCases.HostApp/Controls.TestCases.HostApp.csproj
# dotnet test ./src/Controls/tests/TestCases.Shared.Tests/Controls.TestCases.Shared.Tests.csproj
dotnet test src/Controls/tests/TestCases.Android.Tests/Controls.TestCases.Android.Tests.csproj
```


```shell
./src/Controls/tests/Controls.TestCases.HostApp (MAUI Sample app for automated UI tests)
Controls.TestCases.Shared.Tests (MAUI library defining UI tests)
Controls.TestCases.Android.Tests (Android-specific tests)
Controls.TestCases.iOS.Tests (iOS-specific tests)
Controls.TestCases.Mac.Tests (Mac-specific tests)
Controls.TestCases.WinUI.Tests (WinUI-specific tests)
```




*   https://github.com/dotnet/maui/wiki/DeviceTests


## Benchmarks

```shell
find . -iname "*bench*"
```

```shell
./build.ps1 --target=dotnet-buildtasks --configuration="Release" --workloads=global
dotnet cake --target=dotnet-buildtasks --configuration="Release" --workloads=global
```

```shell
dotnet cake -script eng/devices/android.cake --project="/Users/ruimarinho/dotnet/maui/src/Core/tests/DeviceTests/Core.DeviceTests.csproj" --device=android-emulator-64_34 --apiversion=34 --configuration=Release --workloads=local


dotnet cake -script eng/devices/ios.cake --project="/Users/ruimarinho/dotnet/maui/src/Graphics/tests/DeviceTests/Graphics.DeviceTests.csproj" --device=ios-simulator-64  --workloads=global

dotnet cake -script eng/devices/ios.cake --project="/Users/ruimarinho/dotnet/maui/src/Core/tests/DeviceTests/Core.DeviceTests.csproj" --device=ios-simulator-64 --workloads=global

dotnet cake -script eng/devices/ios.cake --project="/Users/ruimarinho/dotnet/maui/src/Controls/tests/DeviceTests/Controls.DeviceTests.csproj" --device=ios-simulator-64 --workloads=global

dotnet cake -script eng/devices/ios.cake --project="/Users/ruimarinho/dotnet/maui/src/BlazorWebView/tests/MauiDeviceTests/MauiBlazorWebView.DeviceTests.csproj" --device=ios-simulator-64 --workloads=global



dotnet cake -script eng/devices/catalyst.cake --target="buildOnly" --project="C:\repos\dotnet\maui\src\Core\tests\DeviceTests\Core.DeviceTests.csproj" --workloads=global

dotnet cake -script eng/devices/catalyst.cake --target="testOnly" --project="C:\repos\dotnet\maui\src\Core\tests\DeviceTests\Core.DeviceTests.csproj" --workloads=global

dotnet cake -script eng/devices/catalyst.cake --target="buildOnly" --project="C:\repos\dotnet\maui\src\Controls\tests\DeviceTests\Controls.DeviceTests.csproj" --workloads=global

dotnet cake -script eng/devices/catalyst.cake --target="testOnly" --project="C:\repos\dotnet\maui\src\Controls\tests\DeviceTests\Controls.DeviceTests.csproj" --workloads=global
```




```shell
code -n ./src/Core/tests/Benchmarks/Core.Benchmarks.csproj
code -n ./src/Graphics/tests/Graphics.Benchmarks/Graphics.Benchmarks.csproj
code -n ./src/Controls/tests/Xaml.Benchmarks/Microsoft.Maui.Controls.Xaml.Benchmarks.csproj
code -n ./src/Core/tests/Benchmarks.Droid/Benchmarks.Droid.csproj
```