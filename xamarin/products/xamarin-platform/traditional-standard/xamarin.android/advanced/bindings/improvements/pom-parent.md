# POM parent

pom-parent.md

*   https://repo1.maven.org/maven2/com/squareup/okhttp/okhttp/2.7.5/okhttp-2.7.5.pom

```xml
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
    <modelVersion>4.0.0</modelVersion>
    <parent>
        <groupId>com.squareup.okhttp</groupId>
        <artifactId>parent</artifactId>
        <version>2.7.5</version>
    </parent>
    <artifactId>okhttp</artifactId>
    <name>OkHttp</name>
    <dependencies>
        <dependency>
            <groupId>com.squareup.okio</groupId>
            <artifactId>okio</artifactId>
        </dependency>
        <dependency>
            <groupId>com.google.android</groupId>
            <artifactId>android</artifactId>
            <scope>provided</scope>
        </dependency>
    </dependencies>
    <build>
        <plugins>
            <plugin>
                <groupId>org.codehaus.mojo</groupId>
                <artifactId>templating-maven-plugin</artifactId>
                <version>1.0-alpha-3</version>
                <executions>
                    <execution>
                        <goals>
                            <goal>filter-sources</goal>
                        </goals>
                    </execution>
                </executions>
            </plugin>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-javadoc-plugin</artifactId>
                <configuration>
                    <excludePackageNames>com.squareup.okhttp.internal:com.squareup.okhttp.internal.*</excludePackageNames>
                    <links>
                        <link>http://square.github.io/okio/</link>
                    </links>
                </configuration>
            </plugin>
        </plugins>
    </build>
</project>
```

https://repo1.maven.org/maven2/com/squareup/okhttp/parent/2.7.5/parent-2.7.5.pom