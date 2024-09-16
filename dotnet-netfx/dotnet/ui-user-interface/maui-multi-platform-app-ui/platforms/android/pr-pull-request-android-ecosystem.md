# PR Pull Request Android Ecosystem

pr-pull-request-android-ecosystem.md

# NuGets import

https://dev.azure.com/dnceng/internal/_build?definitionId=931&_a=summary


## Files

```bash
code -n \
    ./src/Controls/tests/DeviceTests/TestClasses/CustomTestAdapterHandler.Android.cs \
    ./src/Controls/src/Core/Platform/Android/MultiPageFragmentStateAdapter.cs \
    ./src/Controls/src/Core/Platform/Android/TabbedPageManager.cs \
    ./src/Controls/src/Core/Compatibility/Handlers/Shell/Android/ShellSectionRenderer.cs \
    ./src/Controls/src/Core/Compatibility/Handlers/Shell/Android/ShellFragmentStateAdapter.cs \
```

```bash
code -n .                                                                                                
code src/Compatibility/ControlGallery/src/Android/Compatibility.ControlGallery.Android.csproj 
code src/Compatibility/ControlGallery/src/EmbeddingTestBeds/Embedding.Droid/Directory.Build.targets 
code src/Compatibility/Maps/src/Android/Compatibility.Maps.Android.csproj 
code src/Compatibility/Material/src/Android/Compatibility.Material.Android.csproj 
code src/Controls/Foldable/src/Controls.Foldable.csproj 
code src/Controls/src/Xaml/Controls.Xaml.csproj 
code src/Core/src/Core.csproj
code src/Core/tests/DeviceTests/Core.DeviceTests.csproj 
code src/Essentials/src/Essentials.csproj 
code src/TestUtils/src/DeviceTests.Runners/TestUtils.DeviceTests.Runners.csproj 
code src/TestUtils/src/DeviceTests/TestUtils.DeviceTests.csproj 
```

```bash
code src/Compatibility/ControlGallery/src/Android/Compatibility.ControlGallery.Android.csproj 
code src/Compatibility/ControlGallery/src/EmbeddingTestBeds/Embedding.Droid/Directory.Build.targets 
code src/Compatibility/Maps/src/Android/Compatibility.Maps.Android.csproj 
code src/Compatibility/Material/src/Android/Compatibility.Material.Android.csproj 
code src/Controls/Foldable/src/Controls.Foldable.csproj 
code src/Controls/src/Core/Compatibility/Handlers/Shell/Android/ShellBottomNavViewAppearanceTracker.cs 
code src/Controls/src/Core/Handlers/Items/Android/MauiRecyclerView.cs 
code src/Controls/src/Core/Platform/Android/BottomNavigationViewUtils.cs 
code src/Controls/src/Core/Platform/Android/TabbedPageManager.cs 
code src/Controls/src/Xaml/Controls.Xaml.csproj 
code src/Controls/tests/DeviceTests/TestClasses/CustomTestAdapterHandler.Android.cs 
code src/Core/AndroidNative/build.gradle 
code src/Core/AndroidNative/maui/build.gradle 
code src/Core/src/Core.csproj 
code src/Core/src/Platform/Android/MauiSwipeRefreshLayout.cs 
code src/Core/src/Platform/Android/Navigation/StackNavigationManager.cs 
code src/Essentials/src/Essentials.csproj 
code src/TestUtils/src/DeviceTests/AssertionExtensions.Android.cs 
code -n .
code src/Controls/src/Xaml/Controls.Xaml.csproj 
code src/Core/src/Core.csproj 
code src/Core/tests/DeviceTests/Core.DeviceTests.csproj 
code src/TestUtils/src/DeviceTests.Runners/TestUtils.DeviceTests.Runners.csproj 
code src/TestUtils/src/DeviceTests/TestUtils.DeviceTests.csproj 
```


```bash
code -n \
    ./src/Compatibility/Core.LegacyRenderers/Android/ListViewAdapter.cs \
    ./src/Compatibility/Core/src/Android/AppCompat/FormsFragmentPagerAdapter.cs \
    ./src/Compatibility/Core/src/Android/Renderers/ListViewAdapter.cs \
    ./src/Compatibility/Core/src/Android/Renderers/TableViewModelRenderer.cs \
    ./src/Compatibility/ControlGallery/src/Android/Compatibility/CustomRenderers.cs \
    ./src/Controls/tests/DeviceTests/TestClasses/CustomTestAdapterHandler.Android.cs \
    ./src/Controls/src/Core/Platform/Android/MultiPageFragmentStateAdapter.cs \
    ./src/Controls/src/Core/Handlers/Items/Android/Adapters/ItemsViewAdapter.cs \
    ./src/Controls/src/Core/Compatibility/Handlers/Shell/Android/ShellFragmentStateAdapter.cs \
    ./src/Controls/src/Core/Compatibility/Handlers/Shell/Android/ShellSearchViewAdapter.cs \
    ./src/Controls/src/Core/Compatibility/Handlers/TableView/Android/TableViewModelRenderer.cs \
    ./src/Controls/src/Core/Compatibility/Handlers/ListView/Android/ListViewRenderer.cs \
    ./src/Controls/src/Core/Compatibility/Handlers/ListView/Android/ListViewAdapter.cs \
```

