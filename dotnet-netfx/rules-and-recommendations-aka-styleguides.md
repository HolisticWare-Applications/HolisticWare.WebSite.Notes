# Rules and Recommendations AKA Styleguides

rules-and-recommendations-aka-styleguides.md

*   https://blog.codecentric.de/en/2014/02/curly-braces/

*   https://embeddedgurus.com/barr-code/2014/03/apples-gotofail-ssl-security-bug-was-easily-preventable/



*   https://dotnetdevaddict.co.za/2019/11/19/beware-csharp-8-using-statements/

## Casing

casing.md

*   https://www.nuget.org/packages?q=Microsoft.NET

*   https://www.nuget.org/packages?q=Microsoft+macOS

*   https://www.nuget.org/packages?q=Microsoft+tvOS

I will never request changes on casing

*   https://github.com/xamarin/AndroidX/blob/main/build/scripts/update-config.csx#L32-L39

    in this case I


```csharp
var config_json = File.ReadAllText (config_file);
var config = JsonConvert.DeserializeObject<List<MyArray>> (config_json);
var should_update = Args.Count > 1 && Args[1].ToLowerInvariant () == "update";
var should_minor_bump = Args.Count > 1 && Args[1].ToLowerInvariant () == "bump";
var should_sort = Args.Count > 1 && Args[1].ToLowerInvariant () == "sort";
var check_published = Args.Count > 1 && Args[1].ToLowerInvariant () == "published";
var serializer_settings = new JsonSerializerSettings { DefaultValueHandling = DefaultValueHandling.Ignore };
serializer_settings.Converters.Add (new Newtonsoft.Json.Converters.StringEnumConverter ());
```


*   https://chaseadams.io/posts/most-common-programming-case-types/

*   https://medium.com/nerd-for-tech/programming-case-types-explained-143cad3681e3
