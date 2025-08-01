


Aspire YARP

https://github.com/4eversoft/AspireYarp

https://timdeschryver.dev/blog/integrating-yarp-within-dotnet-aspire


dotnet new \
    aspire-starter \
        --output HolisticWare.Aspire.Web

dotnet \
    dev-certs https \
        --trust

dotnet run \
    --project \
        HolisticWare.Aspire.Web/HolisticWare.Aspire.Web.AppHost


dotnet new \
    web \
    -n HolisticWare.Aspire.Web.ReverseProxyGateway.YARP

dotnet add \
    package \
        Yarp.ReverseProxy \
        --project HolisticWare.Aspire.Web.ReverseProxyGateway.YARP



https://dotnet.github.io/yarp/

https://github.com/dotnet/yarp
