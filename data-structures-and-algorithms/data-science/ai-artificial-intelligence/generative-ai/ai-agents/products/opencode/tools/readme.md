# Tools

readme.md

*   locations

    ```
    ~/.config/opencode/opencode.jsonc
    $PROJECT/.opencode/opencode.jsonc
    ```

*   samples

    ```
    https://github.com/search?ref=advsearch&q=path%3A.opencode%2Ftools%2F++path%3A*.ts+Bun.%24&type=code
    https://github.com/search?ref=advsearch&q=path%3A.opencode%2Ftool%2F++path%3A*.ts+Bun.%24&type=code
    https://github.com/search?ref=advsearch&q=path%3A.opencode%2Ftools%2F++path%3A*.ts+Bun.%24&type=code
    https://github.com/search?ref=advsearch&q=path%3A.opencode%2Ftool%2F++path%3A*.ts+Bun.%24&type=code
    ```

    *   .opencode/agent/code-review.md

    *   https://github.com/tvdavies/opencode-kit/blob/main/.opencode/agent/code-review.md?plain=1#L42

    *   ./opencode.json

        *   https://github.com/tvdavies/opencode-kit/blob/main/opencode.json

    *   .opencode/skill/pr-review/SKILL.md

    *   https://github.com/tvdavies/opencode-kit/blob/main/.opencode/skill/pr-review/SKILL.md


    *   https://github.com/uncscode/particula/blob/main/.opencode/agent/documentation.md?plain=1#L35

    *   https://github.com/uncscode/particula/blob/main/.opencode/opencode.local.example.json

    *   https://github.com/marcusquinn/aidevops/blob/main/.opencode/tool/system-cleanup.ts





https://github.com/search?ref=advsearch&q=path%3A.opencode%2Ftool%2F++path%3A*.ts+Bun.%24&type=code

https://github.com/search?ref=advsearch&q=path%3A.opencode%2Ftools%2F++path%3A*.ts+Bun.%24&type=code

opencode tools

https://github.com/p-lemonish/ollama-x-opencode


{
  "$schema": "https://opencode.ai/config.json",
  "provider": {
    "ollama": {
      "npm": "@ai-sdk/openai-compatible",
      "options": {
        "baseURL": "http://localhost:11434/v1"
      },
      "models": {
        "qwen3:8b-16k": {
          "tools": true
        }
      }
    }
  }
}