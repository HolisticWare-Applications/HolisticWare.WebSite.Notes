# MAUI version

version.md

*   https://github.com/jfversluis/maui-version

```shell
# Apply latest stable release
maui-version apply --channel stable
maui-version apply -c stable  # Short version

# With specific project path
maui-version apply --channel stable --project ./src/MyMauiApp
maui-version apply -c stable -p ./src/MyMauiApp  # Short version
```


```shell
# Apply latest nightly build (prompts for .NET version selection and TFM update confirmation)
maui-version apply --channel nightly
maui-version apply -c nightly  # Short version

# Apply nightly build with specific .NET version (auto-updates TFMs without prompting)
maui-version apply --channel nightly --target-framework net10.0
maui-version apply -c nightly -f net10.0  # Short version

# With specific project path
maui-version apply --channel nightly --project ./MyApp
maui-version apply -c nightly -p ./MyApp  # Short version
```


```shell
# Apply PR build by number (prompts for .NET version and TFM update confirmation)
maui-version apply --apply-pr 32931
maui-version apply -pr 32931  # Short version

# Apply PR build with specific .NET version (auto-updates TFMs without prompting)
maui-version apply --apply-pr 32931 --target-framework net10.0
maui-version apply -pr 32931 -f net10.0  # Short version

# With project path
maui-version apply --apply-pr 32931 --project ./src/MyApp
maui-version apply -pr 32931 -p ./src/MyApp  # Short version
```