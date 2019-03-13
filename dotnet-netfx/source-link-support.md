# SourceLink support

source-link-support.md

```
  <!-- 
  =================================================================================================================
  SourceLink
  https://github.com/dotnet/sourcelink
  -->
  <PropertyGroup>
    <!-- Optional: Publish the repository URL in the built .nupkg (in the NuSpec <Repository> element) -->
    <PublishRepositoryUrl>true</PublishRepositoryUrl>
 
    <!-- Optional: Embed source files that are not tracked by the source control manager in the PDB -->
    <EmbedUntrackedSources>true</EmbedUntrackedSources>

    <!-- Optional: Include the PDB in the built .nupkg -->
    <AllowedOutputExtensionsInPackageBuildOutputFolder>$(AllowedOutputExtensionsInPackageBuildOutputFolder);.pdb</AllowedOutputExtensionsInPackageBuildOutputFolder>
  </PropertyGroup>
  <!-- 
  SourceLink
  =================================================================================================================
  -->
  <ItemGroup>
    <PackageReference Include="Microsoft.SourceLink.GitHub" Version="1.0.0-beta-63127-02" PrivateAssets="All"/>
  </ItemGroup>
```


```
    <!--
    ------------------------------------------------------------------------------------------------------------
    SourceLink
    https://github.com/dotnet/sourcelink
    -->
    <!--
    Github hosted projects
    -->
    <!--
    Azure DevOps hosted (VSTS)
    <PackageReference Include="Microsoft.SourceLink.Vsts.Git" Version="1.0.0-beta-63127-02" PrivateAssets="All"/>
    
    Team Foundtion Server TFS
    <PackageReference Include="Microsoft.SourceLink.Tfs.Git" Version="1.0.0-beta-63127-02" PrivateAssets="All"/>
    <SourceLinkTfsGitHost Include="tfs-server-name" VirtualDirectory="tfs"/>
    
    Gitlab
    <PackageReference Include="Microsoft.SourceLink.GitLab" Version="1.0.0-beta-63127-02" PrivateAssets="All"/>    
    
    Bitbucket
    <PackageReference Include="Microsoft.SourceLink.Bitbucket.Git" Version="1.0.0-beta-63127-02" PrivateAssets="All"/>
    -->
    
    <!--
    SourceLink
    ------------------------------------------------------------------------------------------------------------
    -->
```