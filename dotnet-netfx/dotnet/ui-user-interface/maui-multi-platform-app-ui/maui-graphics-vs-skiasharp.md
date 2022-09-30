# Maui.Graphics vs SkiaSharp

maui-graphics-vs-skiasharp.md

*   Maui.Graphics and SkiaSharp just draw stuff

*   Maui.Graphics 

    *   abstraction of drawing patterns 

*   SkiaSharp 

    *   implementation of drawing patterns

*   non SkiaSharp implementations of those abstractions that map to the platform drawing APIS (this is 
what maui is based on)

*   Controls.Shapes maps those to elements for use in XAML

like you can use maui.graphics and skiasharp in a native net6.0-ios app if you want to

Maui.Graphics is useful if you want to provide someone the ability to abstract the drawing concepts and then someone 
could choose to use skia/native to actually do the work



Also, putting things in terminology that may be familiar to WPF folks:
WPF DrawingContext = Maui.Graphics and SkiaSharp (a lower level way to draw stuff)
WPF Shapes = Microsoft.Maui.Controls.Shapes (a higher level way to to include drawing elements in your UI, normally from XAML, 
that are part of the visual tree and will show in the Live Visual Tree UI)

