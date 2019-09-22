# Agents

agents.md

## GitLab

```
sudo \
    curl \
        --output /usr/local/bin/gitlab-runner \
        https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-darwin-amd64
sudo chmod +x /usr/local/bin/gitlab-runner
cd ~
gitlab-runner install
gitlab-runner start
```

```
brew install gitlab-runner
brew services start gitlab-runner
```