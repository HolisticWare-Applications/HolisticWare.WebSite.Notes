`global.json`

global-json.md

```json
{
    "sdk": 
    {

        "version": "10.0.102",
        "rollForward": "disable"
    },
    "workload": 
    {
        "manifestVersions": 
        {
            "microsoft.net.sdk.maui": "10.0.102"
        }
    }
}
```


```json
{
  "sdk": 
  {
    "version": "10.0.102",
    "workloadVersion": "10.0.102"
  }
}
```

```json
{  
  "sdk": 
  {
    "version": "10.0.102",
	  "rollForward": "latestPatch",
	  "workload":
    {
		  "manifestVersions":
      {
			  "microsoft.net.sdk.maui": "10.0.102"
		  }
	  }
  }
}
```


```json
{
  "sdk": {
    "version": "10.0.101",
    "workloadVersion": "10.0.101"
  },
  "msbuild-sdks": {
    "MSTest.Sdk": "4.0.2"
  },
  "test": {
    "runner": "Microsoft.Testing.Platform"
  }
}
```

*   https://github.com/search?q=workload++path%3A*.json+path%3A**%2Fglobal.json&type=Code

*   https://www.reddit.com/r/dotnetMAUI/comments/1hb5lw4/are_you_using_globaljson/

*   https://www.reddit.com/r/csharp/comments/1mhhye8/why_do_i_need_to_specify_the_net_version_in/

*   https://www.reddit.com/r/dotnetMAUI/comments/1qwh7gz/opinion_about_the_current_state_of_net_maui/

