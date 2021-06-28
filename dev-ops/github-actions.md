# GitHub Actions

github-actions.md

# GitHub Actions

## Setup `dotnet`

*   https://github.com/actions/setup-dotnet


## Local tests


https://github.com/nektos/act

```
brew install act
```


curl https://raw.githubusercontent.com/nektos/act/master/install.sh | sudo bash

```
choco install act-cli
```


```
act
```


https://mauricius.dev/run-and-debug-github-actions-locally/

## Links / References

*   https://www.gep13.co.uk/blog/getting-started-with-github-actions


*   https://github.blog/2019-08-08-github-actions-now-supports-ci-cd/

*   awsome

    *   https://github.com/sdras/awesome-actions


*   https://devopsjournal.io/blog/2019/10/26/Deploy-dotnetcore-webapp-with-GitHub-Actions

*   https://timheuer.com/blog/building-net-framework-apps-using-github-actions/


## Badges

```
https://github.com/<OWNER>/<REPOSITORY>/workflows/<WORKFLOW_NAME>/badge.svg
```

For example:

YAML file with Workflow name `build-source`:

```
https://github.com/HolisticWare/HolisticWare.Core.Text/blob/master/.github/workflows/build.yml#L2
```

```
https://github.com/holisticware/Holisticware.Core.Text/workflows/build-source/badge.svg
```
