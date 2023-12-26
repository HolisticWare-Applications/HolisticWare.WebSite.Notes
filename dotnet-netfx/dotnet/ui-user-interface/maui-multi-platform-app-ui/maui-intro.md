# MAUI Intro

maui-intro.md

https://github.com/jfversluis/learn-dotnet-maui


Get Started: .NET MAUI / Xamarin Forms

    https://docs.devexpress.com/MAUI/403249/get-started/get-started


Online Documentation: .NET MAUI / Xamarin Forms

    https://docs.devexpress.com/MAUI/403245/maui

Knowledge Base: .NET MAUI / Xamarin Forms

    https://supportcenter.devexpress.com/ticket/list?preset=884f819e-5ea0-420b-9306-0a08e96fc11f

YouTube Videos: .NET MAUI / Xamarin Forms

    https://www.youtube.com/playlist?list=PL8h4jt35t1wghepqsh6REGhL_yeugE58m

Code Examples: .NET MAUI / Xamarin Forms

    https://github.com/search?q=org%3ADevExpress-Examples+.net+maui&type=repositories

Team Blog: .NET MAUI & Xamarin Forms

    https://community.devexpress.com/blogs/mobile/



https://github.com/dotnet/sdk/issues/23820


```
sudo dotnet workload \
    update \
        android \
        ios \
    --verbosity diagnostic \

```


```
sudo dotnet workload \
    search \
    --verbosity diagnostic \
    android
```

```
sudo dotnet workload \
    uninstall \
        maui \
        wasm-tools \
        --source https://aka.ms/dotnet6/nuget/index.json \
        --source https://api.nuget.org/v3/index.json \
        --source https://pkgs.dev.azure.com/dnceng/public/_packaging/dotnet6/nuget/v3/index.json
```

```
dotnet workload install \
    --help \
&& \
dev_nuget_nuke \
&& \
sudo dotnet workload \
    install \
        android \
        ios \
        maccatalyst \
        macos \
        tvos \
        maui \
        maui-android \
        maui-ios \
        maui-maccatalyst \
        maui-tizen \
        maui-windows \
        maui-desktop \
        maui-mobile \
        wasm-tools \
        wasm-tools-net6 \
        wasm-experimental \
        --source https://aka.ms/dotnet6/nuget/index.json \
        --source https://api.nuget.org/v3/index.json \
        --source https://pkgs.dev.azure.com/dnceng/public/_packaging/darc-pub-dotnet-runtime-1a1a8d32/nuget/v3/index.json \
        --source https://pkgs.dev.azure.com/dnceng/public/_packaging/darc-pub-dotnet-runtime-1a1a8d32/nuget/v3/index.json \
        --source https://pkgs.dev.azure.com/dnceng/public/_packaging/darc-pub-dotnet-runtime-531f715f/nuget/v3/index.json \
        --source https://pkgs.dev.azure.com/dnceng/public/_packaging/darc-pub-dotnet-emsdk-3f6c45a2/nuget/v3/index.json \
        --include-previews \
        --no-cache \
        --verbosity diagnostic

        --skip-manifest-update \
        --interactive \
        --configfile NuGet.congig\
        --disable-parallel \
        --ignore-failed-sources \
        --temp-dir <PATH>
```

```
sudo dotnet workload \
    install \
        maui \
        android \
        ios \
        maccatalyst \
        wasm-tools \
        --source https://aka.ms/dotnet6/nuget/index.json \
        --source https://pkgs.dev.azure.com/dnceng/public/_packaging/dotnet-tools/nuget/v3/index.json \
        --source https://api.nuget.org/v3/index.json \
        --source https://pkgs.dev.azure.com/dnceng/public/_packaging/darc-pub-dotnet-runtime-1a1a8d32/nuget/v3/index.json
```

