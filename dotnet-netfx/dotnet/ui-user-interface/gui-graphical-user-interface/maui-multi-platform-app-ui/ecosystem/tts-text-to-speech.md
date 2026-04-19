# TTS Text to Speech

tts-text-to-speech.md

*   https://learn.microsoft.com/en-us/dotnet/communitytoolkit/maui/essentials/speech-to-text

*   https://github.com/sandrohanea/whisper.net

*   https://github.com/NickDarvey/whisper

*   https://stackoverflow.com/questions/75696760/how-to-use-openai-whisper-in-c-sharp


## MAUI local speech to text

*   https://learn.microsoft.com/en-us/dotnet/communitytoolkit/maui/essentials/speech-to-text?tabs=android

Local Speech-to-Text (STT) in .NET MAUI is achieved primarily using the .NET MAUI Community Toolkit, which supports offline, on-device recognition (introduced in version 11.0.0). It utilizes native platform APIs (iOS, Android, Windows) to convert speech without internet dependency, managed through the ISpeechToText interface, allowing for real-time transcription and microphone permission handling. 

Key Solutions for Local/Offline STT in MAUI

.NET MAUI Community Toolkit (Recommended): The official community toolkit provides a native, cross-platform approach. Version 11.0.0 and later includes specialized support for offline speech recognition.
LM-Kit.net (Offline Whisper): This allows running Whisper models locally on-device for high-accuracy, privacy-focused transcription without any cloud dependency.
Platform Specific Implementation: You can implement native APIs directly in Platforms/Android or Platforms/iOS folders, utilizing SpeechRecognizer in Android or SFSpeechRecognizer in iOS. 

Implementation Steps (Community Toolkit)

Install Package: Install CommunityToolkit.Maui and CommunityToolkit.Maui.Media.
Configure: Add the following to your MauiProgram.cs:
csharp
builder.UseMauiCommunityToolkit();
builder.Services.AddSingleton<ISpeechToText>(SpeechToText.Default);
Permissions: Add microphone permissions (RECORD_AUDIO on Android, NSMicrophoneUsageDescription on iOS).
Usage: Implement in your code:

```csharp
var recognitionResult = await speechToText.ListenAsync(
    CultureInfo.GetCultureInfo("en-US"),
    new Progress<string>(partialText => { /* Update UI with partial text */ }),
    cancellationToken);
```

Key Considerations

Offline Capability: Ensure you use the OfflineSpeechToText implementation for guaranteed no-cloud scenarios.
Accuracy: Local models may have lower accuracy than cloud-based models (e.g., Azure Speech) depending on device hardware, though using local Whisper models (via LM-Kit) can provide high accuracy.
Permissions: You must handle runtime permission requests for the microphone. 


 https://www.infoq.com/news/2025/02/net-maui-toolkit-net9/#:~:text=This%20is%20different%20from%20Xamarin,sample%20app%20for%20the%20toolkit.&text=Minor%20updates%20in%20versions%2010,currently%20has%20138%20open%20issues.

*   Implement Speech-To-Text on Android with .NET MAUI

    *   https://www.youtube.com/watch?v=CI-Fx8_0oYo

        *   https://github.com/jfversluis/MauiSpeechToTextSample

*   https://devblogs.microsoft.com/dotnet/speech-recognition-in-dotnet-maui-with-community-toolkit/
