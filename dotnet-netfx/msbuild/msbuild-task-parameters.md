# MSBuild `Task` Parameters

msbuild-task-parameters.md

```
<ItemGroup>
  <MyDictionary Include="Value1">
    <MyKey>key1</MyKey>
  </MyDictionary>
  <MyDictionary Include="Value2">
    <MyKey>key2</MyKey>
  </MyDictionary>
  ...
  <MyDictionary Include="ValueN">
    <MyKey>keyN</MyKey>
  </MyDictionary>
</ItemGroup>

<Target Name="MyTarget">
  <MyTask MyInput="@(MyDictionary)" ... />
</Target>
```

```
class MyTask: ITask
{
    public ITaskItem[] MyInput { get; set; }

    public override bool Execute()
    {
        ...
        var dic = new Dictionary<string, string>();
        foreach (var input in MyInput)
        {
            dic.Add(input.GetMetadata("MyKey"), input.ItemSpec);
        }
        ...
    }
}
```

## References / Links

*   https://stackoverflow.com/questions/31224609/how-can-i-pass-a-key-value-set-of-parameters-to-a-task-in-msbuild

*   https://stackoverflow.com/questions/47962751/hashtable-dictionary-parameters-in-msbuild-task

*   https://stackoverflow.com/questions/46226120/how-to-pass-dynamic-properties-to-an-msbuild-task

*   https://stackoverflow.com/questions/7820802/passing-array-to-custom-msbuild-task