# `gitlab-runner` 

gitlab-runner.md


```
brew services start gitlab-runner
brew install gitlab-runner
brew link gitlab-runner
brew link --overwrite gitlab-runner
mkdir ~/.gitlab-runner
touch ~/.gitlab-runner/config.toml
```

```
gitlab-runner
gitlab-runner run
```


To install GitLab Runner using Homebrew:

Install GitLab Runner.

```
brew \
    install \
        gitlab-runner
```


Install GitLab Runner as a service and start it.

```
brew \
    services start \
        gitlab-runner
```


## .NET

*   https://stackoverflow.com/questions/49268560/build-net-solution-using-gitlab-ci-pipeline


### Cake

https://stackoverflow.com/questions/41943517/how-to-use-cake-net-with-gitlab-ci

https://stackoverflow.com/questions/33524766/using-gitlabci-with-c-sharp

https://gitlab.com/gitlab-com/blog-posts/-/issues/330

https://stackoverflow.com/questions/42757115/has-anyone-successfully-built-xamarin-forms-with-gitlab-ci


https://github.com/linianhui/cake.example/blob/master/.gitlab-ci.yml

https://github.com/cake-build/cake/blob/develop/.gitlab-ci.yml


## Local Tests

*   https://medium.com/@umutuluer/how-to-test-gitlab-ci-locally-f9e6cef4f054

https://www.lambdatest.com/blog/use-gitlab-ci-to-run-test-locally/

https://stackoverflow.com/questions/49090675/how-can-i-test-gitlab-ci-yml



```
gitlab-runner exec shell build:mono-lite

```

```
gitlab-runner exec docker build:mono-lite

```