# Analysis Java Binaries (jars) - Decompiling

analysis-java-binaries-jars-decompiling.md

https://gist.github.com/JonDouglas/dda6d8ace7d071b0e8cb

To be added

## Tools

### MSBuild Tools

```
export CLASS_SEARCHED=
```

```
find ./generated/ -type f -name *.classes -exec grep -Hni "$CLASS_SEARCHED" {} \;
```

### CLI tools

#### `jar` and `javap`

`jar` and `javap` for commandline jar[s] analysis:

```
    find ./externals -name "*.jar" \
	    -exec $SHELL \
        -c \
        ' 
            echo "$0"
            JARNAME="$0"
            javap \
                -classpath $JARNAME \
                $(jar -tf $JARNAME | grep "class$" | sed s/\.class$//) \
                >> $JARNAME.class.javap.txt
            cat $JARNAME.class.javap.txt
        ' {} \;
```

#### procyon

```
    find ./externals -name "*.jar" \
	    -exec $SHELL \
        -c \
        ' 
            echo "$0"
            JARNAME="$0"
            java \
                -jar $HOME/bin/procyon-decompiler-0.5.30.jar \
                -jar $JARNAME \
                >> $JARNAME.class.procyon.txt
            cat $JARNAME.class.procyon.txt
        ' {} \;
```

#### cfr

```
    find ./externals -name "*.jar" \
	    -exec $SHELL \
        -c \
        ' 
            echo "$0"
            JARNAME="$0"
            java \
                -jar $HOME/bin/cfr_0_132.jar \
                -jar $JARNAME \
                >> $JARNAME.class.cfr.txt
            cat $JARNAME.class.cfr.txt
        ' {} \;
```

#### Soot

https://github.com/Sable/soot

https://soot-build.cs.uni-paderborn.de/public/origin/develop/soot/soot-develop/build/

https://www.sable.mcgill.ca/soot/soot_download.html

```
java \
    -jar ~/bin/sootclasses-trunk-jar-with-dependencies.jar \
    -help
```

