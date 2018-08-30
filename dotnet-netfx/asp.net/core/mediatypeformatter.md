# MediaTypeFormatter

mediatypeformatter.md 

To create a media formatter, derive from one of these classes:

*   MediaTypeFormatter. 

    This class uses asynchronous read and write methods.

*   BufferedMediaTypeFormatter. 

    This class derives from MediaTypeFormatter but uses sychronous read/write methods.

Deriving from BufferedMediaTypeFormatter is simpler, because there is no asynchronous code, but it also 
means the calling thread can block during I/O.

https://docs.microsoft.com/en-us/aspnet/web-api/overview/formats-and-model-binding/media-formatters

https://github.com/topics/serialization

TODO:

1.  CSV

2.  Binary (not only)

    1.  Microsoft Bond

        https://microsoft.github.io/bond/manual/bond_cs.html

        https://microsoft.github.io/bond/why_bond.html

        https://github.com/Microsoft/bond

        https://www.toptal.com/microsoft/meet-bond-microsoft-bond

        https://github.com/sapek

        http://putridparrot.com/blog/__trashed/

        http://theburningmonk.com/2016/01/ms-bond-and-chiron-benchmarked/

    2.  Avro

        https://hadoopsdk.codeplex.com/wikipage?title=Avro%20Library

        https://github.com/apache/avro/tree/master/lang/csharp
        
        https://www.infoq.com/news/2014/05/MS-Avro

        https://www.tutorialspoint.com/avro/avro_serialization.htm

        https://github.com/confluentinc/confluent-kafka-dotnet/issues/67


    3.  Thrift

        http://www.alternatestack.com/uncategorized/apache-thrift-and-its-usage-in-c/

        http://www.gettingcirrius.com/2011/03/rabbitmq-with-thrift-serialization-part.html

        http://www.markhneedham.com/blog/2008/08/29/c-thrift-examples/