```
sudo dotnet workload \
    uninstall \
        maui \
        android \
        ios \
        maccatalyst \
        maui-mobile \
        maui-windows \
        --source https://aka.ms/dotnet6/nuget/index.json \
        --source https://pkgs.dev.azure.com/dnceng/internal/_packaging/dotnet7-early-access/nuget/v3/index.json \
        --source https://pkgs.dev.azure.com/dnceng/internal/_packaging/dotnet6-early-access/nuget/v3/index.json \
        --source https://pkgs.dev.azure.com/dnceng/public/_packaging/darc-pub-dotnet-runtime-dea52219/nuget/v3/index.json \
        --source https://pkgs.dev.azure.com/dnceng/public/_packaging/darc-pub-dotnet-runtime-dea52219/nuget/v3/index.json \
        --source https://api.nuget.org/v3/index.json \

        maui-desktop \
        maui-tizen \
        wasm-tools-net6 \

sudo dotnet workload \
    install \
        maui \
        android \
        ios \
        maccatalyst \
        wasm-tools-net6 \
        --source https://aka.ms/dotnet6/nuget/index.json \
        --source https://pkgs.dev.azure.com/dnceng/public/_packaging/darc-pub-dotnet-runtime-dea52219/nuget/v3/index.json \
        --source https://pkgs.dev.azure.com/dnceng/public/_packaging/darc-pub-dotnet-runtime-dea52219/nuget/v3/index.json \
        --source https://api.nuget.org/v3/index.json \

        --source https://pkgs.dev.azure.com/dnceng/internal/_packaging/dotnet7-early-access/nuget/v3/index.json \
        --source https://pkgs.dev.azure.com/dnceng/internal/_packaging/dotnet6-early-access/nuget/v3/index.json \
        windows \
        maui-tizen \
        desktop \
        mobile \
        --source https://aka.ms/dotnet6/nuget/index.json \
        --source https://pkgs.dev.azure.com/dnceng/internal/_packaging/dotnet7-early-access/nuget/v3/index.json \
        --source https://pkgs.dev.azure.com/dnceng/internal/_packaging/dotnet6-early-access/nuget/v3/index.json \
        --source https://pkgs.dev.azure.com/dnceng/public/_packaging/darc-pub-dotnet-runtime-dea52219/nuget/v3/index.json \
        --source https://pkgs.dev.azure.com/dnceng/public/_packaging/darc-pub-dotnet-runtime-dea52219/nuget/v3/index.json \
        --source https://api.nuget.org/v3/index.json \


        --from-rollback-file https://aka.ms/dotnet/maui/preview.11.json \
```


```
dotnet new \
    maui \
        --output ./samples/AppMAUI 

dotnet build \
    ./samples/AppMAUI/AppMAUI.csproj \
        -t:Run \
            -f:net6.0-android
```

```
dotnet new \
    maui-blazor \
        --output ./samples/AppMAUIwBlazor 
    
dotnet build \
    ./samples/AppMAUIwBlazor/AppMAUIwBlazor.csproj \
        -t:Run \
            -f:net6.0-android \
```


