# SignalR Hubs 

signalr-hubs.md


## Multiple Hubs

*   Multiple classes deriving from Hubs

    *   shared connection

    *   separate groups

        *   all clients 
        
            *   use the same URL for connection `/signalr`

            *   use custom Url `/chat`, `/data`

    *   no performance differences!!

    *   all Hubs - the same HTTP request information

        *   in initial request for establishing SignalR connection

        *   cannot pass the info in query string to different hubs

        *   generated JavaScript proxies
        
            *   in single file

        *   groups are defined within the Hubs


## References / Links


*   https://stackoverflow.com/questions/11764360/multiple-signalr-connections-hubs-on-your-website

*   https://docs.microsoft.com/en-us/aspnet/signalr/overview/guide-to-the-api/hubs-api-guide-server#multiplehubs
