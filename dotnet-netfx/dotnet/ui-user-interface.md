# UI User Interface

ui-user-interface.md

### MVVM

MVVM is the default built in architecture design pattern in the xamarin.Forms framework. 
The UI in MVVM is Mutable. 
Which make managing the state difficult and cause many issues. It consists of three parts.

• Model- The definition of data
• View- The User Interface for user to interact with the app
• ViewModel- The ViewModel stays in between the View and Model. It have all the business logic and presentation logic.

The MVVM enable to keep the UI code, Logic and Data separate. Thus it help in easy maintenance.
You can learn more about MVVM at https://docs.microsoft.com/en-us/xamarin/xamarin-forms/enterprise-application-patterns/mvvm

### ReactiveUI

ReactiveUI is a framework which enables use of Reactive Programming over MVVM design pattern. Reactive Programming is 
done using Reactive Extensions. The Reactive Extensions (Rx) is a library for composing asynchronous and event-based programs 
using observable sequences and LINQ-style query operators. ReactiveUI make mutable state managable. DynamicData is part of 
ReactiveUI which makes managing any kind of data very efficient. The definition given at reactiveui.net is “An advanced, 
composable, functional reactive model-view-viewmodel framework for all .NET platforms!”. The Reactive code is concise and 
testable. You can learn about it at https://www.reactiveui.net/

### MVU( Model View Update)

MVU is a Functional Reactive Programming, architecture design pattern. In MVU UI is immutable. So you have to rebuild your 
UI, every time you wanted to update a property. Immutability is the property of Funtional Programming. C# does support 
Functional programming paradigm. C# is taking it further with C# 9 and dot net 5 release in November 2020.
In this setup the UI and business login is written in same language e.g C#. The flow of data is unidirectional. It is Good 
fit for hot reload of the application. You don’t need to learn XAML for developing UI instead develop complete application 
in one language. The maui implementation of MVU is here https://github.com/Clancey/Comet

Conclusion
So, this is not about one versus the other. This is about choosing the right tool for the job. Mutability have significance in some scenarios. For UI heavy Mobile apps the MVU architecture is the best. For me all these architectures are like a steps of the ladder. First I used MVVM because as a UWP(Universal Windows Platform) developer I already knows XAML and MVVM. Then I started learning ReactiveUI and with experience I learn the obvious benefits of using it. Now MVU will be supported by maui. MVU is an excellent solution for cross platform mobile apps. Xamarin.Forms team is moving in the right direction.

JohnHardman

## Xplat - Cross Platform

### MAUI - Multiplatform Application UI

### Xamarin.Forms

### UNO 

### Avalonia

### Spice

*   https://github.com/jonathanpeppers/spice




## Windows

### WPF - Windows Presentation Foundtion 

### WinForms - Windows Forms

## MacOSX

### Xamarin.Mac

### GTK#


## Linux

### GTK#

