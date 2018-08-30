# Analysis Java Binaries (jars) - Decompiling

analysis-java-binaries-jars-decompiling.md

https://gist.github.com/JonDouglas/dda6d8ace7d071b0e8cb

To be added

## Tools

`jar` and `javap` for commandline jar[s] analysis:

    find . -name "*.jar" \
	    -exec $SHELL \
        -c \
        ' 
            echo "$0"
            JARNAME="$0"
            javap \
                -classpath $JARNAME \
                $(jar -tf $JARNAME | grep "class$" | sed s/\.class$//) \
                >> $JARNAME.class.java.txt
            cat $JARNAME.class.java.txt
        ' {} \;


*	JD-GUI

	*	http://jd.benow.ca/
	
	*	https://github.com/java-decompiler/jd-gui/releases/download/v1.4.0/jd-gui-osx-1.4.0.tar
	
*	luyten

	*	https://github.com/deathmarine/Luyten
	
	*	https://github.com/deathmarine/Luyten/releases
	
	*	https://github.com/deathmarine/Luyten/releases/download/v0.5.3/luyten-OSX-0.5.3.zip
	
*	JADX and JADX-GUI

	*	https://github.com/skylot/jadx

	*	https://github.com/skylot/jadx/releases/download/v0.7.1/jadx-0.7.1.zip