```
xcrun simctl list
````


```
== Device Types ==
iPhone 4s (com.apple.CoreSimulator.SimDeviceType.iPhone-4s)
iPhone 5 (com.apple.CoreSimulator.SimDeviceType.iPhone-5)
iPhone 5s (com.apple.CoreSimulator.SimDeviceType.iPhone-5s)
iPhone 6 Plus (com.apple.CoreSimulator.SimDeviceType.iPhone-6-Plus)
iPhone 6 (com.apple.CoreSimulator.SimDeviceType.iPhone-6)
iPhone 6s (com.apple.CoreSimulator.SimDeviceType.iPhone-6s)
iPhone 6s Plus (com.apple.CoreSimulator.SimDeviceType.iPhone-6s-Plus)
iPhone SE (1st generation) (com.apple.CoreSimulator.SimDeviceType.iPhone-SE)
iPhone 7 (com.apple.CoreSimulator.SimDeviceType.iPhone-7)
iPhone 7 Plus (com.apple.CoreSimulator.SimDeviceType.iPhone-7-Plus)
iPhone 8 (com.apple.CoreSimulator.SimDeviceType.iPhone-8)
iPhone 8 Plus (com.apple.CoreSimulator.SimDeviceType.iPhone-8-Plus)
iPhone X (com.apple.CoreSimulator.SimDeviceType.iPhone-X)
iPhone Xs (com.apple.CoreSimulator.SimDeviceType.iPhone-XS)
iPhone Xs Max (com.apple.CoreSimulator.SimDeviceType.iPhone-XS-Max)
iPhone Xʀ (com.apple.CoreSimulator.SimDeviceType.iPhone-XR)
iPhone 11 (com.apple.CoreSimulator.SimDeviceType.iPhone-11)
iPhone 11 Pro (com.apple.CoreSimulator.SimDeviceType.iPhone-11-Pro)
iPhone 11 Pro Max (com.apple.CoreSimulator.SimDeviceType.iPhone-11-Pro-Max)
iPhone SE (2nd generation) (com.apple.CoreSimulator.SimDeviceType.iPhone-SE--2nd-generation-)
iPhone 12 mini (com.apple.CoreSimulator.SimDeviceType.iPhone-12-mini)
iPhone 12 (com.apple.CoreSimulator.SimDeviceType.iPhone-12)
iPhone 12 Pro (com.apple.CoreSimulator.SimDeviceType.iPhone-12-Pro)
iPhone 12 Pro Max (com.apple.CoreSimulator.SimDeviceType.iPhone-12-Pro-Max)
iPhone 13 Pro (com.apple.CoreSimulator.SimDeviceType.iPhone-13-Pro)
iPhone 13 Pro Max (com.apple.CoreSimulator.SimDeviceType.iPhone-13-Pro-Max)
iPhone 13 mini (com.apple.CoreSimulator.SimDeviceType.iPhone-13-mini)
iPhone 13 (com.apple.CoreSimulator.SimDeviceType.iPhone-13)
iPhone SE (3rd generation) (com.apple.CoreSimulator.SimDeviceType.iPhone-SE-3rd-generation)
iPhone 14 (com.apple.CoreSimulator.SimDeviceType.iPhone-14)
iPhone 14 Plus (com.apple.CoreSimulator.SimDeviceType.iPhone-14-Plus)
iPhone 14 Pro (com.apple.CoreSimulator.SimDeviceType.iPhone-14-Pro)
iPhone 14 Pro Max (com.apple.CoreSimulator.SimDeviceType.iPhone-14-Pro-Max)
iPod touch (7th generation) (com.apple.CoreSimulator.SimDeviceType.iPod-touch--7th-generation-)
iPad 2 (com.apple.CoreSimulator.SimDeviceType.iPad-2)
iPad Retina (com.apple.CoreSimulator.SimDeviceType.iPad-Retina)
iPad Air (com.apple.CoreSimulator.SimDeviceType.iPad-Air)
iPad mini 2 (com.apple.CoreSimulator.SimDeviceType.iPad-mini-2)
iPad mini 3 (com.apple.CoreSimulator.SimDeviceType.iPad-mini-3)
iPad mini 4 (com.apple.CoreSimulator.SimDeviceType.iPad-mini-4)
iPad Air 2 (com.apple.CoreSimulator.SimDeviceType.iPad-Air-2)
iPad Pro (9.7-inch) (com.apple.CoreSimulator.SimDeviceType.iPad-Pro--9-7-inch-)
iPad Pro (12.9-inch) (1st generation) (com.apple.CoreSimulator.SimDeviceType.iPad-Pro)
iPad (5th generation) (com.apple.CoreSimulator.SimDeviceType.iPad--5th-generation-)
iPad Pro (12.9-inch) (2nd generation) (com.apple.CoreSimulator.SimDeviceType.iPad-Pro--12-9-inch---2nd-generation-)
iPad Pro (10.5-inch) (com.apple.CoreSimulator.SimDeviceType.iPad-Pro--10-5-inch-)
iPad (6th generation) (com.apple.CoreSimulator.SimDeviceType.iPad--6th-generation-)
iPad (7th generation) (com.apple.CoreSimulator.SimDeviceType.iPad--7th-generation-)
iPad Pro (11-inch) (1st generation) (com.apple.CoreSimulator.SimDeviceType.iPad-Pro--11-inch-)
iPad Pro (12.9-inch) (3rd generation) (com.apple.CoreSimulator.SimDeviceType.iPad-Pro--12-9-inch---3rd-generation-)
iPad Pro (11-inch) (2nd generation) (com.apple.CoreSimulator.SimDeviceType.iPad-Pro--11-inch---2nd-generation-)
iPad Pro (12.9-inch) (4th generation) (com.apple.CoreSimulator.SimDeviceType.iPad-Pro--12-9-inch---4th-generation-)
iPad mini (5th generation) (com.apple.CoreSimulator.SimDeviceType.iPad-mini--5th-generation-)
iPad Air (3rd generation) (com.apple.CoreSimulator.SimDeviceType.iPad-Air--3rd-generation-)
iPad (8th generation) (com.apple.CoreSimulator.SimDeviceType.iPad--8th-generation-)
iPad (9th generation) (com.apple.CoreSimulator.SimDeviceType.iPad-9th-generation)
iPad Air (4th generation) (com.apple.CoreSimulator.SimDeviceType.iPad-Air--4th-generation-)
iPad Pro (11-inch) (3rd generation) (com.apple.CoreSimulator.SimDeviceType.iPad-Pro-11-inch-3rd-generation)
iPad Pro (12.9-inch) (5th generation) (com.apple.CoreSimulator.SimDeviceType.iPad-Pro-12-9-inch-5th-generation)
iPad Air (5th generation) (com.apple.CoreSimulator.SimDeviceType.iPad-Air-5th-generation)
iPad (10th generation) (com.apple.CoreSimulator.SimDeviceType.iPad-10th-generation)
iPad mini (6th generation) (com.apple.CoreSimulator.SimDeviceType.iPad-mini-6th-generation)
iPad Pro (11-inch) (4th generation) (com.apple.CoreSimulator.SimDeviceType.iPad-Pro-11-inch-4th-generation-8GB)
iPad Pro (11-inch) (4th generation) (16GB) (com.apple.CoreSimulator.SimDeviceType.iPad-Pro-11-inch-4th-generation-16GB)
iPad Pro (12.9-inch) (6th generation) (com.apple.CoreSimulator.SimDeviceType.iPad-Pro-12-9-inch-6th-generation-8GB)
iPad Pro (12.9-inch) (6th generation) (16GB) (com.apple.CoreSimulator.SimDeviceType.iPad-Pro-12-9-inch-6th-generation-16GB)
Apple TV (com.apple.CoreSimulator.SimDeviceType.Apple-TV-1080p)
Apple TV 4K (com.apple.CoreSimulator.SimDeviceType.Apple-TV-4K-4K)
Apple TV 4K (at 1080p) (com.apple.CoreSimulator.SimDeviceType.Apple-TV-4K-1080p)
Apple TV 4K (2nd generation) (com.apple.CoreSimulator.SimDeviceType.Apple-TV-4K-2nd-generation-4K)
Apple TV 4K (2nd generation) (at 1080p) (com.apple.CoreSimulator.SimDeviceType.Apple-TV-4K-2nd-generation-1080p)
Apple TV 4K (3rd generation) (com.apple.CoreSimulator.SimDeviceType.Apple-TV-4K-3rd-generation-4K)
Apple TV 4K (3rd generation) (at 1080p) (com.apple.CoreSimulator.SimDeviceType.Apple-TV-4K-3rd-generation-1080p)
Apple Watch (38mm) (com.apple.CoreSimulator.SimDeviceType.Apple-Watch-38mm)
Apple Watch (42mm) (com.apple.CoreSimulator.SimDeviceType.Apple-Watch-42mm)
Apple Watch Series 2 (38mm) (com.apple.CoreSimulator.SimDeviceType.Apple-Watch-Series-2-38mm)
Apple Watch Series 2 (42mm) (com.apple.CoreSimulator.SimDeviceType.Apple-Watch-Series-2-42mm)
Apple Watch Series 3 (38mm) (com.apple.CoreSimulator.SimDeviceType.Apple-Watch-Series-3-38mm)
Apple Watch Series 3 (42mm) (com.apple.CoreSimulator.SimDeviceType.Apple-Watch-Series-3-42mm)
Apple Watch Series 4 (40mm) (com.apple.CoreSimulator.SimDeviceType.Apple-Watch-Series-4-40mm)
Apple Watch Series 4 (44mm) (com.apple.CoreSimulator.SimDeviceType.Apple-Watch-Series-4-44mm)
Apple Watch Series 5 (40mm) (com.apple.CoreSimulator.SimDeviceType.Apple-Watch-Series-5-40mm)
Apple Watch Series 5 (44mm) (com.apple.CoreSimulator.SimDeviceType.Apple-Watch-Series-5-44mm)
Apple Watch SE (40mm) (com.apple.CoreSimulator.SimDeviceType.Apple-Watch-SE-40mm)
Apple Watch SE (44mm) (com.apple.CoreSimulator.SimDeviceType.Apple-Watch-SE-44mm)
Apple Watch Series 6 (40mm) (com.apple.CoreSimulator.SimDeviceType.Apple-Watch-Series-6-40mm)
Apple Watch Series 6 (44mm) (com.apple.CoreSimulator.SimDeviceType.Apple-Watch-Series-6-44mm)
Apple Watch Series 7 (41mm) (com.apple.CoreSimulator.SimDeviceType.Apple-Watch-Series-7-41mm)
Apple Watch Series 7 (45mm) (com.apple.CoreSimulator.SimDeviceType.Apple-Watch-Series-7-45mm)
Apple Watch SE (40mm) (2nd generation) (com.apple.CoreSimulator.SimDeviceType.Apple-Watch-SE-40mm-2nd-generation)
Apple Watch SE (44mm) (2nd generation) (com.apple.CoreSimulator.SimDeviceType.Apple-Watch-SE-44mm-2nd-generation)
Apple Watch Series 8 (41mm) (com.apple.CoreSimulator.SimDeviceType.Apple-Watch-Series-8-41mm)
Apple Watch Series 8 (45mm) (com.apple.CoreSimulator.SimDeviceType.Apple-Watch-Series-8-45mm)
Apple Watch Ultra (49mm) (com.apple.CoreSimulator.SimDeviceType.Apple-Watch-Ultra-49mm)
== Runtimes ==
iOS 13.6 (13.6 - 17G64) - com.apple.CoreSimulator.SimRuntime.iOS-13-6 (unavailable, The iOS 13.6 simulator runtime is not supported on hosts after macOS 12.99.0.)
iOS 16.2 (16.2 - 20C52) - com.apple.CoreSimulator.SimRuntime.iOS-16-2
tvOS 16.1 (16.1 - 20K67) - com.apple.CoreSimulator.SimRuntime.tvOS-16-1
watchOS 9.1 (9.1 - 20S75) - com.apple.CoreSimulator.SimRuntime.watchOS-9-1
== Devices ==
-- iOS 13.6 --
-- iOS 16.2 --
    iPhone SE (3rd generation) (A754774F-A581-47F6-B8A1-84416A659838) (Shutdown) 
    iPhone 14 (73FC4795-80E6-4ED9-9BB5-716206BDAFCD) (Shutdown) 
    iPhone 14 Plus (5774F76E-3D72-4417-AB3D-51115EB2D6DC) (Shutdown) 
    iPhone 14 Pro (5F59EF8E-10AF-4D7A-BA27-6C9FD856BAC6) (Shutdown) 
    iPhone 14 Pro Max (14339AC4-EEDD-4857-BEA0-DCA15764BFBF) (Shutdown) 
    iPad Air (5th generation) (E63A817E-88B5-4374-932D-3C732A4E2548) (Shutdown) 
    iPad (10th generation) (31145DE7-E31D-497E-A0A1-4303B9A5C6BF) (Shutdown) 
    iPad mini (6th generation) (0B29D9EA-6363-4487-B9F2-168B6264F1CD) (Shutdown) 
    iPad Pro (11-inch) (4th generation) (D5501C07-6627-4D77-B212-4AFB45F69EDA) (Shutdown) 
    iPad Pro (12.9-inch) (6th generation) (2A72DCF3-BC68-4D1F-ACE6-DF45ABA2273D) (Shutdown) 
