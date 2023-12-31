# Serialization

readme.md

## Libs

*   https://github.com/HolisticWare/HolisticWare.Core.Serialization


Definition:

*   https://en.wikipedia.org/wiki/Serialization

*   https://en.wikipedia.org/wiki/Comparison_of_data-serialization_formats

*   https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/concepts/serialization/

*   https://stackoverflow.com/questions/633402/what-is-serialization#:~:text=Serialization%20is%20the%20process%20of%20converting%20an%20object%20into%20a,reverse%20process%20is%20called%20deserialization.

*   https://en.wikipedia.org/wiki/Marshalling_(computer_science)

*   https://github.com/morrisjdev/FileContextCore

Terms:

*   Serialization/Deserialization

    *   C#

*   Marshalling/Unmarshalling

    *   Julia

## References / Links

*   https://github.com/khalidabuhakmeh/conversions

    *   https://khalidabuhakmeh.com/convert-a-csharp-object-to-almost-any-format

## Formats

### JSON

*   `System.Text.Json`

    *   https://docs.microsoft.com/en-us/dotnet/api/system.text.json

*   `Newtonsoft.Json`

*   `fastJSON`

    *   https://github.com/mgholam/fastJSON

*   `NetJSON`

    *   https://github.com/rpgmaker/NetJSON/

*   `Utf8Json`

    *   https://github.com/neuecc/Utf8Json

*   `Jsonincs`

    *   https://github.com/trampster/Jsonics

*   `Jil`

    *   https://github.com/kevin-montrose/Jil

        ```
        Jil.DeserializationException
        "Expected character: '\\'"
        ```

        *   https://stackoverflow.com/questions/29536206/jil-net-json-deserialization-exception

        *   https://github.com/kevin-montrose/Jil/blob/master/Jil/Options.cs

*   `SpanJson`

    *   https://github.com/Tornhoof/SpanJson

        *   problem: `net6`, `net5`

        *   https://github.com/Tornhoof/SpanJson/issues?q=is%3Aissue+netstandard

        *   fork

            *   https://github.com/cuteant/SpanJson

            *   fork for nugets

                *   https://github.com/HolisticWare/HolisticWare.SpanJson
             
*   `litJSON`

   *   https://litjson.net/
   

#### Online Tools

*   JSON to C#

    *   https://json2csharp.com/

    *   https://app.quicktype.io/?l=csharp

    *   https://www.site24x7.com/tools/json-to-csharp.html

    *   https://wtools.io/convert-json-to-csharp-class

    *   https://jsonutils.com/

#### References / Links

*   https://docs.microsoft.com/en-us/dotnet/standard/serialization/system-text-json-how-to

*   https://michaelscodingspot.com/the-battle-of-c-to-json-serializers-in-net-core-3/

*   https://aloiskraus.wordpress.com/2019/09/29/net-serialization-benchmark-2019-roundup/

*   https://theburningmonk.com/2014/08/json-serializers-benchmarks-updated-2/

*   https://www.codeproject.com/Articles/159450/fastJSON-Smallest-Fastest-Polymorphic-JSON-Seriali

*   https://endjin.com/blog/2021/05/csharp-serialization-with-system-text-json-schema

*   JSON schema generators proposed so far:

    *   Online:

        *   https://www.liquid-technologies.com/online-json-to-schema-converter

        *   http://www.jsonschema.net (1 input)

        *   https://easy-json-schema.github.io (1 input)


### XML

```csharp
namespace Tests.CommonShared
{
    public class Something
    {
        public Something()
        {
        }

        public string Name
        {
            get;
            set;
        }

        public DateTime DateOfBirth
        {
            get;
            set;
        }
    }
}
```

```xml
<?xml version="1.0" encoding="UTF-8"?>
    <Something>
        <DateOfBirth>2021-10-06T18:07:06.901969+02:00</DateOfBirth>
        <Name>something</Name>
    </Something>
```

```xml
<?xml version="1.0" encoding="UTF-8"?>
    <root>
        <DateOfBirth>2021-10-06T18:07:06.901969+02:00</DateOfBirth>
        <Name>something</Name>
    </root>
```

```
System.InvalidOperationException : There is an error in XML document (2, 2).
---- System.InvalidOperationException : <root xmlns=''> was not expected.
```

```
System.InvalidOperationException : There is an error in XML document (2, 2).
xmlns='' was not expected.
```

```
[Serializable, XmlRoot("root")]
public partial class Something
{
}
```

