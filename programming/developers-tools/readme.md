# Developer tools

## Kubernetes

### krew

*   Krew is the package manager for kubectl plugins.

*   https://github.com/kubernetes-sigs/krew/

*   https://krew.sigs.k8s.io/docs/user-guide/setup/install/

```
(
  set -x; cd "$(mktemp -d)" &&
  OS="$(uname | tr '[:upper:]' '[:lower:]')" &&
  ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')" &&
  KREW="krew-${OS}_${ARCH}" &&
  curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/${KREW}.tar.gz" &&
  tar zxvf "${KREW}.tar.gz" &&
  ./"${KREW}" install krew
)
```

### k9s

*   Kubernetes CLI To Manage Your Clusters In Style!

*   https://github.com/derailed/k9s

```
brew install \
    derailed/k9s/k9s
```

### ktop 

*   top-like tool for your Kubernetes clusters.

*   https://github.com/vladimirvivien/ktop

```
brew tap vladimirvivien/oss-tools
brew install \
    ktop
```

### kubectx

*   switch between contexts (clusters) on kubectl faster.

*   https://github.com/ahmetb/kubectx

```
kubectl krew install ctx
kubectl krew install ns
```

```
brew install kubectx
```

### kdash

*   simple and fast dashboard for Kubernetes.

*   https://github.com/kdash-rs/kdash

```
brew tap kdash-rs/kdash
brew install \
    kdash

# If you need to be more specific, use:
brew install \
    kdash-rs/kdash/kdash
```

### kubescape

*   Kubernetes security platform for your IDE, CI/CD pipelines, and clusters.

*   https://github.com/kubescape/kubescape

```
kubectl krew update
kubectl krew install kubescape
```

```
# To install Kubescape from the official repository:
brew install \
    kubescape
# To get Git support, install the Kubescape tap and the kubescape-cli package:
brew tap kubescape/tap
brew install \
    kubescape-cli
```

## Containers

### ctop

*   top-like interface for container metrics.

*   https://github.com/bcicen/ctop


### lazydocker

*   simple terminal UI for both docker and docker-compose.

*   https://github.com/jesseduffield/lazydocker

Normally lazydocker formulcan be found in the Homebrew core but we suggest you to tap our formulto get frequently updated one. It works with Linux, too.

```
# Tap:
brew install \
    jesseduffield/lazydocker/lazydocker
# Core:
brew install \
    lazydocker
```

### dive

*   tool for exploring each layer in docker image.

*   https://github.com/wagoodman/dive

```
brew install \
    dive
```

## Files/Text

### jq

*   Command-line JSON processor.

*   https://github.com/jqlang/jq


### bat

*   cat(1) clone with wings.

*   https://github.com/sharkdp/bat

```
brew install \
    bat
```

### ripgrep

*   Recursively search directories for regex pattern while respecting your gitignore.

*   https://github.com/BurntSushi/ripgrep


### rsync

*   fast and extraordinarily versatile file copying tool for both remote and local files.

*   https://github.com/RsyncProject/rsync

## Git

### lazygit

*   Simple terminal UI for git commands.

*   https://github.com/jesseduffield/lazygit

```
# Tap:
brew install \
    jesseduffield/lazygit/lazygit
# Core:
brew install \
    lazygit
```

### gitui

*   Blazing fast terminal-ui for git written in Rust.

*   https://github.com/extrawurst/gitui

## Development

### ATAC

*   simple API client (postman like) in your terminal.

*   https://github.com/Julien-cpsn/ATAC

```
brew tap julien-cpsn/atac
brew install \
    atac
```

### veget

*   HTTP load testing tool and library.

*   https://github.com/tsenart/vegeta

```
brew update
brew install \
    vegeta
```

### k6

*   modern load testing tool, using Go and JavaScript.

*   https://github.com/grafana/k6


### httpie

*   modern, user-friendly command-line HTTP client for the API era.

*   https://github.com/httpie/cli

```
brew install \
    httpie
```

### asciinem

*   Terminal session recorder.

*   https://github.com/asciinema/asciinema

```
brew install \
    asciinema
```

## Networking

### dog

*   command-line DNS client.

*   https://github.com/ogham/dog

```
brew install \
    dog
```


### gping

*   Ping, but with graph.

*   https://github.com/orf/gping

```
brew install \
    gping
```

## Workstation


### tmux

*   terminal multiplexer.

*   https://github.com/tmux/tmux/wiki


### zellij

*   terminal workspace with batteries included.

*   https://github.com/zellij-org/zellij

### btop

*   monitor of resources.

*   https://github.com/aristocratos/btop

### chezmoi

*   Manage your dotfiles across multiple diverse machines, securely.

*   https://github.com/twpayne/chezmoi


## Terminal

*   https://ghostty.org/


