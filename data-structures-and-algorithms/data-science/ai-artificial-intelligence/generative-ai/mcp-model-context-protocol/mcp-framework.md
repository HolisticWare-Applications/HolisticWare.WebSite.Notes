# MCP Framework

mcp-framework.md

*   transports

    *   communication between client and server

    *   types

        *   STDIO
        
            *   default
            
            *   https://mcp-framework.com/docs/Transports/stdio-transport/

        *   HTTTP Server-Sent Events (SSE)
        
            *   https://mcp-framework.com/docs/Transports/http-stream-transport/

            *   MCP uses SSE instead of WebSockets for remote communication primarily because SSE offers a simpler and 
                more robust solution for scenarios where only server-to-client streaming is required. 
                
            *   operates over standard HTTP, making it easier to work with firewalls and restricted networks. 
            
            *   allows the server to push real-time updates to the client without the complexity of managing a 
                full-duplex WebSocket connection.

MCP (Model Context Protocol == An API specification for Large Language Models.

Agent == An LLM that has the ability to make changes/perform actions on its own (often via MCP servers). 


MCPs are ways for an LLM to call a tool. So like for instance if you're asking "replace calls to method Foo() with Bar()", 
there might be a C# MCP that could handle a query like "find all method calls of Foo()", and the LLM could use that info 
to do a next step

