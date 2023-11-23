# Device Tests

readme.md

```bash
dotnet tool restore
dotnet cake --target=dotnet-buildtasks --configuration="Release" --workloads=global
```


```bash
export PWD=$(pwd)

dotnet cake \
    --script eng/devices/catalyst.cake \
    --project="$PWD/src/Core/tests/DeviceTests/Core.DeviceTests.csproj" \
    --workloads=global

dotnet cake \
    --script eng/devices/catalyst.cake \
    --project="$PWD/src/Controls/tests/DeviceTests/Controls.DeviceTests.csproj" \
    --workloads=global

dotnet cake \
    --script eng/devices/catalyst.cake \
    --project="$PWD/src/Graphics/tests/DeviceTests/Graphics.DeviceTests.csproj" \
    --workloads=global

dotnet cake \
    --script eng/devices/catalyst.cake \
    --project="$PWD/src/Essentials/test/DeviceTests/Essentials.DeviceTests.csproj" \
    --workloads=global

dotnet cake \
    --script eng/devices/catalyst.cake \
    --project="$PWD/src/Essentials/test/DeviceTests/Essentials.DeviceTests.csproj" \
    --workloads=global


dotnet cake \
    --script eng/devices/ios.cake \
    --project="$PWD/src/Core/tests/DeviceTests/Core.DeviceTests.csproj" \
    --workloads=global

dotnet cake \
    --script eng/devices/ios.cake \
    --project="$PWD/src/Controls/tests/DeviceTests/Controls.DeviceTests.csproj" \
    --device=ios-simulator-64  \
    --workloads=global

dotnet cake \
    -script eng/devices/ios.cake \
    --project="$PWD/src/Graphics/tests/DeviceTests/Graphics.DeviceTests.csproj" \
    --device=ios-simulator-64  \
    --workloads=global

dotnet cake \
    -script eng/devices/ios.cake \
    --project="$PWD/src/Essentials/test/DeviceTests/Essentials.DeviceTests.csproj" \
    --device=ios-simulator-64  \
    --workloads=global

dotnet cake \
    -script eng/devices/ios.cake \
    --project="$PWD/src/Essentials/test/DeviceTests/Essentials.DeviceTests.csproj" \
    --device=ios-simulator-64  \
    --workloads=global

dotnet cake \
    -script eng/devices/ios.cake \
    --project="./src/Core/tests/DeviceTests/Core.DeviceTests.csproj" \
    --workloads=global



dotnet cake \
    --script eng/devices/android.cake \
    --project="$PWD/src/Core/tests/DeviceTests/Core.DeviceTests.csproj" \
    --workloads=global
```
