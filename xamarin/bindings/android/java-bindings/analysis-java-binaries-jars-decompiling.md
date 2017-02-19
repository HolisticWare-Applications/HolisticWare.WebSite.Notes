# Analysis Java Binaries (jars) - Decompiling

analysis-java-binaries-jars-decompiling.md

https://gist.github.com/JonDouglas/dda6d8ace7d071b0e8cb

To be added

## Analyzing jar[s]

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