```
XmlSerializer xs = new XmlSerializer
(typeof(User), new XmlRootAttribute("yourRootName"));
```
xsd

https://stackoverflow.com/questions/3680353/how-do-i-programmatically-generate-an-xml-schema-from-a-type/

http://mikehadlow.blogspot.com/2007/01/writing-your-own-xsdexe.html

XmlCodeExporter

https://docs.microsoft.com/en-us/dotnet/api/system.xml.serialization.xmlcodeexporter?redirectedfrom=MSDN&view=netframework-4.8

XmlSchemaInference

https://docs.microsoft.com/en-us/dotnet/api/system.xml.schema.xmlschemainference?view=net-5.0


### YAML

### TOML

*   https://github.com/toml-lang/toml

*   https://en.wikipedia.org/wiki/TOML

*   https://learnxinyminutes.com/docs/toml/

*   https://toml.io/en/

*   https://github.com/rossipedia/toml-net

*   https://github.com/xoofx/Tomlyn

*   https://www.genericgamedev.com/general/serialisation-comparing-xml-sdl-toml-json/

*   https://en.wikipedia.org/wiki/Recfiles

### SOAP

### OData

### BSON

## Code Generation

*   code generation

    *   C#

    *   other

        using intermediate C#

        *   Julia

        *   R

        *   Python

        *   Matlab/Octave

## C# POCO classes from formats


### JSON

JSON to JSON Schema

*   NJsonSchema

    *   https://github.com/RicoSuter/NJsonSchema

        *   Applications which use the library:

            *   VisualJsonEditor, a JSON schema based file editor for Windows.

            *   NSwag: The Swagger API toolchain for .NET

            *   SigSpec for SignalR Core: Specification and code generator for SignalR Core.

    *   https://gist.github.com/rushfrisby/c8f58f346548bf31e045

    *   https://stackoverflow.com/questions/21611674/how-to-auto-generate-a-c-sharp-class-file-from-a-json-string

    *   https://stackoverflow.com/questions/9229237/benefits-and-drawbacks-of-generated-c-sharp-classes-for-json-objects

    *   https://medium.com/@nuno.caneco/dont-write-your-web-api-client-code-6f1dd36263b5

    *   https://elanderson.net/2019/11/using-nswag-to-generate-c-client-classes-for-asp-net-core-3/


### XML

*   https://github.com/mganss/XmlSchemaClassGenerator

*   https://stackoverflow.com/questions/3680353/how-do-i-programmatically-generate-an-xml-schema-from-a-type

*   http://mikehadlow.blogspot.com/2007/01/writing-your-own-xsdexe.html

*   https://www.itprotoday.com/microsoft-visual-studio/generate-xml-schemas-programmatically-net


1.  invoke `xsd.exe` programmatically by referencing it, which is available with .NET SDK:

    *   http://msdn.microsoft.com/en-us/library/x6c1kb0s.aspx

2.  use built-in schema class in .NET

    *   XMLSchemaExporter

        *   http://msdn.microsoft.com/en-us/library/system.xml.serialization.xmlschemaexporter.aspx

    *   XML Schema Object Model

        *   http://msdn.microsoft.com/en-us/library/bs8hh90b(v=VS.100).aspx

    *   XML Schema Class

        *   http://msdn.microsoft.com/en-us/library/system.xml.schema.xmlschema.aspx

### YAML

*   https://stackoverflow.com/questions/25095893/seeking-guidance-reading-yaml-files-with-c-sharp

*   text formatters

    *   https://github.com/fiyazbinhasan/CoreFormatters


### protobuf

*   https://developers.google.com/protocol-buffers/docs/csharptutorial

*   https://developers.google.com/protocol-buffers/docs/reference/csharp-generated

*   https://docs.microsoft.com/en-us/aspnet/core/grpc/protobuf?view=aspnetcore-5.0

*   https://docs.microsoft.com/en-us/aspnet/core/grpc/basics?view=aspnetcore-5.0

*   https://github.com/protobuf-net/protobuf-net#1-first-decorate-your-classes

*   https://github.com/protobuf-net/protobuf-net/wiki/Attributes


### bond

*   http://microsoft.github.io/bond/manual/bond_cs.html#attributes

*   http://microsoft.github.io/bond/manual/bond_over_grpc.html

*   https://microsoft.github.io/bond/why_bond.html

*   https://stackoverflow.com/questions/39571388/using-microsoft-bond-in-a-c-sharp-project

*   https://github.com/microsoft/bond

