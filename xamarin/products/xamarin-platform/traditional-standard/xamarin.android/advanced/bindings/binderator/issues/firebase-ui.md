# FirebaseUI

firebase-ui.md

Running:

```
git clean -xdf; dotnet cake -t:binderate
```

results in:

```
Unhandled exception: System.Exception: no value
   at AndroidBinderator.Extensions.Satisfies(Dependency dependency, String value) in ./util/Xamarin.AndroidBinderator/Xamarin.AndroidBinderator/Extensions.cs:line 59
   at AndroidBinderator.BindingProjectDependencyVerifier.<>c__DisplayClass1_0.<VerifyArtifact>b__0(MavenArtifactConfig ma) in ./util/Xamarin.AndroidBinderator/Xamarin.AndroidBinderator/BindingProjectDependencyVerifier.cs:line 32
   at System.Linq.Enumerable.TryGetFirst[TSource](IEnumerable`1 source, Func`2 predicate, Boolean& found)
   at System.Linq.Enumerable.FirstOrDefault[TSource](IEnumerable`1 source, Func`2 predicate)
   at AndroidBinderator.BindingProjectDependencyVerifier.VerifyArtifact(BindingConfig config, BindingProjectModel projectModel, List`1 exceptions) in ./util/Xamarin.AndroidBinderator/Xamarin.AndroidBinderator/BindingProjectDependencyVerifier.cs:line 31
   at AndroidBinderator.BindingProjectDependencyVerifier.Verify(BindingConfig config, List`1 artifacts) in ./util/Xamarin.AndroidBinderator/Xamarin.AndroidBinderator/BindingProjectDependencyVerifier.cs:line 16
   at AndroidBinderator.Engine.ProcessConfig(BindingConfig config) in ./util/Xamarin.AndroidBinderator/Xamarin.AndroidBinderator/Engine.cs:line 40
   at AndroidBinderator.Engine.BinderateAsync(BindingConfig config) in ./util/Xamarin.AndroidBinderator/Xamarin.AndroidBinderator/Engine.cs:line 31
   at Xamarin.AndroidBinderator.Tool.BinderateCommand.RunBinderateVerb(String[] configFiles, String basePath) in ./util/Xamarin.AndroidBinderator/Xamarin.AndroidBinderator.Tool/Commands/BinderateCommand.cs:line 52
   at System.CommandLine.Invocation.AnonymousCommandHandler.InvokeAsync(InvocationContext context)
   at System.CommandLine.Invocation.InvocationPipeline.<>c__DisplayClass4_0.<<BuildInvocationChain>b__0>d.MoveNext()
--- End of stack trace from previous location ---
   at System.CommandLine.Builder.CommandLineBuilderExtensions.<>c__DisplayClass17_0.<<UseParseErrorReporting>b__0>d.MoveNext()
--- End of stack trace from previous location ---
   at System.CommandLine.Builder.CommandLineBuilderExtensions.<>c__DisplayClass12_0.<<UseHelp>b__0>d.MoveNext()
--- End of stack trace from previous location ---
   at System.CommandLine.Builder.CommandLineBuilderExtensions.<>c__DisplayClass22_0.<<UseVersionOption>b__0>d.MoveNext()
--- End of stack trace from previous location ---
   at System.CommandLine.Builder.CommandLineBuilderExtensions.<>c__DisplayClass19_0.<<UseTypoCorrections>b__0>d.MoveNext()
--- End of stack trace from previous location ---
   at System.CommandLine.Builder.CommandLineBuilderExtensions.<>c.<<UseSuggestDirective>b__18_0>d.MoveNext()
--- End of stack trace from previous location ---
   at System.CommandLine.Builder.CommandLineBuilderExtensions.<>c__DisplayClass16_0.<<UseParseDirective>b__0>d.MoveNext()
--- End of stack trace from previous location ---
   at System.CommandLine.Builder.CommandLineBuilderExtensions.<>c.<<RegisterWithDotnetSuggest>b__5_0>d.MoveNext()
--- End of stack trace from previous location ---
   at System.CommandLine.Builder.CommandLineBuilderExtensions.<>c__DisplayClass8_0.<<UseExceptionHandler>b__0>d.MoveNext()
An error occurred when executing task 'binderate'.
Executing custom task teardown action (binderate)...
Completed in 00:00:02.0844103


```

Caused by dependency (``) without version:

https://repo1.maven.org/maven2/com/firebaseui/firebase-ui-auth/9.0.0/firebase-ui-auth-9.0.0.pom

```xml
<?xml version="1.0" encoding="UTF-8"?>
<project xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 https://maven.apache.org/xsd/maven-4.0.0.xsd" xmlns="http://maven.apache.org/POM/4.0.0"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <!-- This module was also published with a richer model, Gradle metadata,  -->
  <!-- which should be used instead. Do not delete the following line which  -->
  <!-- is to indicate to Gradle or any Gradle module metadata file consumer  -->
  <!-- that they should prefer consuming it instead. -->
  <!-- do_not_remove: published-with-gradle-metadata -->
  <modelVersion>4.0.0</modelVersion>
  <groupId>com.firebaseui</groupId>
  <artifactId>firebase-ui-auth</artifactId>
  <version>9.0.0</version>
  <packaging>aar</packaging>
  <name>FirebaseUI Auth</name>
  <description>FirebaseUI for Android</description>
  <url>https://github.com/firebase/firebaseui-android</url>
  <licenses>
    <license>
      <name>The Apache Software License, Version 2.0</name>
      <url>http://www.apache.org/licenses/LICENSE-2.0.txt</url>
    </license>
  </licenses>
  <developers>
    <developer>
      <name>FirebaseUI Contributors</name>
      <url>https://github.com/firebase/FirebaseUI-Android/graphs/contributors</url>
    </developer>
  </developers>
  <scm>
    <connection>scm:git:git@github.com/firebase/firebaseui-android.git</connection>
    <developerConnection>scm:git:git@github.com/firebase/firebaseui-android.git</developerConnection>
    <url>https://github.com/firebase/firebaseui-android</url>
  </scm>
  <dependencyManagement>
    <dependencies>
      <dependency>
        <groupId>com.google.firebase</groupId>
        <artifactId>firebase-bom</artifactId>
        <version>33.9.0</version>
        <type>pom</type>
        <scope>import</scope>
      </dependency>
    </dependencies>
  </dependencyManagement>
  <dependencies>
    <dependency>
      <groupId>com.google.firebase</groupId>
      <artifactId>firebase-auth</artifactId>
      <scope>compile</scope>
    </dependency>
    <dependency>
      <groupId>com.google.android.gms</groupId>
      <artifactId>play-services-auth</artifactId>
      <version>21.3.0</version>
      <scope>compile</scope>
    </dependency>
    <dependency>
      <groupId>org.jetbrains.kotlin</groupId>
      <artifactId>kotlin-stdlib</artifactId>
      <version>2.1.0</version>
      <scope>compile</scope>
    </dependency>
    <dependency>
      <groupId>com.google.android.material</groupId>
      <artifactId>material</artifactId>
      <version>1.4.0</version>
      <scope>runtime</scope>
    </dependency>
    <dependency>
      <groupId>androidx.activity</groupId>
      <artifactId>activity</artifactId>
      <version>1.2.3</version>
      <scope>runtime</scope>
    </dependency>
    <dependency>
      <groupId>androidx.fragment</groupId>
      <artifactId>fragment</artifactId>
      <version>1.3.5</version>
      <scope>runtime</scope>
    </dependency>
    <dependency>
      <groupId>androidx.browser</groupId>
      <artifactId>browser</artifactId>
      <version>1.3.0</version>
      <scope>runtime</scope>
    </dependency>
    <dependency>
      <groupId>androidx.constraintlayout</groupId>
      <artifactId>constraintlayout</artifactId>
      <version>2.0.4</version>
      <scope>runtime</scope>
    </dependency>
    <dependency>
      <groupId>androidx.credentials</groupId>
      <artifactId>credentials</artifactId>
      <version>1.3.0</version>
      <scope>runtime</scope>
    </dependency>
    <dependency>
      <groupId>androidx.credentials</groupId>
      <artifactId>credentials-play-services-auth</artifactId>
      <version>1.3.0</version>
      <scope>runtime</scope>
    </dependency>
    <dependency>
      <groupId>androidx.lifecycle</groupId>
      <artifactId>lifecycle-extensions</artifactId>
      <version>2.2.0</version>
      <scope>runtime</scope>
    </dependency>
    <dependency>
      <groupId>androidx.core</groupId>
      <artifactId>core-ktx</artifactId>
      <version>1.13.1</version>
      <scope>runtime</scope>
    </dependency>
    <dependency>
      <groupId>androidx.lifecycle</groupId>
      <artifactId>lifecycle-viewmodel-ktx</artifactId>
      <version>2.2.0</version>
      <scope>runtime</scope>
    </dependency>
    <dependency>
      <groupId>org.jetbrains.kotlinx</groupId>
      <artifactId>kotlinx-coroutines-core</artifactId>
      <version>1.7.3</version>
      <scope>runtime</scope>
    </dependency>
    <dependency>
      <groupId>org.jetbrains.kotlinx</groupId>
      <artifactId>kotlinx-coroutines-android</artifactId>
      <version>1.7.3</version>
      <scope>runtime</scope>
    </dependency>
    <dependency>
      <groupId>com.google.android.libraries.identity.googleid</groupId>
      <artifactId>googleid</artifactId>
      <version>1.1.1</version>
      <scope>runtime</scope>
    </dependency>
    <dependency>
      <groupId>androidx.legacy</groupId>
      <artifactId>legacy-support-v4</artifactId>
      <version>1.0.0</version>
      <scope>runtime</scope>
    </dependency>
    <dependency>
      <groupId>androidx.cardview</groupId>
      <artifactId>cardview</artifactId>
      <version>1.0.0</version>
      <scope>runtime</scope>
    </dependency>
  </dependencies>
</project>
```
