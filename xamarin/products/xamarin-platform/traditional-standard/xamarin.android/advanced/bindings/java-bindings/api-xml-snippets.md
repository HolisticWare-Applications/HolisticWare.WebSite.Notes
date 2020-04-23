# Metadata snippets

metadata-xml-snippets.md

## `add-node`

### `compareTo()`

```
    <add-node
        path="/api/package[@name='androidx.media2.exoplayer.external.offline']/class[@name='StreamKey']"
        >
        <method 
            visibility="public" static="false" abstract="false" return="int" name="compareTo" 
            native="false" synchronized="false"  final="false" deprecated="not deprecated" 
            >
            <parameter name="p0" type="java.lang.Object" />
        </method>
    </add-node>
```

### `compare()`

```
    <add-node
        path="/api/package[@name='androidx.media2.exoplayer.external.source']/class[@name='ConcatenatingMediaSource']"
        >
        <method 
            visibility="public" static="false" abstract="false" return="int" name="compare" 
            native="false" synchronized="false" final="false" deprecated="not deprecated" 
            >
            <parameter type="java.lang.Object" name="lhs" />
            <parameter type="java.lang.Object" name="rhs" />
        </method>
    </add-node>
    <add-node
```

```
<metadata>
	<add-node
		path="/api/package[@name='COM.COMPANY.APP.PACKAGE']"
		>
		<class
			abstract="true" static="false" visibility="public" name="BaseVideoView"
			deprecated="not deprecated" final="false"
			extends="android.widget.FrameLayout" 
            extends-generic-aware="android.widget.FrameLayout" 
			>
			<implements 
				name="COM.COMPANY.APP.PACKAGE.Component" 
				name-generic-aware="COM.COMPANY.APP.PACKAGE.Component"
				>
			</implements>

			<!--
			public COM.COMPANY.APP.PACKAGE.BaseVideoView(android.content.Context);
			-->
			<constructor 
				deprecated="not deprecated" final="false" 
				static="false" visibility="public" type="COM.COMPANY.APP.PACKAGE.BaseVideoView" name="BaseVideoView"
				>
				<parameter 
					type="android.content.Context"
					name="context" 
					>
				</parameter>
			</constructor>

			<!--
			public boolean onTouchEvent(android.view.MotionEvent);
			-->
			<method 
				visibility="public" abstract="false" static="false" return="boolean" name="onTouchEvent"
				deprecated="not deprecated" final="false" native="false" synchronized="false" 
				>
				<parameter 
					type="android.view.MotionEvent"
					name="event" 
					>
				</parameter>
			</method>

		</class>
	</add-node>
```

```
	<add-node
		path="/api/package[@name='COM.COMPANY.APP.PACKAGE']/class[@name='CLASSNAME']"
		>
        <!--
        public boolean onTouchEvent(android.view.MotionEvent);
        -->
        <method 
            visibility="public" abstract="false" static="false" return="boolean" name="onTouchEvent"
            deprecated="not deprecated" final="false" native="false" synchronized="false" 
            >
            <parameter 
                type="android.view.MotionEvent"
                name="event" 
                >
            </parameter>
        </method>
	</add-node>

   <add-node
        path="/api/package[@name='com.google.android.gms.wearable']/class[@name='DataItemBuffer']"
        >
        <method 
            static="false" visibility="protected" return="Java.Lang.Object" name="getEntry" 
            abstract="false" deprecated="not deprecated" final="false" native="false" synchronized="false" 
            >
            <parameter type="int" name="p0">
            </parameter>
            <parameter type="int" name="p1">
            </parameter>
        </method>
    </add-node>

</metadata>
```



