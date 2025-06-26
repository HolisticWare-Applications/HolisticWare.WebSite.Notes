# Microsoft Documentation

microsoft.md

https://github.com/MicrosoftDocs/mcp

https://learn.microsoft.com/api/mcp

Note: This endpoint is designed for programmatic access by MCP clients via Streamable HTTP. It does not support direct access from a web browser and may return a 405 Method Not Allowed error if accessed manually.

```json
{
  "microsoft.docs.mcp": 
  {
    "type": "http",
    "url": "https://learn.microsoft.com/api/mcp"
  }
}
```

Project/Workspace

```
.cursor/mcp.json
.vscode/mcp.json
```

User/Global

```
$HOME$/.cursor/mcp.json

```


Windows %APPDATA%\Code\User\settings.json
macOS $HOME/Library/Application\ Support/Code/User/settings.json
Linux $HOME/.config/Code/User/settings.json


macOS

    "$HOME/Library/Application Support/Claude/claude_desktop_config.json"

Windows: %APPDATA%\Claude\claude_desktop_config.json
