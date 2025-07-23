# Editors

editors.md

*   Visual Studio Code / VSCode / Code

*   Cursor

    *   based on VSCode

*   Windsurf / Codium / VSCodium

    *   based on VSCode

        ```
        brew install \
            --cask \
                windsurf \
                windsurf@next \
        ```

## Configurations

*   VS Code

    *   Workspace / Project	
    
        *   MacOSX / Linux

            ```
            <project_folder>/.vscode/mcp.json
            ```

        *   Windows

            ```
            <project_folder>\.vscode\mcp.json
            ```

        *   `servers`

*   Cursor

    *   Global	
    
        *   MacOSX / Linux

            ```
            ~/.cursor/mcp.json
            ```

        *   Windows

            ```
        	%USERPROFILE%\.cursor\mcp.json
            ```

        *   `mcpServers`

    *   Workspace / Project	
    
        *   MacOSX / Linux

            ```
            <project_folder>/.cursor/mcp.json
            ```

        *   Windows

            ```
            <project_folder>\.cursor\mcp.json
            ```

        *   `mcpServers`

*   Windsurf AKA Codium

    *   Global	
    
        *   MacOSX / Linux

            ```
            ~/.codeium/windsurf/mcp_config.json
            ```

        *   Windows

            ```
            %USERPROFILE%\.codeium\windsurf\mcp_config.json
            ```

        *   `mcpServers`


Global			mcpServers




