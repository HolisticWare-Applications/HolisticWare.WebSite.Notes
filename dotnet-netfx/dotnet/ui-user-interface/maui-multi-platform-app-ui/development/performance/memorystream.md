# `MemoryStream`

memorystream.md

## `System.IO.MemoryStream` => `Microsoft.IO.RecyclableMemoryStream`

Microsoft.IO.RecyclableMemoryStream

*   https://github.com/microsoft/Microsoft.IO.RecyclableMemoryStream

*   https://www.nuget.org/packages/Microsoft.IO.RecyclableMemoryStream/


```
<PackageReference Include="Microsoft.IO.RecyclableMemoryStream" Version="3.0.1" />
```

*   https://github.com/microsoft/Microsoft.IO.RecyclableMemoryStream/blob/master/docs/Microsoft.IO/RecyclableMemoryStream.md


## Usage in MAUI

```shell
find . -iname "*.csproj" -exec grep -Hni "MemoryStream" {} \;
```

```
./src/Graphics/src/Graphics/Graphics.csproj:39:    <PackageReference Include="Microsoft.IO.RecyclableMemoryStream" />
```

```shell
find . -iname "*.cs" -exec grep -Hni "MemoryStream" {} \;    
```

```
./src/Core/src/Platform/Android/MauiHybridWebViewClient.cs:55:						contentStream = new MemoryStream(contentBytes);
./src/Core/src/Platform/Android/MauiHybridWebViewClient.cs:86:					var notFoundContentStream = new MemoryStream(notFoundByteArray);
./src/Core/src/VisualDiagnostics/VisualDiagnostics.cs:110:			using var ms = new MemoryStream();
./src/Core/src/Handlers/HybridWebView/HybridWebViewHandler.Windows.cs:125:						contentStream = new MemoryStream(contentBytes);
./src/Core/src/Handlers/HybridWebView/HybridWebViewHandler.Windows.cs:180:				using var memStream = new MemoryStream();
./src/BlazorWebView/src/Maui/Windows/WinUIWebViewManager.cs:189:				using var memStream = new MemoryStream();
./src/BlazorWebView/src/Maui/iOS/BlazorWebViewHandler.iOS.cs:293:					using var ms = new MemoryStream();
./src/BlazorWebView/src/Maui/Tizen/BlazorWebViewHandler.Tizen.cs:134:					MemoryStream memstream = new MemoryStream();
./src/BlazorWebView/src/SharedSource/StaticContentHotReloadManager.cs:71:					responseContent = new MemoryStream(values.Content);
./src/Compatibility/Core/src/GTK/GtkSerializer.cs:38:							using (Stream stream = new MemoryStream())
./src/Compatibility/Core/src/GTK/Renderers/ImageRenderer.cs:270:				using (var stream = new MemoryStream())
./src/Compatibility/Core/src/WPF/Microsoft.Windows.Shell/Standard/Utilities.Wpf.cs:277:			using (MemoryStream memstm = new MemoryStream())
./src/Compatibility/Core/tests/Android/AssertionExtensions.cs:19:			using (var ms = new MemoryStream())
./src/Graphics/src/Graphics/ImageLoadingServiceExtensions.cs:9:			using (var stream = new MemoryStream(bytes))
./src/Graphics/src/Graphics/PictureWriterExtensions.cs:14:			using (var stream = new MemoryStream())
./src/Graphics/src/Graphics/PictureWriterExtensions.cs:26:			using (var stream = new MemoryStream())
./src/Graphics/src/Graphics/PictureWriterExtensions.cs:48:			return new MemoryStream(bytes);
./src/Graphics/src/Graphics/PictureReaderExtensions.cs:10:			if (!(stream is MemoryStream memoryStream))
./src/Graphics/src/Graphics/PictureReaderExtensions.cs:12:				memoryStream = new MemoryStream();
./src/Graphics/src/Graphics/PictureReaderExtensions.cs:13:				stream.CopyTo(memoryStream);
./src/Graphics/src/Graphics/PictureReaderExtensions.cs:16:			var bytes = memoryStream.ToArray();
./src/Graphics/src/Graphics/PictureReaderExtensions.cs:22:			if (!(stream is MemoryStream memoryStream))
./src/Graphics/src/Graphics/PictureReaderExtensions.cs:24:				memoryStream = new MemoryStream();
./src/Graphics/src/Graphics/PictureReaderExtensions.cs:25:				await stream.CopyToAsync(memoryStream);
./src/Graphics/src/Graphics/PictureReaderExtensions.cs:28:			var bytes = memoryStream.ToArray();
./src/Graphics/src/Graphics/PdfPageExtensions.cs:14:			using (var stream = new MemoryStream())
./src/Graphics/src/Graphics/PdfPageExtensions.cs:26:			var stream = new MemoryStream();
./src/Graphics/src/Graphics/PdfPageExtensions.cs:38:			using (var stream = new MemoryStream())
./src/Graphics/src/Graphics/PlatformImage.cs:116:			var stream = new MemoryStream(_bytes);
./src/Graphics/src/Graphics/PlatformImage.cs:179:			using (var memoryStream = new MemoryStream())
./src/Graphics/src/Graphics/PlatformImage.cs:183:					stream.CopyTo(memoryStream);
./src/Graphics/src/Graphics/PlatformImage.cs:186:				return new PlatformImage(memoryStream.ToArray(), format);
./src/Graphics/src/Graphics/ImageExtensions.cs:14:			using (var stream = new MemoryStream())
./src/Graphics/src/Graphics/ImageExtensions.cs:26:			var stream = new MemoryStream();
./src/Graphics/src/Graphics/ImageExtensions.cs:38:			using (var stream = new MemoryStream())

./src/Core/tests/DeviceTests/Stubs/WebView.cs:60:			using var ms = new MemoryStream();
./src/Core/tests/DeviceTests/Services/ImageSource/BaseImageSourceServiceTests.Windows.cs:44:			var stream = new MemoryStream();
./src/Core/tests/DeviceTests/Services/ImageSource/BaseImageSourceServiceTests.Android.cs:40:			var stream = new MemoryStream();
./src/Core/tests/DeviceTests/Services/ImageSource/BaseImageSourceServiceTests.iOS.cs:41:			var stream = new MemoryStream();
./src/TestUtils/src/DeviceTests.Runners/VisualRunner/ViewModels/TestResultViewModel.cs:83:				var stream = new MemoryStream(imgBytes);
./src/TestUtils/src/DeviceTests/AssertionExtensions.Android.cs:251:			using var ms = new MemoryStream();
./src/TestUtils/src/DeviceTests/AssertionExtensions.Windows.cs:132:			using var ms2 = new MemoryStream();
./src/BlazorWebView/samples/WebViewAppShared/InMemoryStaticFileProvider.cs:56:				=> new MemoryStream(System.Text.Encoding.UTF8.GetBytes(_contents));
./src/Compatibility/ControlGallery/src/Core/GalleryPages/PlatformTestsGallery/PlatformTestsConsole.xaml.cs:325:				var stream = new MemoryStream(imgBytes);
./src/Compatibility/ControlGallery/src/Issues.Shared/Bugzilla31029.cs:19:	[Issue(IssueTracker.Bugzilla, 31029, "[Windows Phone 8.1]Generating an Image via MemoryStream does not appear")]
./src/Compatibility/ControlGallery/src/Issues.Shared/Bugzilla31029.cs:85:			// Write headers in MemoryStream and hence the buffer. 
./src/Compatibility/ControlGallery/src/Issues.Shared/Bugzilla31029.cs:86:			using (MemoryStream memoryStream = new MemoryStream(_buffer))
./src/Compatibility/ControlGallery/src/Issues.Shared/Bugzilla31029.cs:88:				using (BinaryWriter writer = new BinaryWriter(memoryStream, Encoding.UTF8))
./src/Compatibility/ControlGallery/src/Issues.Shared/Bugzilla31029.cs:134:			Stream memoryStream = new MemoryStream(_buffer);
./src/Compatibility/ControlGallery/src/Issues.Shared/Bugzilla31029.cs:135:			ImageSource imageSource = ImageSource.FromStream(() => { return memoryStream; });
./src/Graphics/tests/Graphics.Tests/PlatformImageTests.cs:15:		using MemoryStream memoryStream = new(orange1x1pxPngBytes);
./src/Graphics/tests/Graphics.Tests/PlatformImageTests.cs:16:		Stream stream = seekable ? memoryStream : new NonSeekableReadOnlyStream(memoryStream);
./src/Graphics/src/Graphics/Platforms/Windows/PlatformImage.cs:29:		private static readonly RecyclableMemoryStreamManager recyclableMemoryStreamManager = new();
./src/Graphics/src/Graphics/Platforms/Windows/PlatformImage.cs:54:				using (var memoryStream = new InMemoryRandomAccessStream())
./src/Graphics/src/Graphics/Platforms/Windows/PlatformImage.cs:56:					Save(memoryStream.AsStreamForWrite());
./src/Graphics/src/Graphics/Platforms/Windows/PlatformImage.cs:57:					memoryStream.Seek(0);
./src/Graphics/src/Graphics/Platforms/Windows/PlatformImage.cs:60:					var newBitmap = AsyncPump.Run(async () => await CanvasBitmap.LoadAsync(_creator, memoryStream, 96));
./src/Graphics/src/Graphics/Platforms/Windows/PlatformImage.cs:61:					using (var memoryStream2 = new InMemoryRandomAccessStream())
./src/Graphics/src/Graphics/Platforms/Windows/PlatformImage.cs:64:						AsyncPump.Run(async () => await newBitmap.SaveAsync(memoryStream2, CanvasBitmapFileFormat.Png));
./src/Graphics/src/Graphics/Platforms/Windows/PlatformImage.cs:66:						memoryStream2.Seek(0);
./src/Graphics/src/Graphics/Platforms/Windows/PlatformImage.cs:67:						var newImage = FromStream(memoryStream2.AsStreamForRead());
./src/Graphics/src/Graphics/Platforms/Windows/PlatformImage.cs:175:				using var memoryStream = recyclableMemoryStreamManager.GetStream();
./src/Graphics/src/Graphics/Platforms/Windows/PlatformImage.cs:176:				stream.CopyTo(memoryStream);
./src/Graphics/src/Graphics/Platforms/Windows/PlatformImage.cs:177:				memoryStream.Seek(0, SeekOrigin.Begin);
./src/Graphics/src/Graphics/Platforms/Windows/PlatformImage.cs:179:				var bitmapAsync = CanvasBitmap.LoadAsync(creator, memoryStream.AsRandomAccessStream());
./src/Essentials/src/Screenshot/Screenshot.android.cs:126:			var result = new MemoryStream();
./src/SingleProject/Resizetizer/src/WindowsIconGenerator.cs:45:			MemoryStream memoryStream = new MemoryStream();
./src/SingleProject/Resizetizer/src/WindowsIconGenerator.cs:46:			tools.Resize(dpi, destination, () => memoryStream);
./src/SingleProject/Resizetizer/src/WindowsIconGenerator.cs:47:			memoryStream.Position = 0;
./src/SingleProject/Resizetizer/src/WindowsIconGenerator.cs:61:			writer.Write((int)memoryStream.Length); // Specifies the size of the image's data in bytes
./src/SingleProject/Resizetizer/src/WindowsIconGenerator.cs:67:			memoryStream.CopyTo(writer.BaseStream);
./src/Controls/tests/TestCases.HostApp/Issues/Issue14801.cs:56:						return new MemoryStream(imageBytes);
./src/Controls/tests/TestCases.HostApp/Issues/Issue14471.xaml.cs:38:			setImageSource.Invoke(ImageSource.FromStream(() => new MemoryStream(imageBytes)));
./src/Controls/tests/DeviceTests/Elements/Image/ImageTests.iOS.cs:20:				var image = ImageSource.FromStream(() => new MemoryStream(Convert.FromBase64String(coffeeBase64)));
./src/Controls/tests/DeviceTests/Elements/Image/ImageTests.Android.cs:26:				var image1 = ImageSource.FromStream(() => new TestMemoryStream(Convert.FromBase64String(coffeeBase64)));
./src/Controls/tests/DeviceTests/Elements/Image/ImageTests.Android.cs:27:				var image2 = ImageSource.FromStream(() => new TestMemoryStream(Convert.FromBase64String(booksBase64)));
./src/Controls/tests/DeviceTests/Elements/Image/ImageTests.Android.cs:76:	class TestMemoryStream : MemoryStream
./src/Controls/tests/DeviceTests/Elements/Image/ImageTests.Android.cs:78:		public TestMemoryStream(byte[] data) : base(data) { }
./src/Controls/tests/DeviceTests/Elements/Image/ImageTests.Android.cs:82:			return "TestMemoryStream";
./src/Controls/tests/Core.UnitTests/ImageSourceTests.cs:165:				Stream = _ => Task.FromResult<Stream>(new MemoryStream())
./src/Controls/tests/Core.UnitTests/HostBuilderAppTests.cs:55:		public void AddingMemoryStreamBackedConfigurationWorks()
./src/Controls/tests/Core.UnitTests/HostBuilderAppTests.cs:60:			using var ms = new MemoryStream();
./src/Controls/samples/Controls.Sample/Pages/Blazor/CustomBlazorWebView.cs:96:					=> new MemoryStream(System.Text.Encoding.UTF8.GetBytes(_contents));
./src/Controls/samples/Controls.Sample/Pages/Others/RenderViewPage.xaml.cs:21:		MemoryStream? imageStream;
./src/Controls/samples/Controls.Sample/Pages/Others/RenderViewPage.xaml.cs:81:				imageStream = new MemoryStream();
./src/Controls/samples/Controls.Sample/Pages/Controls/ImagePage.xaml.cs:20:			StreamSourceImage.Source = ImageSource.FromStream(() => new MemoryStream(imageBytes));
dotnet/MAUI/dev--moljac--20241122-performance-recyclablememorystream % 
