# Spell Checking

spell-checking.md



```
<PackageReference Include="NHunspell" Version="1.2.5554.16953" />

<PackageReference Include="WeCantSpell.Hunspell" Version="3.0.1" />
```

*   https://www.nuget.org/packages/WeCantSpell.Hunspell/

*   https://github.com/aarondandy/WeCantSpell.Hunspell/


```csharp
        var dictionary = WordList.CreateFromFiles(@"English (British).dic");
        bool notOk = dictionary.Check("teh");
        var suggestions = dictionary.Suggest("teh");
        bool ok = dictionary.Check("the");
```

*   https://www.nuget.org/packages/NHunspell/

*   https://www.techrepublic.com/blog/software-engineer/spell-check-net-applications-with-nhunspell/

*   https://stackoverflow.com/questions/tagged/nhunspell

```csharp
string term = "technical";
using (Hunspell hunspell = new Hunspell("en_us.aff", "en_us.oxt"))  
{
    Console.WriteLine("Let's determine if technical is spelled correctly.");
    bool check = hunspell.Spell(term);
}
```