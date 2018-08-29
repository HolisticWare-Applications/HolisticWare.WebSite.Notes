# Java Decompilers

java-decompilers.md

http://blog.macuyiko.com/post/2015/a-quick-look-at-java-decompilers.html

https://javapapers.com/core-java/java-decompiler/

##   javap

```
export JAR_ARTIFACT=../../../../externals/android/grpc-stub-1.14.0.jar
javap \
    -classpath $JAR_ARTIFACT \
        $(jar -tf $JAR_ARTIFACT | grep "class$" | sed s/\.class$//) \
        >> $JAR_ARTIFACT.class.java.txt
```


##   jad

    https://www.softpedia.com/get/Programming/Debuggers-Decompilers-Dissasemblers/JAD.shtml

##   procyon

*    used by Luyten (Luyten is frontend of procyon)

*    https://bitbucket.org/mstrobel/procyon

*    https://bitbucket.org/mstrobel/procyon/wiki/Java%20Decompiler

*    https://manpages.debian.org/stretch/procyon-decompiler/procyon.1.en.html

```
export JAR_ARTIFACT=../../../../externals/android/grpc-stub-1.14.0.jar
java \
    -jar ./procyon-decompiler-0.5.30.jar \
    -jar $JAR_ARTIFACT/grpc-stub-1.14.0.jar \
    dump/
```
##   CFR 

*    http://www.benf.org/other/cfr/

*   https://bitbucket.org/mstrobel/procyon/wiki/Java%20Decompiler

*   https://github.com/Konloch/bytecode-viewer

```
export JAR_ARTIFACT=../../../../externals/android/grpc-stub-1.14.0.jar
java \
    -jar ./cfr_0_132.jar \
    -jar $JAR_ARTIFACT
```

## FernFlower

*   https://github.com/JetBrains/intellij-community/tree/master/plugins/java-decompiler/engine

*   https://jar-download.com/artifact-search/decompiler-fernflower

*   https://mvnrepository.com/artifact/org.jboss.windup.decompiler.fernflower/fernflower

```
org.jetbrains.java.decompiler.main.decompiler.ConsoleDecompiler manually

java -cp java-decompiler.jar org.jetbrains.java.decompiler.main.decompiler.ConsoleDecompiler myclassfile.class .
```


## Bytecode Viewer 

*   https://github.com/Konloch/bytecode-viewer/releases

##  jd

*   http://jd.benow.ca/

##  cavaj 

*   https://cavaj-java-decompiler.en.softonic.com/?ex=CAT-750.2

##   luyten

*   UI

```
java \
    -jar /Applications/Luyten.app/Contents/Resources/Java/luyten-0.5.3.jar \
    ~/Downloads/classes.jar    
```

```
```
