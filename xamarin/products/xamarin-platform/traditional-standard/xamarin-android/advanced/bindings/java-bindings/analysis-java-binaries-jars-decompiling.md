# Analysis Java Binaries (jars) - Decompiling

analysis-java-binaries-jars-decompiling.md

https://gist.github.com/JonDouglas/dda6d8ace7d071b0e8cb

To be added

## Tools


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



