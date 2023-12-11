# Serialization

serialization.md

*   serialization and deserialization

    *   marshalling and unmarshalling


*   https://docs.microsoft.com/en-us/dotnet/standard/serialization/

*   https://learn.microsoft.com/en-us/dotnet/standard/serialization/

    *   binary
    
        *   https://docs.microsoft.com/en-us/dotnet/standard/serialization/binary-serialization

    *   XML and SOAP

        *   https://docs.microsoft.com/en-us/dotnet/standard/serialization/xml-and-soap-serialization

    *   JSON

        *   https://docs.microsoft.com/en-us/dotnet/standard/serialization/system-text-json-overview

        *   System.Text.Json

            *   nuget

            *   .NET Standard 2.0 and later versions

        *   https://docs.microsoft.com/en-us/dotnet/standard/serialization/system-text-json-migrate-from-newtonsoft-how-to?pivots=dotnet-5-0

## Binary

*   `System.Runtime.Serialization.Formatters.Binary.BinaryFormatter`

    *   https://docs.microsoft.com/en-us/dotnet/api/system.runtime.serialization.formatters.binary.binaryformatter

    *   https://learn.microsoft.com/en-us/dotnet/core/compatibility/serialization/5.0/binaryformatter-serialization-obsolete

    *   https://docs.microsoft.com/en-us/dotnet/api/system.runtime.serialization.formatters.binary.binaryformatter?view=net-5.0https://learn.microsoft.com/en-us/dotnet/standard/serialization/binaryformatter-security-guide

*   Avro (Apache)

    [./serialization/apache-avro.md](./serialization/apache-avro.md)
    
*   MemoryPack

    *   https://github.com/Cysharp/MemoryPack

    *   Zero encoding extreme performance binary serializer for C# and Unity.

    *   System.Text.Json

    *   protobuf-net
    
    *   MessagePack for C#

    *   Orleans.Serialization

    MemoryPack is my 4th serializer, previously I've created well known serializers, 
    
        ZeroFormatter, 
        Utf8Json, 
        MessagePack for C#. 
        
    The reason for MemoryPack's speed is due to its C#-specific, C#-optimized binary format and a well tuned implementation based on my past experience. It is also a completely new design utilizing .NET 7 and C# 11 and the Incremental Source Generator (.NET Standard 2.1 (.NET 5, 6) and there is also Unity support).

*   Bond (Microsoft)

    [./serialization/microsoft-bond.md](./serialization/microsoft-bond.md) 
    
*   MsgPack
    
    [./serialization/message-pack.md](./serialization/message-pack.md)

*   ProtoBuffers (Google)

    [./serialization/google-protobuf.md](./serialization/google-protobuf.md)

*   BSON

    [./serialization/bson.md](./serialization/bson.md)

*   CapNProto

    [./serialization/capnproto.md](./serialization/capnproto.md)

*   FlatBuffers

    [./serialization/flatbuffers.md](./serialization/flatbuffers.md)

*   Thrift (Apache)

    [./serialization/apache-thrift.md](./serialization/apache-thrift.md)    

*   Simple Binary Encoding SBE

    [./serialization/simple-binary-encoding-sbe.md](./serialization/simple-binary-encoding-sbe.md)

*   Jil

    [./serialization/jil.md](./serialization/jil.md)

*   Sigil

    [./serialization/sigil.md](./serialization/sigil.md)

*   MessageShark

    [./serialization/message-shark.md](./serialization/message-shark.md)
    
*   Wire

    *   https://github.com/generatives/WirePCL
    

## JSON

*   Newtonsoft.Json

*   System.Text.Json

*   SpanJson

    *   https://github.com/Tornhoof/SpanJson

    *   https://github.com/Tornhoof/SpanJson/wiki/Performance

    *   https://www.youtube.com/watch?v=XMoNYQPi2k8&ab_channel=CodeWithStu

    *   https://github.com/Im5tu/SerializationBenchmarks

### Performance

    *   https://michaelscodingspot.com/the-battle-of-c-to-json-serializers-in-net-core-3/

    http://aumcode.github.io/serbench/
    https://github.com/aumcode/serbench
    http://julian.farm/geekswithblogs/?url=/LeonidGaneline/archive/2015/05/06/serializers-in-.net.-v.2.aspx
    
## Diverse

*   ZeroFormatter

    *   https://github.com/neuecc/ZeroFormatter

### Buddy Classes


### Motivation
 
*   https://www.hanselman.com/blog/ProperBenchmarkingToDiagnoseAndSolveANETSerializationBottleneck.aspx

*   https://msdn.microsoft.com/en-us/library/ff650685.aspx?f=255&MSPPError=-2147217396

*   https://aloiskraus.wordpress.com/2017/04/23/the-definitive-serialization-performance-guide/

*   http://theburningmonk.com/benchmarks/

*   https://auth0.com/blog/beating-json-performance-with-protobuf/

*   https://auth0.com/blog/beating-json-performance-with-protobuf/

*   https://maxondev.com/serialization-performance-comparison-c-net-formats-frameworks-xmldatacontractserializer-xmlserializer-binaryformatter-json-newtonsoft-servicestack-text/

*   http://theburningmonk.com/2011/12/performance-test-binary-serializers-part-ii/

*   http://theburningmonk.com/2012/02/performance-test-binary-serializers-part-iii/

*   http://theburningmonk.com/2012/08/performance-test-json-serializers-part-iii/


### Benchmarks Links

*   [https://github.com/Oipo/SerializerComparison/blob/7e8085e5bf290ff023f77dcf5fe86d42c5cbda80/SerializerComparison/packages.config](https://github.com/Oipo/SerializerComparison/blob/7e8085e5bf290ff023f77dcf5fe86d42c5cbda80/SerializerComparison/packages.config)




## Protobuf

## Thrift

## Avro

## Bond

*   https://github.com/Microsoft/bond/

*   nuget

    *   Bond.Runtime.CSharp

        *   dependencies

            *   Bond.Core.CSharp

    *   Bond.Core.CSharp

        *   netstandard1.0

        *   netstandard1.3

        *   netstandard1.6

### Tutotrials

*   https://microsoft.github.io/bond/manual/bond_cs.html

*   https://blogs.msdn.microsoft.com/dotnet/2016/10/18/the-week-in-net-bond-the-gallery/

*   https://www.infoq.com/news/2015/02/MicrosoftBond

*   https://www.diycode.cc/projects/Microsoft/bond

*   https://www.toptal.com/microsoft/meet-bond-microsoft-bond

*   https://stackoverflow.com/questions/39571388/using-microsoft-bond-in-a-c-sharp-project

http://putridparrot.com/blog/__trashed/

https://theburningmonk.com/2016/01/ms-bond-and-chiron-benchmarked/

https://jorgecandeias.com/2018/03/27/version-tolerant-binary-serialization-with-microsoft-bond-in-c/


## MessagePack


## MessageShark


## BinaryWriter


## FSPickler

## BinnaryFormatter

## Filbert

## FlourineFx


JavascriptSerializer

DataContractJsonSerializer

System.Json

Json.NET.Json

Json.NET.BSON

SimpleJson

BSON

fastJson

NetJson

JIL

Chiron

MongoDBDriver.BSON

ServiceStack.Text

FsPickler.Json


## EDN extensible data notation 

*   https://github.com/edn-format/edn

*   https://github.com/edn-format/edn-dot-net

