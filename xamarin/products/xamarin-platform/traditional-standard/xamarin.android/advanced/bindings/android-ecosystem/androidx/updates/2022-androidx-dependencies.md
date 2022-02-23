# 202202 AndroidX Dependencies

2022-androidx-dependencies.md

*   `com.google.auto:auto-common`
    
    *   https://mvnrepository.com/artifact/com.google.auto/auto-common

    *   https://mvnrepository.com/artifact/com.google.auto/auto-common/1.0

        *   https://repo1.maven.org/maven2/com/google/auto/auto-common/1.0/auto-common-1.0.pom

        ```xml
        <properties>
            <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
            <java.version>1.8</java.version>
            <guava.version>30.1.1-jre</guava.version>
            <truth.version>1.1.2</truth.version>
        </properties>
        ```

2 problems:

    *   dependencies on 2 (two) versions of `guava`

        *   `30.1.1-android`
        
        *   `30.1.1-jre`

    *   semantic versioning problem

        *   sufix indicates preview