#! "netcoreapp2.0"
#r "nuget: Newtonsoft.Json, 10.0.3"

#load "user.csx"

using Newtonsoft.Json;
using System.Linq;

Console.WriteLine("Processing users!");
var rawJson = File.ReadAllText("users.json");
var users = JsonConvert.DeserializeObject<User[]>(rawJson);

foreach(var user in users) 
{
    Console.WriteLine($"Found: {user.Name} - {user.Email}.");
}






https://msdn.microsoft.com/en-us/magazine/mt614271.aspx
http://www.oss.io/p/filipw/dotnet-script
https://www.hanselman.com/blog/?date=2016-02-25
https://www.strathweb.com/2018/03/lightweight-net-core-benchmarking-with-benchmarkdotnet-and-dotnet-script/
