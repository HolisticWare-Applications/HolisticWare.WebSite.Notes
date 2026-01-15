# iOS

ios.md

*   https://qualitycoding.org/github-actions-ci-xcode/

```yaml
steps:
  - name: Checkout code
    uses: actions/checkout@v4

  - name: Set up Xcode
    uses: maxim-lobanov/setup-xcode@v1
    with:
      xcode-version: '26.2'
    
  - name: Setup .NET 10.0.100
    uses: actions/setup-dotnet@v4
    with:
      dotnet-version: 10.0.100
      include-prerelease: true
      
  - name: Install .NET MAUI workload
    run: |
      dotnet --info
      dotnet workload install maui \
        --from-rollback-file https://aka.ms/dotnet/maui/10.0.100.json \
        --source https://api.nuget.org/v3/index.json

```

*   https://github.com/actions/runner-images/blob/main/images/macos/macos-26-arm64-Readme.md

```bash
#!/bin/bash
 
SCHEME='Mastermind'
DESTINATION='platform=iOS Simulator,OS=latest,name=iPhone 15'
 
xcodebuild \
  test \
    -scheme $SCHEME \
    -sdk iphonesimulator 
    -destination "$DESTINATION" \
    CODE_SIGNING_ALLOWED='NO'
```

```shell
sudo xcode-select -s /Applications/Xcode_26.2.app
```
  