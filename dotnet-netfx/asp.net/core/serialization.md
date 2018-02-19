# Serialization

Important for:

*	storing data (read/write)

*	communicating data (over network)

    *	ASP.net Coe WebAPI 2 - MediaTypeFormatter

    *	SignalR

        *	JSON

        *	ProtoBuf 

            added in v.2


In General:

*	POCO -> SerializationFrameworkType -> network -> SerializationFrameworkType -> POCO

    *	client to server

    *	server to client


Some (most) Azure pricing plans are based on "download". Reducing payload through binary serialization
could influence MSFT "income", but on the other hand users could be attracted with lower prices.
In general cost reduction is possible (power, network consumption, ...)


*	[./serialization/serialization-with-mediatypeformatter.md](./serialization/serialization-with-mediatypeformatter.md)