# MVVM 

mvvm-model-view-view-model.md

*   What is the MVVM pattern, What benefits does MVVM have?

    *   https://www.youtube.com/watch?v=AXpTeiWtbC8

    *   `CommunityToolkit.Mvvm`


        ```csharp
        using CommunityToolkit.Mvvm.ComponentModel;

        public partial class MainViewModel : ObservableObject
        {
            [ObservableProperty]
            [NotifiyPropertyChangedFor(nameof(NameFull))]
            public string NameLast;

            [ObservableProperty]
            public string NameFirst;

            [ObservableProperty]
            public string NameFull;

            [ObservableProperty]
            public string Address
            {
                get;
                set;
            }

            [RelayCommand]
            public string Name;

            protected void ClickTap ()
            {                
            }
        }
        ```

*   MVVM for Beginners: Model-View-ViewModel Architecture for Xamarin.Forms, .NET MAUI, WPF, UWP, & More

    *   https://www.youtube.com/watch?v=Pso1MeX_HvI

*   XAML Data Binding and MVVM Basics (.NET MAUI, WPF, UWP, Xamarin.Forms)

    *   https://www.youtube.com/watch?v=sAn4RVsroF4

*   Implement MVVM and Databinding - .NET Maui Crash Course #4

    *   https://www.youtube.com/watch?v=XmdBXuNPShs

*   Better MVVM with MVVM Helpers (or Xamarin Community Toolkit)

    *   https://www.youtube.com/watch?v=y8ZqEOLDeo8

*   MVVMS... A Better MVVM? Model-View-ViewModel-Services Explained

    *   https://www.youtube.com/watch?v=ve0DFu-arD8

*   MVVM Source Generators: Never Write MVVM Boilerplate Code Again!

    *   https://www.youtube.com/watch?v=aCxl0z04BN8

*   Even More MVVM Source Generator Awesomeness for .NET Developers

    *   https://www.youtube.com/watch?v=9vvm_-YveTs

*   MVVM for the Xamarin.Forms ListView

    *   https://www.youtube.com/watch?v=71K4PVRLasI

*   C#/WPF - Learn MVVM with the .NET Community Toolkit

    *   https://www.youtube.com/watch?v=uVIzK2snugk

*   Models - WPF MVVM TUTORIAL #1

    *   https://www.youtube.com/watch?v=fZxZswmC_BY

*   Views - WPF MVVM TUTORIAL #2

    *   https://www.youtube.com/watch?v=UQOi48H_84s

*   View Models - WPF MVVM TUTORIAL #3

    *   https://www.youtube.com/watch?v=2FPFgW0xVB0

*   Commands - WPF MVVM TUTORIAL #4

    *   https://www.youtube.com/watch?v=DNez3wIpHeE

*   WPF in C# with MVVM using Caliburn Micro

    *   https://www.youtube.com/watch?v=laPFq3Fhs8k

*   MVVM Source Generators: Never Write MVVM Boilerplate Code Again!

    *   https://www.youtube.com/watch?v=aCxl0z04BN8&ab_channel=JamesMontemagno

*   Even More MVVM Source Generator Awesomeness for .NET Developers

    *   https://www.youtube.com/watch?v=9vvm_-YveTs&ab_channel=JamesMontemagno

*   Why You NEED .NET MAUI's new Dependency Injection

    *   https://www.youtube.com/watch?v=xx1mve2AQr4&ab_channel=JamesMontemagno

*   DotNet MAUI MVVM: Deep Dive into MVVM Architecture with .NET MAUI

    *   https://www.youtube.com/watch?v=B-5e0PJtSDs&ab_channel=CodingDroplets


*   MVVMS... A Better MVVM? Model-View-ViewModel-Services Explained

    *   https://www.youtube.com/watch?v=ve0DFu-arD8&ab_channel=JamesMontemagno


*   TinyMvvm

    *   https://github.com/TinyStuff/TinyMvvm

    *   https://github.com/TinyStuff/TinyMvvm/blob/master/docs/GetStarted.md

    *   https://danielhindrikes.se/post/tinymvvm-for-net-maui-preview

    *   https://www.youtube.com/watch?v=rS-cnU86870

    *   An update on TinyMvvm for .NET MAUI

        *   https://www.youtube.com/watch?v=kqsoG2Ii4w4

*   TinyMvvm for .NET MAUI

    *   https://www.youtube.com/watch?v=XnBmvOu3MO4

*   FreshMvvm

    *   https://github.com/rid00z/FreshMvvm

    *   https://github.com/XAM-Consulting/FreshMvvm.Maui

    *   https://michaelridland.com/freshmvvm-maui/a-first-look-with-freshmvvm-maui/

    *   https://michaelridland.com/xamarin/freshmvvm-mvvm-framework-designed-xamarin-forms/

    *   https://learn.microsoft.com/en-us/shows/xamarinshow/freshmvvm-so-fresh-so-clean-mvvm-for-xamarinforms

    *   Xamarin.Forms MVVM Made Easy with FreshMvvm Framework

        *   https://www.youtube.com/watch?v=bj7ZxrmyzTA&ab_channel=GeraldVersluis

    *   .NET MAUI and FreshMvvm MVVM Framework: Getting Started

        *   https://www.youtube.com/watch?v=uke5GEt_Qoc&ab_channel=GeraldVersluis

    *   FreshMvvm Basic Navigation Concepts in Xamarin.Forms

        *   https://www.youtube.com/watch?v=C7ykJ66CbgY&ab_channel=GeraldVersluis

    *   https://www.c-sharpcorner.com/article/mvvm-databinding-in-xamarin-forms-using-fresh-mvvm/