-- tvOS 16.1 --
-- watchOS 9.1 --
== Device Pairs ==
```


```
dotnet build \
    ./samples/AppMAUIwBlazor/AppMAUIwBlazor.csproj \
        -t:Run \
            -f:net6.0-ios \
            -p:_DeviceName=:v2:udid=$(xcrun simctl getenv "iPhone 14" SIMULATOR_UDID)

dotnet build \
    ./samples/AppMAUIwBlazor/AppMAUIwBlazor.csproj \
        -t:Run \
            -f:net7.0-ios \
            -p:RuntimeIdentifier=ios-arm64 \
            -p:_DeviceName=:v2:udid=$(xcrun simctl getenv "iPhone 14" SIMULATOR_UDID)
```

```
dotnet tool restore
dotnet cake \
    --target=VS \
    --pack \
    --sln="../MauRepro/MauRepro.sln"
```

```
./bin/dotnet/dotnet \
    build \
        -t:Run \
            -f:net6.0-android \
        ../MauRepro/MauRepro/MauiRepro.csproj
```


https://vladislavantonyuk.github.io/articles/The-first-project-with-.NET-MAUI/

```
dotnet build \
    -t:Run \
        -f:net6.0-android \
            -p:_DeviceName=
        ./MauRepro/MauRepro/MauiRepro.csproj
```


```
dotnet build \
    -t:Run \
        -f:net6.0-maccatalyst \
            -p:RuntimeIdentifier=ios-arm64 \
        ./MauRepro/MauRepro/MauiRepro.csproj
```


```
dotnet build \
    -t:Run \
        -f:net6.0-maccatalyst \
        ./samples/AppMAUI/AppMAUI.csproj
```

```
dotnet build \
    -t:Run \
        -f:net6.0-ios \
            -p:RuntimeIdentifier=ios-arm64 \
            -p:_DeviceName=:v2:udid=$(xcrun simctl getenv "iPhone 14" SIMULATOR_UDID) \
        ./samples/AppMAUI/AppMAUI.csproj
```

```
./m/bin/dotnet/dotnet \
    build \
        -t:Run \
            -f:net6.0-android \
            ./MauRepro/MauRepro/MauiRepro.csproj
```

```
dotnet \
    build \
        -t:Run \
            -f:net6.0-android \
            ../MauRepro/MauRepro/MauiRepro.csproj
```
