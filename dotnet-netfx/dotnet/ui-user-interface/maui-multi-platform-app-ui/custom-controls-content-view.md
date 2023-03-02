# Custom Controls - ContentView

custom-controls-content-view.md

## MAUI

### ContentView

*   https://learn.microsoft.com/en-us/dotnet/maui/user-interface/controls/contentview?view=net-maui-7.0

*   https://learn.microsoft.com/en-us/dotnet/maui/fundamentals/controltemplate?view=net-maui-7.0

*   https://blog.sentry.io/2022/07/19/making-a-time-zone-picker-control-for-net-maui/

*   https://www.mfractor.com/blogs/news/custom-controls-in-xamarin-forms

*   https://dev.to/icebeam7/creating-a-treeview-control-in-net-maui-49mp

*   Creating Custom Controls In .NET MAUI / Xamarin (Custom Loader Control)

    *   https://www.youtube.com/watch?v=mgHbOGXuj0Y&ab_channel=ProgrammingWithPragnesh

*   Reusable, Custom Controls in .Net Maui!

    *   https://www.youtube.com/watch?v=YLx2L7SXeaY&ab_channel=ProgrammingWithChris

*   .NET MAUI - Building your own custom controls

    *   https://www.youtube.com/watch?v=3Cd3amJ-qcw&ab_channel=DanielHindrikes

*   Customizing Controls with Handlers in .NET MAUI

    *   https://www.youtube.com/watch?v=_9dz7BUoxT8&ab_channel=GeraldVersluis

*   https://www.reddit.com/r/dotnetMAUI/comments/vuebcz/creating_new_controls_in_net_maui/

*   https://github.com/dotnet/Microsoft.Maui.Graphics.Controls

*   https://learn.microsoft.com/en-us/dotnet/maui/fundamentals/controltemplate

*   https://blog.sentry.io/2022/07/19/making-a-time-zone-picker-control-for-net-maui/

## Xamarin.Forms

https://www.mfractor.com/blogs/news/custom-controls-in-xamarin-forms

*   https://trailheadtechnology.com/custom-controls-in-xamarin-forms/

https://xamgirl.com/tips-and-ticks-when-creating-a-custom-control-in-xamarin-forms-part-1/

https://xamgirl.com/tips-and-ticks-when-creating-a-custom-control-in-xamarin-forms-part-2/

https://www.youtube.com/watch?v=cbmoaD-PDtA&ab_channel=GeraldVersluis

https://www.youtube.com/watch?v=ZViJyL9Ptqg&ab_channel=XamarinUniversity

*   Xamarin Forms - Create a Custom Control Library

    *   https://www.youtube.com/watch?v=_7dCQmtI2yw&ab_channel=MichaelRidland

*   Xamarin Evolve 2014: Extending Xamarin.Forms with Custom Controls - Jason Smith, Xamarin

    *(  https://www.youtube.com/watch?v=pIZ8G47KPIM&ab_channel=XamarinDevelopers




Migrating Renderer to handler: https://youtu.be/bWdilOWAEt4
CustomControls: https://youtu.be/pnkHTyRYiTY
https://devblogs.microsoft.com/dotnet/customizing-dotnet-maui-controls/




I think I don't need Handlers or customizing given: 
1. there is set of business/domain logic objects and need to build UI - CC - for each (no need for platform specific code, so no custom renderers, thus no need for handlers). In XF I would do with ContentView[s] for business/domain objcts and some extra to model relationships. ContentView[s] (one or more) would be added to Pages, Layouts or ContentViews.
2. CC UI would preferable be in XAML

Am I wrong? 

I just need library of controls that I can arrange (puzzle, mosaic) in ContentPage[s] depending on UI form factor and unit test ViewModels (Models are unit tested in busines/domain library).
I am aware of DataTemplate, but can I define DataTemplate like XF ContentView in separate XAML file?
moljac — Today at 5:28 PM
ContentView is here
https://learn.microsoft.com/en-us/dotnet/maui/user-interface/controls/contentview?view=net-maui-7.0
but no further docs about
- library
- testing...
Pedro Jesus — Today at 5:35 PM
Yeah, most of the CC you can do by composition, using other xaml controls, you can do that in C# if you want (https://www.nuget.org/packages/CommunityToolkit.Maui.Markup ).
IF you can use the layout instead of a ContentView is better, one less element on the VisualElementTree.

ANd yes you can define a DataTemplate in another file and use a DataTemplateSelector or even a ContentTemplate and define that as a style
moljac — Today at 5:38 PM
I guess
dotnet new mauilib -n Controls -o source

should be fine for the library
??
Pedro Jesus — Today at 5:41 PM
Yeap, there's a template that works pretty well
moljac — Today at 5:42 PM
thanks
Pedro Jesus — Today at 5:44 PM
if you need any insight about the libs, you can take a look on ours
https://github.com/communityToolkit/maui

https://learn.microsoft.com/en-us/dotnet/standard/class-libraries




