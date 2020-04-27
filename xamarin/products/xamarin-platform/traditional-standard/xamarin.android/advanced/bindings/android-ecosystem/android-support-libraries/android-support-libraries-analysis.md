# Android Support Libraries Analysis

android-support-libraries-analysis.md


## Decompiling *.jar files

Decompile `*.jar` files with `jar` and `javap` 

```
    find ./externals/ -name "*.jar" \
        -exec $SHELL \
        -c \
        ' 
            echo "$0"
            JARNAME="$0"
            javap \
                -classpath $JARNAME \
                $(jar -tf $JARNAME | grep "class$" | sed s/\.class$//) \
                >> $JARNAME.class.java.txt
            cat ./$JARNAME.class.java.txt
        ' {} \;
```

## Analysing diff information between versions

For following classes

```
export CLASSES=\
"
PlaceReport
"
```

Search decompiled java source:

```
    for C in $CLASSES;
    do
        echo =============================================================================
        echo "class : " $C 
        find ./externals/ -name "*.class.java.txt" -exec grep -H "$C" {} \;
    done;
```

Search generated C# source:

```
    for C in $CLASSES;
    do
        echo =============================================================================
        echo "class : " $C 
        find ./ -name "*.cs" -exec grep -H "$C" {} \;
    done;
```

Search generated AOSP api.xml source:

```
    for C in $CLASSES;
    do
        echo =============================================================================
        echo "class : " $C 
        find ./ -name "api.xml" -exec grep -H "$C" {} \;
    done;
```


export CLASSES=\
"
./externals/play-services-places/classes.jar
"

for CLASS in $CLASSES 
do
    echo $CLASS
    find . -name $CLASS \
        -exec $SHELL \
        -c \
        ' 
            echo "$0"
            JARNAME="$0"
            echo $JARNAME
            javap \
                -classpath $JARNAME \
                $(jar -tf $JARNAME | grep "class$" | sed s/\.class$//) \
                >> $JARNAME.class.java.txt
            cat $JARNAME.class.java.txt
        ' {} \;
done

find . -name *.class.java.txt