*   https://github.com/jterry75/Bond-ASP.NET-Core-Formatters/tree/master/test/Bond.AspNetCore.Mvc.Formatters.Tests

### MessagePack

*   https://github.com/neuecc/MessagePack-CSharp

*   https://github.com/neuecc/MessagePack-CSharp#high-level-api-messagepackserializer

### ZeroFormatter

*   https://github.com/neuecc/ZeroFormatter/

### flatbuffers

*   https://github.com/jamescourtney/FlatSharp

*   https://google.github.io/flatbuffers/flatbuffers_guide_use_c-sharp.html

*   FBS schema file

    *   https://github.com/jamescourtney/FlatSharp/blob/master/samples/Example2-SchemaFiles/SchemaFilesExample.fbs

*   https://medium.com/@icex33/beyond-json-introduction-to-flatbuffers-fba1dfd0dcfe


### avro

*   https://engineering.chrobinson.com/dotnet-avro/guides/cli-generate/

*   https://docs.microsoft.com/en-us/dotnet/api/system.runtime.serialization.datacontractattribute?view=net-5.0

*   https://github.com/apache/avro/pulls?q=is%3Apr+moljac+is%3Aclosed

*   https://github.com/apache/avro/pull/307


### thrift

*   https://livebook.manning.com/book/programmers-guide-to-apache-thrift/chapter-13/86

*   http://www.alternatestack.com/uncategorized/apache-thrift-and-its-usage-in-c/

*   https://github.com/sivabudh/thrifly

*   https://dev.to/jeikabu/migrating-to-aspnet-core-w-apache-thrift-45f6

*   https://thrift.apache.org/tutorial/netstd

### MessageShark

*   https://github.com/rpgmaker/MessageShark

*   https://github.com/rpgmaker/MessageShark/blob/master/Samples/MessageShark.Samples.ProtoBufVsMessageShark/MessageShark.Samples.ProtoBufVsMessageShark/SimpleObject.cs

### INI file

*   https://www.codeproject.com/Tips/5319923/IniReader-A-Simple-Tiny-INI-Reader



## Diverse

*   Data Annotations (Metadata, ModelMetadata)

    *   https://github.com/search?l=C%23&q=ModelMetadataType

    *   https://github.com/search?q=Microsoft.AspNetCore.Mvc&type=code

    *   https://github.com/search?q=Microsoft.AspNetCore.Mvc.ModelMetadataType&type=code

    *   https://github.com/aspnet/Mvc/blob/master/src/Microsoft.AspNetCore.Mvc.Core/ModelMetadataTypeAttribute.cs

    *   https://github.com/aspnet/Mvc/blob/master/src/Microsoft.AspNetCore.Mvc.Core/ModelBinding/Metadata/ModelAttributes.cs

    *   more

        *   https://github.com/Kentico/kontent-delivery-sdk-net/wiki/Strong-Types-Explained-%E2%80%93-DataAnnotations-attributes

        *   https://github.com/Kentico/kontent-delivery-sdk-net/wiki/Partial-class-customization-techniques

## Performance

*   https://blog.fractalia.se/blog/keeping-system-text-json-lean/

# Serialization


## Workflow

1.  generate C# classes from XML or JSON or ________ (file the blank)

2.  copy file to preserve attributes and create new class (Buddy class) by:

    2.1 renaming class

    2.2 renaming namespace

        add namespace suffix `.Serialization.Formatters`

2.  add partial class for serialization api

    `*.Serialization.cs`

    2.1 mark the class with Metadata attribute

    2.2 add API for serialization

3.  convert C# class to Buddy class with Serialization Attributes from step 1

    *   XML

    *   JSON

        *

## WebApi

*   https://github.com/WebApiContrib/WebAPIContrib.Core#formatters

*   https://wakeupandcode.com/xml-json-serialization-in-asp-net-core/

*   https://blog.elmah.io/lessons-learned-after-migrating-25-projects-to-net-core/

*   https://weblog.west-wind.com/posts/2012/mar/09/using-an-alternate-json-serializer-in-aspnet-web-api


## Diverse

*   https://github.com/Wagsn/SerializerSharp/tree/master/SerializerSharp

*   https://nugetmusthaves.com/Tag/serializer

*   https://github.com/eallegretta/serialization-providers

*   http://universalserializer.com/

*   https://github.com/BillBensing/MessageSerializer-CSharp

*   http://www.iana.org/assignments/media-types/media-types.xhtml

*   https://docs.spring.io/spring-cloud-stream/docs/Brooklyn.M1/reference/html/contenttypemanagement.html#mime-types

