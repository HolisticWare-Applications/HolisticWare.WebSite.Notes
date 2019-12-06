# Azure DevOps Pipeline YAML Samples

azure-devops-pipelines-yaml-samples.md

```
      demands:
      - msbuild
      - visualstudio
      - vstest
      - DotNetFramework


      - script: choco install visualstudio2019buildtools
      - script: vs_buildtools.exe --add Microsoft.VisualStudio.Component.NuGet --quiet
      - script: choco install dotnetcore-sdk --pre
      - script: choco install dotnetcore-sdk
```

## Samples

*   https://github.com/dotnet/reactive/blob/master/azure-pipelines.ix.yml

*   https://github.com/RssBandit/RssBandit/blob/master/azure-pipelines.yml

*   https://github.com/objectcomputing/OpenDDS/blob/master/azure-pipelines.yml

*   https://github.com/GitTools/GitVersion/blob/master/azure-pipelines.yml


```
variables:
  solution: '**/*.sln'
  buildPlatform: 'x64'
  buildConfiguration: 'Release'

steps:
- task: NuGetToolInstaller@0

- task: NuGetCommand@2
  inputs:
    restoreSolution: '$(solution)'

- task: VSBuild@1
  inputs:
    solution: '$(solution)'
    platform: '$(buildPlatform)'
configuration: '$(buildConfiguration)'
```

