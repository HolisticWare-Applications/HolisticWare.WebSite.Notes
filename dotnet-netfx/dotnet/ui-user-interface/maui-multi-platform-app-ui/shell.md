# Shell

shell.md

https://www.telerik.com/blogs/mastering-net-maui-shell-part-1

https://www.telerik.com/blogs/mastering-net-maui-shell-part-2

https://www.telerik.com/blogs/mastering-net-maui-shell-part-3

https://www.reddit.com/r/dotnetMAUI/comments/1cxauus/alternatives_to_shell_using_maui/

https://www.reddit.com/r/dotnetMAUI/comments/1ibte26/trying_to_decide_whether_to_use_shell_in_a_net/


https://stackoverflow.com/questions/73965907/how-can-i-navigate-between-pages-in-net-maui-without-using-shell


Shell Navigation


navigate between pages:

```csharp
await Shell.Current.GoToAsync("//SomePage");
```

Navigation Stack
This code

await App.ApplicationShell.PushAsync(new SomePage());
is equivalent to

await Navigation.PushAsync(new SomePage());
Whenever you call PushAsync() (on the INavigation object), you create a navigation stack as long as MainPage is set to either a Shell or a NavigationPage.

Therefore, if you don't want to use Shell, you can still use the navigation stack based approach. All you need to do is use a NavigationPage as the root page, which you can do as follows:

MainPage = new NavigationPage(new SomePage());
This initializes the NavigationPage with SomePage as the first page. You can then navigate from that to any other page (which is added on top) by calling

await Navigation.PushAsync(new OtherPage());
Direct Navigation
Alternatively, you can also set the MainPage directly to a different Page object, in which case you won't have a navigation stack and thus cannot navigate back and forth between open pages:

// set SomePage
App.MainPage = new SomePage();

// "go" to OtherPage by replacing SomePage
App.MainPage = new OtherPage();
This latter approach is only useful when you have different stages in your app, such as displaying a loading or login page before the actual app content.

