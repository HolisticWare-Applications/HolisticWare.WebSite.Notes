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

        *   perequisites

            *   node

            *   appium

        ```bash
        brew install node
        ```

        ```bash
        sudo dotnet pwsh eng/scripts/appium-install.ps1   
        ```

        ```bash
        ./build.ps1 \
            --target=dotnet-buildtasks \
            --configuration="Release" \
            --workloads=global
        ```

        ```bash
        dotnet cake \
            --target=dotnet-buildtasks \
            --configuration="Release" \
            --workloads=global
        ```

        ```bash
        ./build.ps1 \
            --target=dotnet-samples \
            --configuration="Release" \
            --catalyst \
            --verbosity=diagnostic \
            --workloads=global \
            --usenuget=false

            ./build.ps1 \
                -Script eng/devices/catalyst.cake \
                --target=uitest \
                --apiversion="10.13" \
                --configuration="Release" \
                --device=mac
        ```

        ```bash
        dotnet cake \
            --target=dotnet-samples \
            --verbosity=diagnostic \
            --configuration="Release" \
            --catalyst \
            --workloads=global \
            --usenuget=false

        dotnet cake \
            -Script eng/devices/catalyst.cake \
            --verbosity=diagnostic \
            --target=uitest \
            --apiversion="10.13" \
            --configuration="Release" \
            --device=mac
        ```


        ```bash
        ./build.ps1 \
            --target=dotnet-samples \
            --verbosity=diagnostic \
            --configuration="Release" \
            --workloads=global \
            --android \
            --usenuget=false

        ./build.ps1 \
            -Script eng/devices/android.cake \
            --verbosity=diagnostic \
            --target=uitest \
            --configuration="Release"
        ```


        ```bash
        dotnet cake \
            --target=dotnet-samples \
            --configuration="Release" \
            --workloads=global \
            --ios \
            --usenuget=false

        dotnet cake \
            -Script eng/devices/ios.cake \
            --target=uitest \
            --configuration="Release"
        ```

        ```bash
        dotnet cake \
            --target=dotnet-samples \
            --configuration="Release" \
            --workloads=global \
            --android \
            --usenuget=false

        dotnet cake \
            -Script eng/devices/android.cake \
            --target=uitest \
            --configuration="Release"
        ```

