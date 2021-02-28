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

*   https://stackoverflow.com/questions/49268560/build-net-solution-using-gitlab-ci-pipeline