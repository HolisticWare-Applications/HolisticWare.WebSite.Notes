# Claude Code Cost tracking

cost-tracking.md

https://github.com/Astro-Han/claude-lens

Option A: Plugin (recommended)
/plugin marketplace add Astro-Han/claude-lens
/plugin install claude-lens
/claude-lens:setup
Option B: Manual
curl -o ~/.claude/statusline.sh \
  https://raw.githubusercontent.com/Astro-Han/claude-lens/main/claude-lens.sh
chmod +x ~/.claude/statusline.sh

claude config set statusLine.command ~/.claude/statusline.sh

o remove: claude config set statusLine.command ""


https://www.reddit.com/r/ClaudeCode/comments/1ryeymd/claude_code_2x_usage_is_insane/


