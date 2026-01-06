# Formatters

formatters.md

*   https://github.com/WebApiContrib

    *   https://github.com/WebApiContrib/WebAPIContrib.Core/tree/master/src/WebApiContrib.Core.Formatter.PlainText

    *   https://github.com/WebApiContrib/WebAPIContrib.Core/tree/master/src/WebApiContrib.Core.Formatter.Csv

    *   https://github.com/WebApiContrib/WebAPIContrib.Core/tree/master/src/WebApiContrib.Core.Formatter.Yaml

    *   https://github.com/WebApiContrib/WebApiContrib.Formatting.MsgPack

    *   https://github.com/WebApiContrib/WebApiContrib.Formatting.Bson

    *   https://github.com/WebApiContrib/WebApiContrib.Formatting.JavaScriptSerializer

    *   https://github.com/WebApiContrib/WebApiContrib.Formatting.ServiceStack

    *   https://github.com/WebApiContrib/WebApiContrib.Formatting.Xlsx

    *   https://github.com/WebApiContrib/WebApiContrib.Formatting.Jsonp

    *   https://github.com/WebApiContrib/WebApiContrib.Formatting.ProtoBuf


    *   https://github.com/WebApiContrib/WebApiContrib.Formatting.Html

    *   https://github.com/WebApiContrib/WebApiContrib.Formatting.Razor

    *   https://github.com/WebApiContrib/WebApiContrib.Formatting.RazorViewEngine


## Minimal APIs formatters

https://andrewlock.net/adding-content-negotiation-to-minimal-apis-with-carter/

https://gist.github.com/davidfowl/41bcbccc7d8408af57ec1253ca558775

https://www.reddit.com/r/dotnet/comments/wfsha2/custom_formatters_with_minimal_apis/

https://stackoverflow.com/questions/69850917/how-to-configure-newtonsoftjson-with-minimal-api-in-net-6-0/69867815#69867815

https://github.com/davidfowl/MinimalApiPlayground/blob/main/src/MinimalApiPlayground/Properties/ModelBinderOfT.cs

https://github.com/davidfowl/MinimalApiPlayground/blob/main/src/MinimalApiPlayground/Properties/ParameterBinders.cs

https://stackoverflow.com/questions/70006903/minimal-api-and-xml-formatters

https://www.reddit.com/r/dotnet/comments/1m0s1y4/why_arent_you_using_minimal_apis_by_dotnet_team/


ASP.NET Community Standup - Why aren't you using Minimal APIs?

    https://www.youtube.com/watch?v=lXvHXA_vuro

https://github.com/marcominerva/MinimalHelpers?tab=readme-ov-file#minimalhelpersrouting

https://openapi-generator.tech/

brew install openapi-generator

https://openapi-generator.tech/docs/generators/csharp


openapi-generator generate -i petstore.yaml -g ruby -o /tmp/test/

Schema-first in .NET is fully workable right now. DreamFactoryAPI can turn an OpenAPI doc into a ready-to-run backend; 
I then use NSwag for typed clients/controllers and gRPC+protobuf for high-perf internals. Dropping APIWrapper.ai into 
the CI keeps spec and code in lock-step with almost zero manual fixes. Bottom line, the pieces exist; schema-first is 
practical.

FastEndpoints

https://fast-endpoints.com/

https://fast-endpoints.com/benchmarks#fastendpoints

https://github.com/FastEndpoints/FastEndpoints

https://www.reddit.com/r/dotnet/comments/14hnyx2/advantages_and_disadvantages_of_fastendpoints/

https://www.reddit.com/r/dotnet/comments/xesmh5/should_we_use_fastendpoints_in_aspnet_project/

https://www.reddit.com/r/dotnet/comments/1juibtn/web_api_vs_minimal_api_vs_fastendpoints/

https://www.ottorinobruni.com/improve-asp-net-core-web-api-performance-resilience/


MVC

https://learn.microsoft.com/en-us/aspnet/core/web-api/advanced/custom-formatters


