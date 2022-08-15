# Type is defined multiple times

type-is-defined-multiple-times.md

```
java.lang.RuntimeException: com.android.tools.r8.CompilationFailedException: Compilation failed to complete, origin
Caused by: com.android.tools.r8.internal.f: 
Type 
    com.google.android.gms.measurement.internal.zzgc 
is defined multiple times: 
```

```
java.lang.RuntimeException: com.android.tools.r8.CompilationFailedException: Compilation failed to complete, origin

Caused by: com.android.tools.r8.internal.f: 
Type 
    com.google.android.gms.measurement.internal.zzgc 
is defined multiple times: 
    obj/Debug/lp/150/jl/classes.jar:com/google/android/gms/measurement/internal/zzgc.class, 
    obj/Debug/lp/153/jl/classes.jar:com/google/android/gms/measurement/internal/zzgc.class
```


```
playservices-measurement-base-21.0.0.aar
playservices-measurement-sdk-20.1.2.aar
```

```xml
<?xml version='1.0' encoding='UTF-8'?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <groupId>com.google.android.gms</groupId>
  <artifactId>play-services-measurement-sdk-api</artifactId>
  <version>20.1.2</version>
  <packaging>aar</packaging>
  <dependencies>
    <dependency>
      <groupId>com.google.android.gms</groupId>
      <artifactId>play-services-basement</artifactId>
      <version>18.0.0</version>
      <scope>compile</scope>
      <type>aar</type>
    </dependency>
    <dependency>
      <groupId>com.google.android.gms</groupId>
      <artifactId>play-services-measurement-base</artifactId>
      <version>[20.1.2]</version>
      <scope>compile</scope>
      <type>aar</type>
    </dependency>
  </dependencies>
  <name>play-services-measurement-sdk-api</name>
  <licenses>
    <license>
      <name>Android Software Development Kit License</name>
      <url>https://developer.android.com/studio/terms.html</url>
      <distribution>repo</distribution>
    </license>
  </licenses>
</project>
```

```xml
<?xml version='1.0' encoding='UTF-8'?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <groupId>com.google.android.gms</groupId>
  <artifactId>play-services-measurement-base</artifactId>
  <version>21.0.0</version>
  <packaging>aar</packaging>
  <dependencies>
    <dependency>
      <groupId>com.google.android.gms</groupId>
      <artifactId>play-services-basement</artifactId>
      <version>18.0.0</version>
      <scope>compile</scope>
      <type>aar</type>
    </dependency>
  </dependencies>
  <name>play-services-measurement-base</name>
  <licenses>
    <license>
      <name>Android Software Development Kit License</name>
      <url>https://developer.android.com/studio/terms.html</url>
      <distribution>repo</distribution>
    </license>
  </licenses>
</project>
```