```bash
code code src/Controls/tests/DeviceTests/ControlsHandlerTestBase.Android.cs
code src/Controls/tests/DeviceTests/ControlsHandlerTestBase.Android.cs  
code src/Controls/tests/DeviceTests/Stubs/WindowHandlerStub.Android.cs 
code src/Controls/tests/DeviceTests/Elements/Shell/ShellTests.Android.cs
code src/Compatibility/Core/src/Android/ButtonLayoutManager.cs
code src/Compatibility/Core/src/Android/HandlerToRendererShim.cs   
```


```
./src/Compatibility/Core.LegacyRenderers/Android/ListViewAdapter.cs:134:		public override long GetItemId(int position)
./src/Compatibility/Core/src/Android/AppCompat/FormsFragmentPagerAdapter.cs:42:		public override long GetItemId(int position)
./src/Compatibility/Core/src/Android/Renderers/ListViewRenderer.cs:204:			var id = Control.GetItemIdAtPosition(position);
./src/Compatibility/Core/src/Android/Renderers/ListViewRenderer.cs:220:			var id = Control.GetItemIdAtPosition(position);
./src/Compatibility/Core/src/Android/Renderers/ListViewAdapter.cs:135:		public override long GetItemId(int position)
./src/Compatibility/Core/src/Android/Renderers/TableViewModelRenderer.cs:93:		public override long GetItemId(int position)
./src/Compatibility/ControlGallery/src/Android/Compatibility/CustomRenderers.cs:340://		public override long GetItemId(int position)
./src/Compatibility/ControlGallery/src/Android/Compatibility/CustomRenderers.cs:525://		public override long GetItemId(int position)
./src/Controls/tests/DeviceTests/TestClasses/CustomTestAdapterHandler.Android.cs:41:			public override long GetItemId(int position)
./src/Controls/src/Core/Platform/Android/MultiPageFragmentStateAdapter.cs:30:			var fragment = FragmentContainer.CreateInstance(GetItemIdByPosition(position), _context);
./src/Controls/src/Core/Platform/Android/MultiPageFragmentStateAdapter.cs:34:		public override long GetItemId(int position)
./src/Controls/src/Core/Platform/Android/MultiPageFragmentStateAdapter.cs:36:			return GetItemIdByPosition(position).ItemId;
./src/Controls/src/Core/Platform/Android/MultiPageFragmentStateAdapter.cs:44:		AdapterItemKey GetItemIdByPosition(int position)
./src/Controls/src/Core/Handlers/Items/Android/Adapters/ItemsViewAdapter.cs:142:		public override long GetItemId(int position)
./src/Controls/src/Core/Compatibility/Handlers/Shell/Android/ShellFragmentStateAdapter.cs:58:		public override long GetItemId(int position)
./src/Controls/src/Core/Compatibility/Handlers/Shell/Android/ShellSearchViewAdapter.cs:87:		public override long GetItemId(int position)
./src/Controls/src/Core/Compatibility/Handlers/TableView/Android/TableViewModelRenderer.cs:128:		public override long GetItemId(int position)
./src/Controls/src/Core/Compatibility/Handlers/ListView/Android/ListViewRenderer.cs:192:			var id = Control.GetItemIdAtPosition(position);
./src/Controls/src/Core/Compatibility/Handlers/ListView/Android/ListViewRenderer.cs:208:			var id = Control.GetItemIdAtPosition(position);
./src/Controls/src/Core/Compatibility/Handlers/ListView/Android/ListViewAdapter.cs:138:		public override long GetItemId(int position)
```




src/Controls/src/Xaml/Controls.Xaml.csproj

  <ItemGroup Condition="$(TargetFramework.Contains('-android'))">
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.Runtime" Version="2.8.3.1" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.LiveData.Core" Version="2.8.3.1" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.ViewModelSavedState" Version="2.8.3.1" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.ViewModel" Version="2.8.3.1" />
  </ItemGroup>


src/Core/src/Core.csproj

    <PackageReference Include="Xamarin.AndroidX.Lifecycle.Common" Version="2.8.3.1" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.LiveData.Core" Version="2.8.3.1" />

src/Core/tests/DeviceTests/Core.DeviceTests.csproj

  <ItemGroup Condition="$(TargetFramework.Contains('-android'))">
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.Common" Version="2.8.3.1" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.LiveData.Core" Version="2.8.3.1" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.Runtime" Version="2.8.3.1" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.Runtime.Ktx" Version="2.8.3.1" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.ViewModel" Version="2.8.3.1" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.ViewModel.Ktx" Version="2.8.3.1" />
  </ItemGroup>

src/TestUtils/src/DeviceTests.Runners/TestUtils.DeviceTests.Runners.csproj

  <ItemGroup Condition="$(TargetFramework.Contains('-android'))">
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.Common" Version="2.8.3.1" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.LiveData.Core" Version="2.8.3.1" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.Runtime" Version="2.8.3.1" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.Runtime.Ktx" Version="2.8.3.1" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.ViewModel" Version="2.8.3.1" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.ViewModel.Ktx" Version="2.8.3.1" />
  </ItemGroup>
  
src/TestUtils/src/DeviceTests/TestUtils.DeviceTests.csproj

  <ItemGroup Condition="$(TargetFramework.Contains('-android'))">
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.Common" Version="2.8.3.1" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.LiveData.Core" Version="2.8.3.1" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.Runtime" Version="2.8.3.1" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.Runtime.Ktx" Version="2.8.3.1" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.ViewModel" Version="2.8.3.1" />
    <PackageReference Include="Xamarin.AndroidX.Lifecycle.ViewModel.Ktx" Version="2.8.3.1" />
  </ItemGroup>


