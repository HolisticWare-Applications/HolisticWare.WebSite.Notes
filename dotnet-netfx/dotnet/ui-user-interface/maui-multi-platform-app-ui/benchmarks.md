# MAUI Benchmarks

benchmarks.md


https://github.com/dotnet/maui/pull/18499/files


```csharp
namespace Microsoft.Maui.Benchmarks
{
	[MemoryDiagnoser]
	public class LayoutBenchmarker
	{
		static readonly Func<ILayout, IView, int> GetLayoutHandlerIndexFn 
			= typeof(LayoutHandler)
                .Assembly
                .GetType("Microsoft.Maui.Handlers.LayoutExtensions")!
				.GetMethod("GetLayoutHandlerIndex", BindingFlags.Static | BindingFlags.Public)!
				.CreateDelegate<Func<ILayout, IView, int>>();

		static readonly Border[] Views = new[]
		{
			new Border(), new Border(), new Border(), new Border(), new Border(), new Border(), new Border(),
			new Border(), new Border(), new Border(), new Border(), new Border(), new Border(), new Border()
		};

		static readonly int Iterations = Views.Length;

		[Benchmark]
		public void GetLayoutHandlerIndex()
		{
			var layout = new VerticalStackLayout();

			for (int i = 0; i < Iterations; i++)
			{
				var view = Views[i];
				layout.Add(view);
				GetLayoutHandlerIndexFn(layout, view);
			}
		}
	}
}
````