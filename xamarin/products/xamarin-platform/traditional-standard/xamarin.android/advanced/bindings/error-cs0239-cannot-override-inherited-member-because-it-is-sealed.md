# Error CS0239: cannot override inherited member because it is sealed 

error-cs0239-cannot-override-inherited-member-because-it-is-sealed.md

```
Error CS0239: 
    'ItemKeyedDataSourceInvoker.MapByPage(IFunction)': 
cannot override inherited member 
    'ItemKeyedDataSource.MapByPage(IFunction)' 
because it is sealed (CS0239) (android.arch.paging.common)
```

```
Error CS0239: 
cannot override inherited member 
because it is sealed 
```

```
    <attr
        path="/api/package[@name='android.arch.paging']/class[@name='ItemKeyedDataSource']/method[@name='mapByPage' and count(parameter)=1 and parameter[1][@type='android.arch.core.util.Function&lt;java.util.List&lt;Value&gt;, java.util.List&lt;ToValue&gt;&gt;']]"
        name="final"
        >
        false
    </attr>
```
