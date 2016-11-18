# Analysis Java Binaries (jars) - Decompiling

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

ConvertResourceCases task has f


