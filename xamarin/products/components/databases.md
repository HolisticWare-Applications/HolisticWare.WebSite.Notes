# Databases

databases.md

## Local databases:

*   SQLite

    *   https://docs.microsoft.com/en-us...

*   Realm

    *   https://github.com/realm/realm-d...

    *   Akavache

        *   https://github.com/akavache/akav...

    *   CouchDB

        *   http://couchdb.apache.org/

    *   LiteDB

        *   http://www.litedb.org/


Then there are cloud databases (several Azure options, Firebase, …) and different ORMs 

*   Entity Framework Core

*   IridiumDB, etc

Ideal solutions for small apps with local storage required only.

1) SQLite (https://github.com/praeclarum/sqlite-net)
2) Settings Plugin (https://github.com/jamesmontemagno/SettingsPlugin)
3) Akavache (https://github.com/akavache/akavache)
4) Realm Database Only (https://github.com/realm/realm-dotnet)

Ideal solutions for medium apps with some server synchronising requirements (such as app data backup)
1) Realm with Sync (https://github.com/realm/realm-dotnet)
2) Azure SQlite Store (https://github.com/Azure/azure-mobile-apps-net-client)

Ideal solutions for enterprise apps where you need persistence and an endpoint for an API
Note: This is where you probably should role your own with a seperate database and endpoint to query it.

Databases:
1) MS SQL Server (https://www.microsoft.com/en-us/sql-server/sql-server-2016)
2) MySQL (https://www.mysql.com/)
3) Oracle 12c (http://www.oracle.com/us/corporate/features/database-12c/index.html?printOnly=1)
4) Mongo DB (https://www.mongodb.com/)
5) DB2 (https://www.ibm.com/analytics/us/en/db2/)

Endpoints:
1) Spring Data Rest (https://projects.spring.io/spring-data-rest/)
2) Django Rest Framework (http://www.django-rest-framework.org/)
3) ASP.Net Web Api (https://www.asp.net/web-api)

IMO, if you're going balls to the wall with a bespoke solution using any of the last technologies, if is probably worth documenting your REST API as well with something like Swagger.

RyanDixon

http://www.litedb.org/

http://iridiumdb.com/


http://couchdb.apache.org/

http://sqlitebrowser.org/

brew cask install db-browser-for-sqlite