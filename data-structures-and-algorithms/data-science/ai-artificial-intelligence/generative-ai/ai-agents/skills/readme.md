# Agent Skills

skills.md

*   open standard

    *   https://agentskills.io/home

*   Copilot

    *   https://code.visualstudio.com/docs/copilot/customization/agent-skills

    *   folders of instructions, scripts, and resources for special tasks
    
        *   GitHub Copilot can load when relevant to perform specialized tasks

    *   https://visualstudiomagazine.com/articles/2026/01/11/hand-on-with-new-github-copilot-agent-skills-in-vs-code.aspx

    *   
    
        ```
        $PROJECT_ROOT/.github/skills/
        $PROJECT_ROOT/.github/skills/developer-dotnet/SKILL.md
        $PROJECT_ROOT/.github/skills/developer-csharp/SKILL.md
        $PROJECT_ROOT/.github/skills/developer-maui/SKILL.md
        $PROJECT_ROOT/.github/skills/developer-blazor/SKILL.md
        ```

        ```
        $PROJECT_ROOT/.claude/skills/
        $PROJECT_ROOT/.claude/skills/developer-dotnet/SKILL.md
        $PROJECT_ROOT/.claude/skills/developer-csharp/SKILL.md
        $PROJECT_ROOT/.claude/skills/developer-maui/SKILL.md
        $PROJECT_ROOT/.claude/skills/developer-blazor/SKILL.md
        ```


```markdown
---
name: straighten-quotes
description: Cleans up HTML text by fixing quotes, apostrophes, em dashes, and double spaces for CMS compatibility.
---

# Instructions

When I ask you to "clean this article" or "fix formatting," perform all these steps:

1. Replace all curly double quotes with straight double quotes.
2. Replace all curly single quotes and apostrophes with straight single quotes.
3. Find every long dash and replace it with two short dashes (--).
4. Remove any double spaces between words and replace them with a single space.

```