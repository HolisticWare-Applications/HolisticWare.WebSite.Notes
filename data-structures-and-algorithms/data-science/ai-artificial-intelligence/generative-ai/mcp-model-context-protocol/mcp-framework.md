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


MCP


Anubis

https://github.com/Hive-Academy/Anubis-MCP/blob/98b971e52dc323a18ae5b873d62bc366a90ef8c0/.github/chatmodes/%F0%93%82%80%F0%93%81%A2%F0%93%8B%B9%F0%9D%94%B8%E2%84%95%F0%9D%95%8C%F0%9D%94%B9%F0%9D%95%80%F0%9D%95%8A%F0%93%8B%B9%F0%93%81%A2%F0%93%82%80.chatmode.md?plain=1


