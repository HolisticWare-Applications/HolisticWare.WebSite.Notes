

Error		
App manifest validation failed. File contains invalid XML root 
'{http://schemas.microsoft.com/appx/manifest/foundation/windows10}Package'.	


https://github.com/Q42/Q42.WinRT/blob/master/Q42.WinRT.SampleApp/Package.appxmanifest


<?xml version="1.0" encoding="utf-8"?>
<Package xmlns="http://schemas.microsoft.com/appx/2010/manifest" xmlns:m2="http://schemas.microsoft.com/appx/2013/manifest">
  <Identity Name="3933ddee-9259-46cf-8c92-1423e663d9d2" Publisher="CN=moljac" Version="1.0.0.0" />
  <Properties>
    <DisplayName>Xamarin.Auth.Sample.WinRTWindows81</DisplayName>
    <PublisherDisplayName>moljac</PublisherDisplayName>
    <Logo>Assets\StoreLogo.png</Logo>
  </Properties>
  <Prerequisites>
    <OSMinVersion>6.3.0</OSMinVersion>
    <OSMaxVersionTested>6.3.0</OSMaxVersionTested>
  </Prerequisites>
  <Resources>
    <Resource Language="x-generate" />
  </Resources>
  <Applications>
    <Application Id="App" Executable="$targetnametoken$.exe" EntryPoint="Xamarin.Auth.Sample.App">
      <m2:VisualElements DisplayName="Xamarin.Auth.Sample.WinRTWindows81" Square150x150Logo="Assets\Logo.png" Square30x30Logo="Assets\SmallLogo.png" Description="Xamarin.Auth.Sample.WinRTWindows81" ForegroundText="light" BackgroundColor="#464646">
        <m2:SplashScreen Image="Assets\SplashScreen.png" />
      </m2:VisualElements>
    </Application>
  </Applications>
  <Capabilities>
    <Capability Name="internetClient" />
  </Capabilities>
</Package>



