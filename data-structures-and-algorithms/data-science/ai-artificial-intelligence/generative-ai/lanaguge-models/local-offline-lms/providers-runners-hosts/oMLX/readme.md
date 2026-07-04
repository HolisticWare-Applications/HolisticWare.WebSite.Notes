

*   https://omlx.ai/

*   https://github.com/jundot/omlx

```
export OPENAI_PORT=11464

omlx serve \
    --model-dir $HOME/.lmstudio/models/ \
    --port $OPENAI_PORT \
```

OpenAI-compatible client can connect to 

    export OPENAI_PORT=11464
    open http://localhost:$OPENAI_PORT/v1

A built-in chat UI is also available at 

    export OPENAI_PORT=11464
    open http://localhost:$OPENAI_PORT/admin/chat


```
```

```shell
brew tap jundot/omlx https://github.com/jundot/omlx
brew install omlx
```

```shell
# Upgrade to the latest version
brew update && brew upgrade omlx
```
