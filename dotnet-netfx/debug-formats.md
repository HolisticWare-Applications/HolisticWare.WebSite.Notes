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


Matthew Leibowitz 🇿🇦 [00:44]
looking at the obj/android/assets directory, i see a pdb AND mdb there

is it fine for me just to change the pdb? what is the mdb for?

or, do I have to run the pdb2mdb after changing the pdb?


Jon Douglas [00:47]
classic pdb is windows specific

classic mdb is mono specific

portable pdb is cross platform (unified)

Mono 5.0+ish generates portable pdb files.

So it depends. If you're building with say .NET framework or msbuild, you'd be using classic pdb.


Matthew Leibowitz 🇿🇦 [00:48]
i am modifying the dll and pdb in the obj/android/assets directory, and i see there is a mdb there

what does that do?

basically, why is there both types?


Matthew Leibowitz 🇿🇦 [01:11]
what is the pdb for actually? I updated the dll and the pdb, but debugging is still not working

i am looking at the code for pdb2mdb and it seems portable pdb is not supported?