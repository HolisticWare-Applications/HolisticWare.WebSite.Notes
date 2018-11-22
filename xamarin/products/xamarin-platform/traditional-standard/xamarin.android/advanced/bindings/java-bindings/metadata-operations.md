# Metadata Operations


	<attr 
		path="/api/package[@name='']/class[@name='a']" 
		name="obfuscated"
		>
		false
	</attr>

	
	<remove-node 
		path="/api/package[starts-with(@name, 'com.socialize.google.gson.internal')]" 
		>
	</remove-node>

	
	https://gist.github.com/JonDouglas/dda6d8ace7d071b0e8cb#common-paths
	
	
	https://gist.github.com/brendanzagaeski/9607158
	https://gist.github.com/brendanzagaeski/c32d65c21e152799af69 
	https://gist.github.com/brendanzagaeski/6d1052a8b76f9067548e 
	https://gist.github.com/brendanzagaeski/69f490e31ca6a71136ff 
	https://gist.github.com/brendanzagaeski/3868e30b85a1feb1181b 
	https://gist.github.com/brendanzagaeski/9834034 

	
	<attr
		path="/api/package[@name='com.koushikdutta.async.util']"
		name="managedName"
		>
		KoushikDutta.Async.Utilities
	</attr>
	
	
	
	<add-node
	path="/api/package[@name='com.koushikdutta.async.util']"
	>
		
		<class
			abstract="true" static="false" visibility="public" name="LruCache"
			deprecated="not deprecated" final="false"
			extends="java.lang.Object" extends-generic-aware="java.lang.Object" 
			>
			<!--
			-->
			<field 
				visibility="public"  static="false" 
				type="java.util.Map" 
				type-generic-aware="java.util.Map&lt;java.lang.String, com.twilio.ipmessaging.Channel &gt;" 
				name="channelMap"
				deprecated="not deprecated" final="false" transient="false" volatile="false"
				>
			</field>
			
			<!--
			public void updateToken(java.lang.String, com.twilio.ipmessaging.Constants$StatusListener);
			-->
			<method 
				visibility="public" abstract="false" static="false" return="void" name="updateToken"
				deprecated="not deprecated" final="false" native="false" synchronized="false" 
				>
				<parameter 
					type="java.lang.String"
					name="s" 
					>
				</parameter>
				<!--
					Code for method generation fails with following type:
					type="com.twilio.ipmessaging.Constants$StatusListener"
				-->
				<parameter 
					type="java.lang.Object"
					name="listener" 
					>
				</parameter>
			</method>
	
	