# Databases

databases.md

*   https://github.com/hez2010/TypedSql

    *   experimental SQL-like query engine that leans on the C# type system

    *   https://github.com/mbdavid/LiteDB

*   https://github.com/Cysharp/ZLinq

    *   Zero allocation LINQ with LINQ to Span, LINQ to SIMD, and LINQ to Tree 

*   MasterMemory

    *   https://github.com/Cysharp/MasterMemory

        *   In-Memory Document Database

        *   https://github.com/search?q=repo%3ACysharp%2FMasterMemory%20MemoryStream&type=code

*   Abraxas

Repos
Github is here: https://github.com/alt160/abraxasdb

Nuget is here: https://www.nuget.org/packages/AbraxasDB

Showcase: https://github.com/alt160/AbraxasDB.Showcase

Meridian Trading: https://github.com/alt160/AbraxasDB.MeridianTrading

I've also setup some .net fiddlers for it as well if you want to test it without downloading

Records and persistence — Save ordinary C# objects, read them by ID, and reopen the database.

Queries and indexes — Filter records, add an index, and read selected values.

Backup and restore — Create a snapshot and restore it into a separate database.

    Abraxas' use of INHETO does not.

    So, from that Abraxas operates as both a KVS and a semantic lookup engine. You can have an instance of Abraxas without any indexes and can do O(1) retrieval of your objects by their recordIDs.
    But, you can still do unindexed semantic discovery of objects as well. You're not locked in to only the KVS style of access at any point.

        Abraxas can have record sizes of nearly 2gb per record. And, suppose you had a video object in your domain model that had several properties and one of them was the bytes of the video stream. Abraxas could index and access all the small parts of that binary without loading the entire blob into ram. BSON doesn't work like that.

*   ZoneTree

    *   like a KVS (key-value store)

*   LiteDB

    *   https://github.com/litedb-org/LiteDB

        *   NoSQL Document Store in a single data file

        *   https://github.com/search?q=repo%3Alitedb-org%2FLiteDB%20MemoryStream&type=code

    *   LiteDB:

        *   uses BSON objects which have several limitations

*   RocksDB

    *   https://github.com/facebook/rocksdb

        *   RocksDB: A Persistent Key-Value Store for Flash and RAM Storage

        *   https://github.com/warrenfalk/rocksdb-sharp

        *   https://github.com/curiosity-ai/rocksdb-sharp

    
https://www.reddit.com/r/csharp/comments/1xoqbaq/abraxasdb_a_net_native_local_object_storage/

https://github.com/alt160/inheto
