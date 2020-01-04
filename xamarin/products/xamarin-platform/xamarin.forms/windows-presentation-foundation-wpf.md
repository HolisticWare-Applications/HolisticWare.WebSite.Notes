# Windows Presentation Foundation

windows-presentation-foundation-wpf.md

1.  `Xamarin.Forms.Platform.WPF`

2.  XAML: `xmlns:wpf="clr-namespace:Xamarin.Forms.Platform.WPF;assembly=Xamarin.Forms.Platform.WPF"`

3.  `wpf:FormsApplicationPage`

4.  MainPage.xaml.cs

using Xamarin.Forms;
using Xamarin.Forms.Platform.WPF;

public partial class MainWindow : FormsApplicationPage //Window


Forms.Init();
LoadApplication(new Ph4ct3x.App.XamarinForms.App());
