# `add-node` Samples

add-node-samples.md

*   https://www.liudeyun.net/Troubleshooting-for-Xamarin-Android-binding-project/


```
    <add-node 
        path="/api/package[@name='io.grpc']/class[@name='Deadline']"
        >
        <method 
            visibility="public" static="false" abstract="false" return="int" name="compareTo" 
            native="false" synchronized="false" final="false" deprecated="not deprecated" 
            >
            <parameter name="p0" type="java.lang.Object" />
        </method>
    </add-node>
```


```
    <add-node path="/api/package/class[implements[@name='java.util.Comparator']]">
        <method 
            visibility="public" static="false" abstract="false" return="int" name="compare" 
            native="false" synchronized="false" final="false" deprecated="not deprecated" 
            >
            <parameter type="java.lang.Object" name="lhs"  />
            <parameter type="java.lang.Object" name="rhs"  />
        </method>
    </add-node>
```

```
    <add-node
        path="/api/package[@name='androidx.mediarouter.app']/class[@name='MediaRouteDynamicChooserDialog.RouteComparator']"
        >        
        <method 
            visibility="public" static="false" abstract="false" return="int" name="Compare" 
            native="false" synchronized="false" final="false" deprecated="not deprecated" 
            >
            <parameter type="java.lang.Object" name="lhs" />
            <parameter type="java.lang.Object" name="rhs" />
        </method>
    </add-node>
```



```
    <add-node
        path="/api/package[@name='androidx.navigation']/class[@name='NavType.SerializableType']"
        >
        <method 
            visibility="public" static="false" abstract="false" return="void" name="put" 
            native="false" synchronized="false"  final="false" deprecated="not deprecated" 
            >
            <parameter 
                type="android.os.Bundle" jni-type="Landroid/os/Bundle;" name="bundle" 
                >                
            </parameter>
            <parameter 
                type="java.lang.String" jni-type="Ljava/lang/String;" name="key" 
                >                
            </parameter>
            <parameter 
                type="java.lang.Object" jni-type="Ljava/lang/Object;" name="value" 
                >                
            </parameter>
        </method>
    </add-node>
```
