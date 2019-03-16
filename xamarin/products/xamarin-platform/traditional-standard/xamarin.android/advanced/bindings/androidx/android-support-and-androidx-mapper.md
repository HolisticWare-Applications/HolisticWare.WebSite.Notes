# Android.Support and AndroidX Mapper

android-support-and-androidx_mapper.md

## Steps

1. Google's mapping analysis

    During loading of CSVs for step #2 (mapper).
    
    Google's mapping has types that were not moved to `androidx`, then some errors and
    changes.
    So this step is performed every time.
    It would be irrational to assume that mappings based on Google's CSV are ultimate truth,
    but this is start point which can provide some info for further steps (mostly optimizations)
      
2.  Mapper - managed assembly analysis 

    1.  Cecil traversing + NEW Google mapping search 

    2.  Data format

        1.  Columns G + M + E

            1.  G - Google

            2.  M - managed = 1 (minimal)

        1.  minimal

            1.  G = 2

            2.  M = 1

            3.  E = ? 

        1.  ideal

            1.  G = 2

            2.  M = 3 (fully qualified typename, typename, namespace)

            3.  E = 3 (packagename, assemblyname,....) 

                still investigating what to store (typenames only, etc)

                depends on analysis

    2.  Cecil traversing Details

        this is actually horizontal partitioning with shards

        sample output: [./data/analysis.md](./data/analysis.md)
    
        *   TAR - types Android registered

            *   TARIG - types Android registered in Google mapping

                NEW

            *   TARNIG - types Android registered NOT in Google mapping

                NEW

        *   TNAR - types nested Android registered

            *   TNARIG

            *   TNARNIG

        *   TAUR - types Android unregistered 
        
            this makes questionable sense, but after testing Cecilfier on random dlls and 
            witnessing what can be in the dlls, this is tracked too.
            
        *   TR 

This is Mapper so not performance critical, but anyway I'd like to be fast and analyze faster.

2. I do Join on AS and AX from #1 