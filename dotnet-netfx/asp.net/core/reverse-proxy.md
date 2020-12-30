# Reverse Proxy

reverse-proxy.md

YARP https://github.com/microsoft/reverse-proxy

Pro: Fast, "official", the direction and perf we are looking for, cross plat

Con: Preview as of now, not released

Microsoft.AspNetCore.Proxy https://github.com/aspnet/Proxy (archived source code, moved to https://github.com/aspnet/AspLabs/tree/master/src/Proxy )

Pro: Works, extensible, cross plat

Con: Prototype, seems abandoned

https://github.com/SharpTools/SharpReverseProxy

Pro: Extensible, cross plat

Con: Seems abandoned and not much in use

Ocelot - https://github.com/ThreeMammals/Ocelot

Pro: dotnetcore, eaily extendable, cross plat

Con: reads the whole request body before passing on

IIS

Pro: proven, community, extensible

Con: windows only, ISAPI + other methods of extending are complicated

Proxykit

Pro: dotnetcore, eaily extendable, cross plat

Con: will be abandoned when YARP finished

Others

HAproxy, Caddy, nginx, AWS API gateway, Azure Api Gateway, Azure Application Gateway --> great options (at least most of them are great - you know who you are), but we would prefer to write extensions for the RPs in .NET/C#


there are several api containers written in C#, Go, nodejs etc. This reverse proxy is meant to be in front, extract data from the mTLS and digest and cert headers. And add some data as headers or reject the request. Nginx, Caddy are relevant, but it is the reverse proxy we need to extend and we prefer C# (for now).


Most of the time, even .NET people have used reverse proxies as out-of-process software in languages other than C# and .NET. e.g. Envoy or NGINX or AWS API gateway.

YARP is a challenge to that, aiming to make something as good, maybe even better than the industry standards, and in C#. And it should be extensible with C# code.

There is Ocelot which has been around for longer than YARP, but is not as low-level and so won't be as performant. As far as I can see, Ocelot will read the last byte of the incoming request into memory, before sending the first byte of it to the upstream.

YARP is more "connect the stream of bytes from this source to that destination and let it flow".



level 2



bunch of ASP.NET Core projects hosted behind Caddy Server. It's written in Go but, as others have stated, it's pretty common to have your reverse proxy be out of process and even on a different machine. Caddy server will automatically provision Let's Encrypt SSL certs and keep them up to date for you which is nice, and is both easy to configure and quite flexible.

I previously used haproxy which also great, but it took a lot more effort to configure which didn't seem necessary for both my personal projects and some employee-only web apps at work.

