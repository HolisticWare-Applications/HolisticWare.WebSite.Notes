# Shakebugs

https://shakebugs.com

https://www.shakebugs.com/

https://github.com/shakebugs/browser

https://tuyen-vuduc.tech/introduce-shakebugs-for-net-maui

```
<PackageReference Include="ShakeBugs.MAUI">
  <Version>17.0.0</Version>
</PackageReference>
```

```
builder
    ...
    .UseShakeBugs(
        androidApiKey: "YOUR_ANDROID_API_KEY",
        iosApiKey: "YOUR_IOS_API_KEY",
        crashReportingEnabled: true
    )
    ...
```

Create a property in your code behind

protected string MyProperty { get { return "your value"; } }
then in javascript

var myValue = "<%= MyProperty %>";


Use javascript tag

<script>
    var var1 = @var1;  
    var var2 = @var2;  
</script>
Use hidden field

<input type="hidden" value="@var1" id="h_var1"/>  
<input type="hidden" value="@var2" id="h_var2" />`
in js

$(function()
{
    var var1 = $("#h_var1").val();
    var var2 = $("#h_var2").val();
}
3.Retrieve data via ajax using json

var var1;
var var2;
    $.get(url,function(result)
    {
        var1 = result.var1; var2 = result.var2;
     }


whichever method you use, remember to use Microsoft.Security.Application.AntiXss.JavaScriptEncode


n HTML:

<script type="text/javascript">
  alert(<%=Greetings()%>);
</script>
In code behind:

protected string Greetings()
{
    return Microsoft.Security.Application.AntiXss.JavaScriptEncode("Hello World!");
}






string blah = "this is a blah string";



<script type="text/javascript"> var JavascriptBlah = '<%=blah%>'</script>