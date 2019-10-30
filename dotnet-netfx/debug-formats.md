# Debug Formats

debug-formats.md

*   debug Formats

    *   MDB mono debug format 

    *   PDB 

    *   PPDB portable PDB

*   tools

    *   pdb2mdb


## Links / References

*   https://www.mono-project.com/archived/guidedebugger/

*   https://github.com/dotnet/core/blob/master/Documentation/diagnostics/portable_pdb.md

    *   Under debugging symbols has good docs FYI.

```
set DebugType=portable in the migration targets
```


*   in the obj/android/assets directory could contain BOTH

    *   pdb  

        *   classic PDB

            *   windows specific

            *   build with .NET framework or msbuild

        *   portable PDB

            *   unified

            *   xplat

            *   Mono 5.0+ish generates portable pdb files
    
    *   mdb 

        *   classic MDB

            *   mono specific



*   pdb2mdb

    *   looking at the code - it seems portable pdb is not supported