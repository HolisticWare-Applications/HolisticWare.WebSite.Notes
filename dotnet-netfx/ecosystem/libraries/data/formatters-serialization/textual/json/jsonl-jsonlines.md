# JSONL JSONLines

jsonl-jsonlines.md

*   JSONL JSON Lines

*   https://jsonlines.org/

*   https://jsonltools.com/what-is-jsonl

*   https://medium.com/@ManueleCaddeo/understanding-jsonl-bc8922129f5b

```json
{"text": "This is a sample tweet.", "sentiment": "positive"}
{"question": "What is the capital of France?", "answer": "Paris"}
{"code": "def hello_world(): print('Hello, world!')", "language": "python"}
```

*   https://github.com/LayerOneMedia/JSONL-Examples

*   https://jsonlines.org/examples/

*   https://www.code4it.dev/blog/parse-jsonlines/

*   https://www.reddit.com/r/dotnet/comments/12dn45q/loosely_defined_json_and_how_to_design_c_model/

https://www.reddit.com/r/csharp/comments/jpbmue/c_9_records_make_working_with_json_more_enjoyable/

https://servicestack.net/posts/jsonl-format



```json
["Name", "Session", "Score", "Completed"]
["Gilbert", "2013", 24, true]
["Alexa", "2013", 29, true]
["May", "2012B", 14, false]
["Deloise", "2012A", 19, true]
```

```json
{"name": "Gilbert", "session": "2013", "score": 24, "completed": true}
{"name": "Alexa", "session": "2013", "score": 29, "completed": true}
{"name": "May", "session": "2012B", "score": 14, "completed": false}
{"name": "Deloise", "session": "2012A", "score": 19, "completed": true}
```

```json
{"name": "Gilbert", "wins": [["straight", "7♣"], ["one pair", "10♥"]]}
{"name": "Alexa", "wins": [["two pair", "4♠"], ["two pair", "9♠"]]}
{"name": "May", "wins": []}
{"name": "Deloise", "wins": [["three of a kind", "5♣"]]}
```

```json
{
  "name": "Gilbert", 
  "wins": [
    [
      "straight", 
      "7♣"
    ], 
    [
      "one pair", 
      "10♥"
    ]
  ]
}
{
  "name": "Alexa", 
  "wins": [
    [
      "two pair", 
      "4♠"
    ], 
    [
      "two pair", 
      "9♠"
    ]
  ]
}```

```json
{"id":"gid:\/\/shopify\/Product\/5860091625632","title":"Levis Jeans","description":"Cool Jeans","vendor":"Levis","status":"ACTIVE"}
{"id":"gid:\/\/shopify\/ProductImage\/20289865679008","__parentId":"gid:\/\/shopify\/Product\/5860091625632"}
{"id":"gid:\/\/shopify\/ProductVariant\/37178118963360","title":"32","position":1,"image":null,"selectedOptions":[{"name":"Size","value":"32"}],"inventoryItem":{},"__parentId":"gid:\/\/shopify\/Product\/5860091625632"}
{"available":10,"location":{"id":"gid:\/\/shopify\/Location\/57510625440"},"__parentId":"gid:\/\/shopify\/ProductVariant\/37178118963360"}
{"id":"gid:\/\/shopify\/ProductVariant\/37178118996128","title":"31","position":2,"image":null,"selectedOptions":[{"name":"Size","value":"31"}],"inventoryItem":{},"__parentId":"gid:\/\/shopify\/Product\/5860091625632"}
{"available":5,"location":{"id":"gid:\/\/shopify\/Location\/57510625440"},"__parentId":"gid:\/\/shopify\/ProductVariant\/37178118996128"}
{"available":3,"location":{"id":"gid:\/\/shopify\/Location\/57951518880"},"__parentId":"gid:\/\/shopify\/ProductVariant\/37178118996128"}
{"id":"gid:\/\/shopify\/ProductVariant\/37178119028896","title":"34","position":3,"image":null,"selectedOptions":[{"name":"Size","value":"34"}],"inventoryItem":{},"__parentId":"gid:\/\/shopify\/Product\/5860091625632"}
{"available":5,"location":{"id":"gid:\/\/shopify\/Location\/57510625440"},"__parentId":"gid:\/\/shopify\/ProductVariant\/37178119028896"}
{"available":15,"location":{"id":"gid:\/\/shopify\/Location\/57951518880"},"__parentId":"gid:\/\/shopify\/ProductVariant\/37178119028896"}
```


https://stackoverflow.com/questions/65466783/c-sharp-type-safe-json-lines-deserialization

