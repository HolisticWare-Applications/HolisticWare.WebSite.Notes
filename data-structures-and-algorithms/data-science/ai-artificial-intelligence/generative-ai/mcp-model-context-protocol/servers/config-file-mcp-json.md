# Config File `mcp.json`

config-file-mcp-json.md



## 

```json
     "mcp": 
     {
         "servers": 
         {
             "files-localhost-debug": 
             {
                 "type": "http",
                 "url": "http://localhost:3001/mcp",
             }
         }
     },
```

```json
        "microsoft.docs.mcp": 
        {
          "type": "http",
          "url": "https://learn.microsoft.com/api/mcp"
        }
```

```json
        "github": 
        {
           "command": "docker",
           "args": 
           [
                 "run",
                 "-i",
                 "--rm",
                 "-e",
                 "GITHUB_PERSONAL_ACCESS_TOKEN",
                 "ghcr.io/github/github-mcp-server"
           ],
           "env": 
           {
                 "GITHUB_PERSONAL_ACCESS_TOKEN": "..."
           }
        }
```

```json
    "sequential-thinking": 
    {
      "command": "npx",
      "args":
      [
        "-y",
        "@modelcontextprotocol/server-sequential-thinking"
      ]
    }
```
## VSCode


```
.vscode/mcp.json
```


## Cursor

```
.cursor/mcp.json
```

## Claude

```
$HOME/Library/Application Support/Claude/claude_desktop_config.json
```

```json
{
    "mcpServers":
    {
        "basic-memory":
        {
          "command": "uvx",
          "args":
          [
            "basic-memory",
            "mcp"
          ]
        },
        "filesystem":
        {
          "command": "npx",
          "args": 
          [
            "-y",
            "@modelcontextprotocol/server-filesystem",
            "/Users/username/Desktop",
            "/Users/username/Downloads"
          ]
        },
        "playwright":
        {
          "command": "npx",
          "args": 
          [
            "@playwright/mcp@latest"
          ]
        }
    }
}
```







