# Output Formatting 

output-formatting.md

*   Caveman 

    *   https://github.com/juliusbrussee/caveman

    *   force AI agents into a minimal, terse style that saves on output tokens without paying for extra prompts
    
    *   https://github.com/JuliusBrussee/skills/blob/main/skills/caveman/SKILL.md

*   Headroom

    *   https://github.com/chopratejas/headroom

    *   https://headroom-docs.vercel.app/docs

    *   open-source 
    
    *   desktop and CLI context compressor 
    
        *   shrinks LLM context 
        
        *   limits response length, 
        
    *   working seamlessly with major coding tools.
    
    *   https://dev.to/arshtechpro/headroom-cut-your-llm-token-usage-by-up-to-95-without-changing-your-answers-5g06
    
*   System Prompting: 

    *   dedicated Caveman repo not needed 
    
    *   inject system instructions to constrain the agent's output
    
    *   A popular baseline involves appending a concise system rule directly inside your configuration: 
    
        ```
        Respond in absolute barebones technical text. 
        Skip all conversational filler. 
        Explain what changed, why, and what is next in under 30 words.
        ```
