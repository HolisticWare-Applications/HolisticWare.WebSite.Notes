# Code Generation

code-generation.md

ttps://github.com/jsontypedef/json-typedef-infer

https://jsontypedef.com/docs/csharp-codegen/

    https://jsontypedef.com/docs/jtd-codegen/

https://endjin.com/blog/2021/05/csharp-serialization-with-system-text-json-schema

https://www.thecodebuzz.com/csharp-class-json-schema/

https://bartwullems.blogspot.com/2022/06/generate-c-code-from-json-schema-part-ii.html

https://stackoverflow.com/questions/60640295/correctly-create-a-net-class-with-a-json-schema

https://stackoverflow.com/questions/6358745/generate-c-sharp-classes-from-json-schema

https://stackoverflow.com/questions/39184970/how-to-create-json-schema-from-json-object-string-c-sharp

https://www.reddit.com/r/csharp/comments/asmxlo/generating_c_classes_from_json_schema_draft_6/?rdt=49759

https://github.com/Rambalac/JsonToCSharp

https://github.com/jsontypedef/json-typedef-infer

```
brew install jsontypedef/jsontypedef/jtd-infer
brew install jsontypedef/jsontypedef/jtd-codegen
```


```
# Both of these do the same thing.
cat data.json | jtd-infer
jtd-infer data.json
```




```
jtd-codegen \
    schemas/user.jtd.json \
    --csharp-system-text-out src/user \
    --csharp-system-text-namespace Example.User
```
