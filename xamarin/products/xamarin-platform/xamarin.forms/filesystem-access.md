# FileSystem Access

filesystem-access.md

## Xamarin.Forms

*   https://docs.microsoft.com/en-us/xamarin/xamarin-forms/data-cloud/data/files?tabs=macos#Loading_Files_Embedded_as_Resources

*   AndroidResourcs

    *   https://github.com/moljac/microsoft-authentication-library-for-dotnet/blob/trwalke/AndroidBinding_AX_AS_XF/BindningTestApp/BindningTestApp.csproj#L80-L84

    ```
    <AndroidResource Include="Resources\raw\config.json">
      <Generator>MSBuild:UpdateGeneratedFiles</Generator>
      <SubType>Designer</SubType>
      <CopyToOutputDirectory>Always</CopyToOutputDirectory>
    </AndroidResource>
    ```
*   AndroidAsset

    *   https://github.com/moljac/microsoft-authentication-library-for-dotnet/blob/trwalke/AndroidBinding_AX_AS_XF/BindningTestApp/BindningTestApp.csproj#L69-L71

    ```
    <AndroidAsset Include="Assets\config.json">
      <CopyToOutputDirectory>Always</CopyToOutputDirectory>
    </AndroidAsset>
    ```

*   Content

    *   https://github.com/moljac/microsoft-authentication-library-for-dotnet/blob/trwalke/AndroidBinding_AX_AS_XF/BindningTestApp/BindningTestApp.csproj#L72-L76

    ```
    <Content Include="config.json">
      <Generator>MSBuild:UpdateGeneratedFiles</Generator>
      <SubType>Designer</SubType>
      <CopyToOutputDirectory>Always</CopyToOutputDirectory>
    </Content>
    ```

## Xamarin.Android

## #File

*   https://gist.github.com/IlyaLavrov97/a76063a49515764b60d5fba3ebbb2662

