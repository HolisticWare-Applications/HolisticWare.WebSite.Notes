# Properties in bidnings


*   https://gist.github.com/brendanzagaeski/9337026


Xamarin.Android Java bindings projects will by default automatically bind any Java method that starts with "get" to be the getter of a C# property. To prevent this in specific cases, you can set the `propertyName` attribute of the method to the empty string. The same is true for methods that start with "set", except that they will only be converted to property setters if there is already a corresponding property getter. This requirement prevents the creation of set-only properties (see also http://msdn.microsoft.com/en-us/library/ms229006.aspx).


So for example, you would add something like the following to the Metadata.xml file:

```
<attr path="/api/package[@name='com.example.testandroidlib']/class[@name='MyClass']/method[@name='getNumberTen']" name="propertyName"></attr>
```


