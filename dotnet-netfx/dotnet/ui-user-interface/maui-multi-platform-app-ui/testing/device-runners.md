# Device Runners

device-runners.md

https://github.com/mattleibow/DeviceRunners

Or just point to the one from Allan Ritchie and/or Pedro

https://mallibone.com/post/maui-device-unit-testing

*   Pedro Jesus

    *   Unit Testing For Your .NET MAUI Applications | .NET Conf: Focus on MAUI
    
    *   https://www.youtube.com/watch?v=b4OJSmgMAaw&themeRefresh=1

https://github.com/shinyorg/xunit-maui


dotnet cake \
    -Script eng/devices/ios.cake \
    --target=uitest \
    --device=ios-simulator-64_17.2 \
    --apiversion="17.2" \
    --configuration="Release" \
    --workloads=global \
    --test-filter="ScrollToEndDoesntCrash"
