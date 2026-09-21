# `dotnet run`


## SKILL.md

dotnet-run skill

error

    ```
    MT0069: The app directory '...app/' does not exist
    ``` 
    
    if well-formed `.app` bundle already present
    
    
    Follow-up reproduction after the user reported the error persisting found the real, deterministic cause
    
    ```
    dotnet run
    ``` 
    
    does not drive the iOS deploy pipeline the same way 
    
    ```
    dotnet build -t:Run
    ```
    
    ```
    dotnet run
    ``` 
    
    has its own device-selection layer (`ComputeAvailableDevices` / `--device`)
    
    separate from the raw MSBuild `Run` target's `_DeviceName` property. 
    
    Reproduced directly:

    ```
    dotnet run -p:_DeviceName=:v2:udid=<UDID> -t:Run ...`
    ```

    fails early with 
    
    ```
    Unable to run this project because multiple devices are available. 
    Please specify which device to use by passing the --device argument...
    ```
    
    device resolution never completes, so it never reaches the native-link/bundle stage).

- `dotnet run --device <UDID> -f net10.0-ios --project ...` (the syntax `dotnet run` itself recommends) → still fails, 100% reproducibly, with the exact same `MT0069: The app directory '...app/' does not exist`.
- `dotnet build -t:Run -f net10.0-ios -p:_DeviceName=:v2:udid=<UDID> <project>` → succeeds end-to-end every time (verified twice), producing the `.app` bundle, launching it, and passing all 34 checks.

`dotnet run` performs its own implicit build (default `Build` target) before attempting to launch, and that path does not go through the native AOT-link-and-bundle step that only runs as part of the `Run` MSBuild target's o
wn dependency chain — so it tries to launch an `.app` that was never created. **Recommendation: use `dotnet build -t:Run -f net10.0-ios -p:_DeviceName=:v2:udid=<UDID> <project.csproj>` for iOS simulator/device deployment fr
om the CLI, not `dotnet run`.** This is not a bug in this repo's project files; it's a `dotnet run` / MAUI-iOS CLI limitation, so no code or csproj change is proposed for it.

Full technical narrative — including the Mac Catalyst precedent this fix mirrors and the live evidence for the MT0069 conclusion — is in `docs/prompts/p26-app-maui-runtime-error-iossimulator.md.hwaifs/claude-code-sonnet-5/r
01.md`. The one edited file has a timestamped backup at `AppMAUI.TreeSitter.Grammar.Tests.csproj.bak-20260803-085411`; nothing was committed.