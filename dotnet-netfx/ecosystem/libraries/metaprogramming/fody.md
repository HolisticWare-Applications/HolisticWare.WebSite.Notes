# Fody

fody.md

*   The Easiest Way to Measure Your Method’s Performance in C#

    *   https://www.youtube.com/watch?v=xlqcT4NSrZw


```
Install-Package Fody
Install-Package MethodTimer.Fody
```

Add <MethodTimer/> to `FodyWeavers.xml`


```xml
<Weavers>
  <MethodTimer/>
</Weavers>
```
