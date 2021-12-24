# Path Limit Workaround

path-limit-workaround.md

```
			if (Platform.IsWindows)
				psi = new ProcessStartInfo (args.ProcessPath, args.ToString ())
				{
					WorkingDirectory = null,
					CreateNoWindow = true
				};
			else
				psi = new ProcessStartInfo (args.ProcessPath, args.ToString ())
				{
					WorkingDirectory = contentDir,
					CreateNoWindow = true
				};
```


windows
ProcessStartInfo 
WorkingDirectory = null