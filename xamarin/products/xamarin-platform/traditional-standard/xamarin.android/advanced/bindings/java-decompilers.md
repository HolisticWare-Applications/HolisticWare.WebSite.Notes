# Java Decompilers

java-decompilers.md

http://blog.macuyiko.com/post/2015/a-quick-look-at-java-decompilers.html

https://javapapers.com/core-java/java-decompiler/

https://www.programmersought.com/article/5714866120/

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


## Smali

https://github.com/JesusFreke/smali

## Binaries

https://bitbucket.org/JesusFreke/smali/downloads/smali
https://bitbucket.org/JesusFreke/smali/downloads/baksmali
https://bitbucket.org/JesusFreke/smali/downloads/baksmali-2.2.5.jar
https://bitbucket.org/JesusFreke/smali/downloads/smali-2.2.5.jar

```
java -jar ./lib/smali-2.2.5.jar 
```

output:

```
 java -jar ./lib/smali-2.2.5.jar 
usage: smali [-v] [-h] [<command [<args>]]

Options:
  -h,-?,--help - Show usage information
  -v,--version - Print the version of baksmali and then exit

Commands:
  assemble(ass,as,a) - Assembles smali files into a dex file.
  help(h) - Shows usage information

See smali help <command> for more information about a specific command
```

```
java -jar ./lib/baksmali-2.2.5.jar 
```

output:

```
$ java -jar ./lib/baksmali-2.2.5.jar 
usage: baksmali [--version] [--help] [<command [<args>]]

Options:
  --help,-h,-? - Show usage information
  --version,-v - Print the version of baksmali and then exit

Commands:
  deodex(de,x) - Deodexes an odex/oat file
  disassemble(dis,d) - Disassembles a dex file.
  dump(du) - Prints an annotated hex dump for the given dex file
  help(h) - Shows usage information
  list(l) - Lists various objects in a dex file.

See baksmali help <command> for more information about a specific command
```


## Android Studio Plugin


https://bitbucket.org/JesusFreke/smali/downloads/smalidea-0.03.zip


https://ibotpeaches.github.io/Apktool/documentation/

https://developer.android.com/studio/debug/apk-debugger


http://androidcracking.blogspot.com/search/label/smali

http://pallergabor.uw.hu/androidblog/dalvik_opcodes.html

http://www.slideshare.net/paller/understanding-the-dalvik-bytecode-with-the-dedexer-tool

http://jasmin.sourceforge.net/guide.html

https://source.android.com/devices/tech/dalvik/dalvik-bytecode.html

http://code.google.com/p/smali/wiki/Registers

http://code.google.com/p/smali/wiki/TypesMeth