```
General Options:
 -coffi                        Use the good old Coffi front end for parsing 
                               Java bytecode (instead of using ASM). 
 -jasmin-backend               Use the Jasmin back end for generating Java 
                               bytecode (instead of using ASM). 
 -h, -help                     Display help and exit 
 -pl, -phase-list              Print list of available phases 
 -ph ARG -phase-help ARG       Print help for specified ARG 
 -version                      Display version information and exit 
 -v, -verbose                  Verbose mode 
 -interactive-mode             Run in interactive mode 
 -unfriendly-mode              Allow Soot to run with no command-line options 
 -app                          Run in application mode 
 -w, -whole-program            Run in whole-program mode 
 -ws, -whole-shimple           Run in whole-shimple mode 
 -fly, -on-the-fly             Run in on-the-fly mode 
 -validate                     Run internal validation on bodies 
 -debug                        Print various Soot debugging info 
 -debug-resolver               Print debugging info from SootResolver 
 -ignore-resolving-levels      Ignore mismatching resolving levels 

Input Options:
 -cp ARG -soot-class-path ARG -soot-classpath ARG
                               Use ARG as the classpath for finding classes. 
 -pp, -prepend-classpath       Prepend the given soot classpath to the default 
                               classpath. 
 -ice, -ignore-classpath-errors
                               Ignores invalid entries on the Soot classpath. 
 -process-multiple-dex         Process all DEX files found in APK. 
 -search-dex-in-archives       Also includes Jar and Zip files when searching 
                               for DEX files under the provided classpath. 
 -process-path ARG -process-dir ARG
                               Process all classes found in ARG 
 -oaat                         From the process-dir, processes one class at a 
                               time. 
 -android-jars ARG             Use ARG as the path for finding the android.jar 
                               file 
 -force-android-jar ARG        Force Soot to use ARG as the path for the 
                               android.jar file. 
 -ast-metrics                  Compute AST Metrics if performing java to 
                               jimple 
 -src-prec ARG                 Sets source precedence to ARG files 
    c class (default)            Favour class files as Soot source 
    only-class                   Use only class files as Soot source 
    J jimple                     Favour Jimple files as Soot source 
    java                         Favour Java files as Soot source 
    apk                          Favour APK files as Soot source 
    apk-class-jimple apk-c-j     Favour APK files as Soot source, disregard 
                                 Java files 
 -full-resolver                Force transitive resolving of referenced 
                               classes 
 -allow-phantom-refs           Allow unresolved classes; may cause errors 
 -allow-phantom-elms           Allow phantom methods and fields in non-phantom 
                               classes 
 -no-bodies-for-excluded       Do not load bodies for excluded classes 
 -j2me                         Use J2ME mode; changes assignment of types 
 -main-class ARG               Sets the main class for whole-program analysis. 
 -polyglot                     Use Java 1.4 Polyglot frontend instead of 
                               JastAdd 
 -permissive-resolving         Use alternative sources when classes cannot be 
                               found using the normal resolving strategy 
 -drop-bodies-after-load       Drop the method source after it has served its 
                               purpose of loading the method body 


Output Options:
 -d ARG -output-dir ARG        Store output files in ARG 
 -f ARG -output-format ARG     Set output format for Soot 
    J jimple                     Produce .jimple Files 
    j jimp                       Produce .jimp (abbreviated Jimple) files 
    S shimple                    Produce .shimple files 
    s shimp                      Produce .shimp (abbreviated Shimple) files 
    B baf                        Produce .baf files 
    b                            Produce .b (abbreviated Baf) files 
    G grimple                    Produce .grimple files 
    g grimp                      Produce .grimp (abbreviated Grimp) files 
    X xml                        Produce .xml Files 
    dex                          Produce Dalvik Virtual Machine files 
    force-dex                    Produce Dalvik DEX files 
    n none                       Produce no output 
    jasmin                       Produce .jasmin files 
    c class (default)            Produce .class Files 
    d dava                       Produce dava-decompiled .java files 
    t template                   Produce .java files with Jimple templates. 
    a asm                        Produce .asm files as textual bytecode 
                                 representation generated with the ASM back 
                                 end. 
 -java-version ARG             Force Java version of bytecode generated by 
                               Soot. 
    default                      Let Soot determine Java version of generated 
                                 bytecode. 
    1.1 1                        Force Java 1.1 as output version. 
    1.2 2                        Force Java 1.2 as output version. 
    1.3 3                        Force Java 1.3 as output version. 
    1.4 4                        Force Java 1.4 as output version. 
    1.5 5                        Force Java 1.5 as output version. 
    1.6 6                        Force Java 1.6 as output version. 
    1.7 7                        Force Java 1.7 as output version. 
    1.8 8                        Force Java 1.8 as output version. 
 -outjar, -output-jar          Make output dir a Jar file instead of dir 
 -hierarchy-dirs               Generate class hierarchy directories for 
                               Jimple/Shimple 
 -xml-attributes               Save tags to XML attributes for Eclipse 
 -print-tags, -print-tags-in-output
                               Print tags in output files after stmt 
 -no-output-source-file-attribute
                               Don't output Source File Attribute when 
                               producing class files 
 -no-output-inner-classes-attribute
                               Don't output inner classes attribute in class 
                               files 
 -dump-body ARG                Dump the internal representation of each method 
                               before and after phase ARG 
 -dump-cfg ARG                 Dump the internal representation of each CFG 
                               constructed during phase ARG 
 -show-exception-dests         Include exception destination edges as well as 
                               CFG edges in dumped CFGs 
 -gzip                         GZip IR output files 
 -force-overwrite              Force Overwrite Output Files 

Processing Options:
 -plugin ARG                   Load all plugins found in ARG 
 -wrong-staticness ARG         Ignores or fixes errors due to wrong staticness 
    fail                         Raise an error when wrong staticness is 
                                 detected 
    ignore                       Ignore errors caused by wrong staticness 
    fix                          Transparently fix staticness errors 
    fixstrict (default)          Transparently fix staticness errors, but do 
                                 not ignore remaining errors 
 -field-type-mismatches ARG    Specifies how errors shall be handled when 
                               resolving field references with mismatching 
                               types 
    fail                         Raise an error when a field type mismatch is 
                                 detected 
    ignore                       Ignore field type mismatches 
    null (default)               Return null in case of type mismatch 
 -p ARG -phase-option ARG      Set PHASE 's OPT option to VALUE 
 -O, -optimize                 Perform intraprocedural optimizations 
 -W, -whole-optimize           Perform whole program optimizations 
 -via-grimp                    Convert to bytecode via Grimp instead of via 
                               Baf 
 -via-shimple                  Enable Shimple SSA representation 
 -throw-analysis ARG           
    pedantic                     Pedantically conservative throw analysis 
    unit (default)               Unit Throw Analysis 
    dalvik                       Dalvik Throw Analysis 
 -check-init-ta ARG -check-init-throw-analysis ARG
                               
    auto (default)               Automatically select a throw analysis 
    pedantic                     Pedantically conservative throw analysis 
    unit                         Unit Throw Analysis 
    dalvik                       Dalvik Throw Analysis 
 -omit-excepting-unit-edges    Omit CFG edges to handlers from excepting units 
                               which lack side effects 
 -trim-cfgs                    Trim unrealizable exceptional edges from CFGs 
 -ire, -ignore-resolution-errors
                               Does not throw an exception when a program 
                               references an undeclared field or method. 
Application Mode Options:
 -i ARG -include ARG           Include classes in ARG as application classes 
 -x ARG -exclude ARG           Exclude classes in ARG from application classes 
 -include-all                  Set default excluded packages to empty list 
 -dynamic-class ARG            Note that ARG may be loaded dynamically 
 -dynamic-dir ARG              Mark all classes in ARG as potentially dynamic 
 -dynamic-package ARG          Marks classes in ARG as potentially dynamic 

Input Attribute Options:
 -keep-line-number             Keep line number tables 
 -keep-bytecode-offset, -keep-offset
                               Attach bytecode offset to IR 

Output Attribute Options:
 -write-local-annotations      Write out debug annotations on local names 

Annotation Options:
 -annot-purity                 Emit purity attributes 
 -annot-nullpointer            Emit null pointer attributes 
 -annot-arraybounds            Emit array bounds check attributes 
 -annot-side-effect            Emit side-effect attributes 
 -annot-fieldrw                Emit field read/write attributes 

Miscellaneous Options:
 -time                         Report time required for transformations 
 -subtract-gc                  Subtract gc from time 
 -no-writeout-body-releasing   Disables the release of method bodies after 
                               writeout. This flag is used internally. 





java \
    -jar ~/bin/sootclasses-trunk-jar-with-dependencies.jar \
    -w \
    -pp \
    -allow-phantom-refs \
    -f d \
    -process-dir ./dir_with_class_files/ \
    -cp ./dir_with_libs/ \
    -d ./decompiled/ \
```


#### Searching/grepping

```
export CLASS_SEARCHED=
```

```
find ./externals/ -type f -name *.class.javap.txt -exec grep -Hni "$CLASS_SEARCHED" {} \;
```

```
find ./externals/ -type f -name *.class.cfr.txt -exec grep -Hni "$CLASS_SEARCHED" {} \;
```

```
find ./externals/ -type f -name *.class.procyon.txt -exec grep -Hni "$CLASS_SEARCHED" {} \;
```


### GUI tools

*	JD-GUI

	*	http://jd.benow.ca/
	
	*	https://github.com/java-decompiler/jd-gui/releases/download/v1.4.0/jd-gui-osx-1.4.0.tar
	
*	luyten

	*	https://github.com/deathmarine/Luyten
	
	*	https://github.com/deathmarine/Luyten/releases
	
	*	https://github.com/deathmarine/Luyten/releases/download/v0.5.3/luyten-OSX-0.5.3.zip
	
    *   procyon frontend/wrapper UI

*	JADX and JADX-GUI

	*	https://github.com/skylot/jadx

	*	https://github.com/skylot/jadx/releases/download/v0.7.1/jadx-0.7.1.zip



