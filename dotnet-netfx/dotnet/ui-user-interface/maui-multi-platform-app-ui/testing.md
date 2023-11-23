# Testing

testing.md

*   Unit testing

*   UI testing

    *   https://github.com/dotnet/maui/wiki/DeviceTests

        ```
        ./src/Core/tests/DeviceTests/Core.DeviceTests.csproj
        ./src/Controls/tests/DeviceTests/Controls.DeviceTests.csproj
        ./src/Graphics/tests/DeviceTests/Graphics.DeviceTests.csproj
        ./src/Essentials/test/DeviceTests/Essentials.DeviceTests.csproj
        ./src/BlazorWebView/tests/MauiDeviceTests/MauiBlazorWebView.DeviceTests.csproj
        ```

        
        ```pwsh
        dotnet tool restore
        ./build.ps1 --target=dotnet-buildtasks --configuration="Release" --workloads=global
        ```

        ```pwsh
        dotnet tool restore
        dotnet cake --target=dotnet-buildtasks --configuration="Release" --workloads=global
        ```

    *   https://github.com/dotnet/maui/wiki/UITests