# Videos


*   Why Everyone’s Talking About MCP?

    *   https://www.youtube.com/watch?v=_d0duu3dED4

    *   MCP

        *   client

            *   2 types of primitives

            *   roots

                *   secure channel for file access

                *   restricted access to entire filesystem

            *   sampling

        *   Server

            *   3 types of primitives

                *   prompts

                    *   instuctions/templates

                    *   injected into LLM context

                *   resources

                    *   structured data objects

                    *   injected into LLM context window to reference external information

                *   tools

                    *   functions to be executed   

                        *   retrieve information

                        *   perform actions


*   MCP vs API: Simplifying AI Agent Integration with External Data

    *   https://www.youtube.com/watch?v=7j1t3UZA1TY

    *   MCP Host

        *   number of MCP Clients

            *   each client opens JSON RPC 2.0 session using MCP Protocol and connect to MCP Servers

        *   MCP Client

        *   MCP Server

            *   capabilities

                *   connect to information sources (database, files, ...)

                *   execute 

            *   primitives

                published via catalog

                *   types
                    
                    *   tools

                        ```
                        tools/list
                        ```

                    *   resources

                        *   read only

                        ```
                        resources/list
                        ```

                    *   prompt templates

                        ```
                        prompts/list
                        ```
