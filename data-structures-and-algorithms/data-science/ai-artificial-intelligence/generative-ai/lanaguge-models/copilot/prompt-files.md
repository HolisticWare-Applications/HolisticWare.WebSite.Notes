# Prompt Files

prompt-files.md

*   https://github.com/search?q=path%3A.github%2F**%2Fprompts%2F*.md&type=code&ref=advsearch

    ```
    path:.github/**/prompts/*.md
    ```

*   2 types

    *   Custom instructions 

        *   use the `.github/copilot-instructions.md` 
        
        *   added to every request you send with Copilot
        
        *   feature is available for VS and VS Code. 

    *   Reusable prompt files 

        *   experimental feature only available in VS Code currently 
        
            2025-04-02 
        
        *   docs
        
            Custom instructions for GitHub Copilot in VS Code for how to turn them on and use them. 
            
        *   the same customization options.

            *   Regardless of which model you pick when working with the GitHub Copilot chat pane, 

        *   by default are stored in 
        
            *   `.github/prompts/promptfilename.md`

            *   `https://github.com/julielaursen/portfolio-playwright-tests/tree/main/.github/prompts`

            *   https://github.com/mxschmitt/generate-test-with-copilot/blob/main/.github/prompts/generate_test.prompt.md
            


        *   are only used when you reference them directly. 
        
            *   more specific tasks or context you only want to include for specific scenarios

        *   Usage

            *   To enable prompt files, configure in VS Code setting

                *   `@chat.promptFiles`

                *   vscode://settings/chat.promptFiles

## Readme

*   https://github.com/instructa/ai-prompts
