# JDK

jdk.md

2020-03 several different JDKs

*   Microsoft

*   Amazon Correto

    *   https://aws.amazon.com/corretto/

    *   https://github.com/corretto/corretto-8

*   Zulu

    *   https://www.azul.com/downloads/zulu-community/

*   Adopt Open JDK

    *   https://adoptopenjdk.net/

## Mac OSX

```
echo export "JAVA_HOME=\$(/usr/libexec/java_home)" >> ~/.bash_profile
```

```
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=${PATH}:${JAVA_HOME}/bin
```

### Microsoft

```
export JDK_LOCATION_ROOT="/Users/Shared/Projects/d/system-installed/macosx/jdk"
export JAVA_HOME="$JDK_LOCATION_ROOT/microsoft/microsoft_dist_openjdk_8.0.25
```

### Amazon Correto

```
export JDK_LOCATION_ROOT="/Users/Shared/Projects/d/system-installed/macosx/jdk"
export JAVA_HOME="$JDK_LOCATION_ROOT/Amazon-Correto/amazon-corretto-8.jdk/Contents/Home
```

### Zulu

```
export JDK_LOCATION_ROOT="/Users/Shared/Projects/d/system-installed/macosx/jdk"
export JAVA_HOME="$JDK_LOCATION_ROOT/Zulu/jdk/zulu8.44.0.11-ca-jdk8.0.242-macosx_x64"
```

### AdoptOpenJDK

```
export JDK_LOCATION_ROOT="/Users/Shared/Projects/d/system-installed/macosx/jdk"
export JAVA_HOME="$JDK_LOCATION_ROOT/AdoptOpenJDK/jdk8u242-b08/Contents/Home"
```