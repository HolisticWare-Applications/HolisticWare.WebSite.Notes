

https://www.reddit.com/r/opencodeCLI

https://news.ycombinator.com/item?id=44482504

https://cefboud.com/posts/coding-agents-internals-opencode-deepdive/

Models

opencode models ollama


Which REIGNS SUPREME in OpenCode: Sonic or Claude Sonnet 4?

    https://www.youtube.com/watch?v=kHGRjvprXAo&list=PLAIphj_4bMitPPYtUhKYX1mSpZPApN7C7&index=3

    https://github.com/darrenhinde/ai-agent-test-repo

    Darren Hinde
    darrenhinde

    https://github.com/darrenhinde?tab=repositories


"Create C# classes from given JSON schema ./"

```shell
export MODELS=$(opencode models ollama)
export PROMPT='What is .NET?'

IFS=$'\n'
# ZSH does not split words by default (like other shells):
setopt sh_word_split

for MODEL in $MODELS
do
    if [[ $MODEL == "#"* ]]
    then
        echo "......................................................................"
        echo $MODEL
        continue
    fi

    echo MODEL=$MODEL
    opencode \
        --model $MODEL \
        --prompt "$PROMPT"

done
```