# Troubleshooting

troubleshooting.md

System.NotSupportedException: 
    Shell is currently not compatible with TabbedPage. Please use TabBar, Tab or 
    switch to using NavigationPage for your AppMAUI.FromTemplate.App.MainPage
  at at Microsoft.Maui.Controls.ShellContent.Microsoft.Maui.Controls.IShellContentController.GetOrCreateContent()
  at at Microsoft.Maui.Controls.Platform.Compatibility.ShellSectionRootRenderer.LoadRenderers()
  at at Microsoft.Maui.Controls.Platform.Compatibility.ShellSectionRootRenderer.ViewDidLoad()
  at at UIKit.UIApplication.UIApplicationMain(Int32 argc, String[] argv, IntPtr principalClassName, IntPtr delegateClassName)
  at at UIKit.UIApplication.Main(String[] args, Type principalClass, Type delegateClass)
  at AppMAUI.FromTemplate.Program.Main(String[] args) in /Users/Shared/Projects/d/Samples-Playgrounds/MAUI/samples/issues-repro-samples/7399/MauRepro/AppMAUI.FromTemplate/Platforms/MacCatalyst/Program.cs:13
