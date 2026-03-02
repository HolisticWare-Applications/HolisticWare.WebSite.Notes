# OpenCode

readme.md

*   https://opencode.ai/

*   https://github.com/sst/opencode


```shell
brew \
    install \
        opencode

brew \
    install \
        --cask \
            opencode-desktop
```

*   Easy OLLAMA Setup with OpenCode in MINUTES

    *   https://www.youtube.com/watch?v=RIvM-8Wg640
    
*   OpenCode Skills Feature - The Lazy Loading Game Changer

    *   https://www.youtube.com/watch?v=M0P_wzJPxMU

        *   https://github.com/darrenhinde/Opencode-skills-example

*   opencode

    *   https://www.reddit.com/r/GithubCopilot/comments/1pxicdu/recommending_everyone_to_download_opencode_and/

*   Opencode Is Probably The Best Coding Agent I've Ever Used

    *   https://www.youtube.com/watch?v=e9j2iEwJru0


*   You've Been Using AI the Hard Way (Use This Instead)

    *   https://www.youtube.com/watch?v=MsQACpcuTkU

*   AI in the Terminal - Complete Guide

    *   https://github.com/theNetworkChuck/ai-in-the-terminal

OpenCode

Tools

    Built in

    https://opencode.ai/docs/tools

    I Created CUSTOM AI Tools with THIS Simple Trick - Opencode Tools

        https://www.youtube.com/watch?v=jFnrRTNwMLM

    

    bun init
    bun install


    Steps to Create and Use a Custom Tool:
Define the Tool: Create a file like .opencode/tools/calculator.ts.
Use the Helper: Import { tool } from @opencode-ai/plugin and define the tool with description, args (using tool.schema), and an execute function.
Implementation Example:
typescript
import { tool } from "@opencode-ai/plugin"
export default tool({
  description: "Adds two numbers",
  args: {
    a: tool.schema.number().describe("First number"),
    b: tool.schema.number().describe("Second number"),
  },
  async execute(args) {
    return args.a + args.b;
  },
})
Usage: Once defined, the LLM within OpenCode can automatically use this tool when relevant to the task.
Permissions: Configure permissions in opencode.json to allow, deny, or require approval (ask) for tools. 
OpenCode.ai
OpenCode.ai
 +4
Key Considerations:
File Naming: The filename determines the tool's name.
Multiple Tools: You can export multiple tools from one file; they will be named <filename>_<exportname>.
Commands vs. Tools: While tools are for functional code execution, you can also create custom CLI-style commands using markdown files in .opencode/commands/. 
OpenCode.ai
OpenCode.ai
 +1

Config

https://github.com/search?q=path%3A**%2Fopencode.jsonc&type=code

https://github.com/devtobi/dotfiles/blob/main/private_dot_config/opencode/opencode.jsonc

https://github.com/joelhooks/opencode-config/blob/main/opencode.jsonc

https://github.com/stonelyd/opencode-altium-design-reviewer/blob/dev/.opencode/opencode.jsonc

https://github.com/elithrar/dotfiles/blob/main/.config/opencode/opencode.jsonc
