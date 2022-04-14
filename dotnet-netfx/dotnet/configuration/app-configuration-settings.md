# App Configuration / Settings

app-configuration-settings.md

## intro

*   https://docs.microsoft.com/en-us/aspnet/core/fundamentals/environments?view=aspnetcore-6.0

*   https://dusted.codes/dotenv-in-dotnet

*   https://swharden.com/blog/2021-10-09-console-secrets/

*   https://developers.de/2019/12/17/net-core-configuration-appsettings-vs-environment-variables/

*   https://dev.to/tallesl/from-where-that-configuration-is-coming-from-3f1f

*   https://visualstudiomagazine.com/articles/2019/03/01/managing-production-and-development.aspx

*   https://nicksnettravels.builttoroam.com/multiple-environments-mobile-app/

    *   Mobile Build Tools
    
        *   https://mobilebuildtools.com/

```csharp
ConfigurationBuilder builder = new ConfigurationBuilder();
builder.AddJsonFile(Path.Combine(AppContext.BaseDirectory, "appsettings.json"), false, true);
builder.AddEnvironmentVariables();
var configRoot = builder.Build();
```

```
tree source/business-domain-logic/Utilities/Weather 
```

results in:

```
source/business-domain-logic/Utilities/Weather
├── Directory.Build.props
├── HolisticWare.Ph4ct3x.Utilities.Weather.Core
│   ├── Core
│   │   └── Math
│   │       └── Degree.cs
│   ├── Data.cs
│   ├── DataBase.cs
│   ├── HolisticWare.Ph4ct3x.Utilities.Weather.Core.csproj
│   ├── Location.cs
│   ├── TemperatureApparentHeatIndex.cs
│   ├── TemperatureApparentWindChill.cs
│   ├── TemperatureDewPoint.cs
│   ├── WeatherData.cs
│   └── WindSpeed.cs
├── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.AccuWeather
│   ├── Data.cs
│   ├── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.AccuWeather.csproj
│   ├── Settings.cs
│   └── readme.md
├── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.Azure.Maps.Weather
│   ├── Data.cs
│   └── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.Azure.Maps.Weather.csproj
├── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.ClimaCell
│   ├── Data.cs
│   └── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.ClimaCell.csproj
├── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.DHMZ_MeteoHR_PrognozaHR
│   ├── DHMZ_MeteoHR_PrognozaHR
│   │   ├── 3d_graf_i_simboli.cs
│   │   ├── 7d_meteogrami.cs
│   │   ├── agro7.cs
│   │   ├── agro_regije_prognoza.cs
│   │   ├── agro_temp.cs
│   │   ├── bio_novo.cs
│   │   ├── cap_hr_today.cs
│   │   ├── cap_hr_tomorrow.cs
│   │   ├── europa_n.cs
│   │   ├── hladnival.cs
│   │   ├── hrvatska1_n.cs
│   │   ├── hrvatska_n.cs
│   │   ├── indeks.cs
│   │   ├── jadran_h.cs
│   │   ├── more_n.cs
│   │   ├── oborina.cs
│   │   ├── pomorci.cs
│   │   ├── prognoza_danas.cs
│   │   ├── prognoza_izgledi.cs
│   │   ├── prognoza_sutra.cs
│   │   ├── readme.md
│   │   ├── regije_danas.cs
│   │   ├── snijeg_n.cs
│   │   ├── toplinskival_5.cs
│   │   └── uvi.cs
│   ├── Data.cs
│   ├── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.DHMZ_MeteoHR_PrognozaHR.csproj
│   └── WeatherData.cs
├── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.Foreca
│   ├── Data.cs
│   └── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.Foreca.csproj
├── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.NOOA_NationalClimaticDataCenter
│   ├── Data.cs
│   ├── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.NOOA_NationalClimaticDataCenter.csproj
│   └── readme.md
├── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.OpenWeatherMaps
│   ├── Data.cs
│   └── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.OpenWeatherMaps.csproj
├── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.PredictWind
│   ├── Data.cs
│   └── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.PredictWind.csproj
├── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.Tommorow_io
│   ├── Data.cs
│   ├── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.Tommorow_io.Settings.json
│   ├── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.Tommorow_io.csproj
│   ├── Internal
│   │   └── Timezones.IANA.json
│   ├── Settings.Data.Private_Secret.cs
│   ├── Settings.Data.cs
│   ├── Settings.cs
│   └── readme.md
├── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.VisualCrossing_WeatherAPI
│   ├── Data.cs
│   ├── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.VisualCrossing_WeatherAPI.Settings.json
│   ├── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.VisualCrossing_WeatherAPI.csproj
│   ├── Settings.Data.Private_Secret.cs
│   ├── Settings.Data.cs
│   ├── Settings.cs
│   └── readme.md
├── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.Weatherbit
│   ├── Data.cs
│   └── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.Weatherbit.csproj
├── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.WindFinder
│   ├── Data.cs
│   ├── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.WindFinder.csproj
│   └── readme.md
├── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.Yr_No
│   ├── Data.cs
│   └── HolisticWare.Ph4ct3x.Utilities.Weather.Providers.Yr_No.csproj
├── readme.md
└── weather-api.md
```
 "HolisticWare" : 
 {
    {
        "Ph4ct3x": 
        {
            "Utilities" :
            {
                "Weather" :
                {
                    "Providers" :
                    {
                        "AccuWeather" :
                        {
                            "API_KEY"   : "N/A",
                            "Uri_01"    : "https://" 
                        },
                        "Azure.Maps.Weather" :
                        {
                            "API_KEY"   : "N/A",
                            "Uri_01"    : "https://" 
                        },
                        "ClimaCell" :
                        {
                            "API_KEY"   : "N/A",
                            "Uri_01"    : "https://" 
                        },
                        "DHMZ_MeteoHR_PrognozaHR" :
                        {
                            "API_KEY"   : "N/A",
                            "Uri_01"    : "https://" 
                        },
                        "NOOA_NationalClimaticDataCenter" :
                        {
                            "API_KEY"   : "N/A",
                            "Uri_01"    : "https://" 
                        },
                        "Foreca" :
                        {
                            "API_KEY"   : "N/A",
                            "Uri_01"    : "https://" 
                        },
                        "OpenWeatherMaps" :
                        {
                            "API_KEY"   : "N/A",
                            "Uri_01"    : "https://" 
                        },
                        "PredictWind" :
                        {
                            "API_KEY"   : "N/A",
                            "Uri_01"    : "https://" 
                        },
                        "Tommorow_io" :
                        {
                            "API_KEY"   : "N/A",
                            "Uri_01"    : "https://" 
                        },
                        "VisualCrossing_WeatherAPI" :
                        {
                            "API_KEY"   : "N/A",
                            "Uri_01"    : "https://" 
                        },
                        "Weatherbit" :
                        {
                            "API_KEY"   : "N/A",
                            "Uri_01"    : "https://" 
                        },
                        "WindFinder" :
                        {
                            "API_KEY"   : "N/A",
                            "Uri_01"    : "https://" 
                        },
                        "Yr_No" :
                        {
                            "API_KEY"   : "N/A",
                            "Uri_01"    : "https://" 
                        },

                    }

                }
            }
        }
  }
```

```
set     HolisticWare__Ph4ct3x__Utilities__Weather__Providers__XXX_API_KEY               = ""
set     HolisticWare__Ph4ct3x__Utilities__Weather__Providers__OpenWeatherMaps_API_KEY   = ""
```

```
export  HolisticWare__Ph4ct3x__Utilities__Weather__Providers__XXX_API_KEY               = ""
export  HolisticWare__Ph4ct3x__Utilities__Weather__Providers__OpenWeatherMaps_API_KEY   = ""
```

## configuration

## environment variables

