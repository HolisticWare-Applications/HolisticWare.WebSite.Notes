# Deserialization Security

deserialization-security.md


```csharp
JsonSerializationSettings settings = new JsonSerializationSettings()
{
    TypeNameHandling = TypenameHandling.Auto; // DANGER!
}

return JsonConvert.Deserialize(json, settings);
```

```csharp
JsonSerializationSettings settings = new JsonSerializationSettings()
{
    TypeNameHandling = 
        TypenameHandling.None,                                      //Solution 1
        SerializationBinder = new KnownTypesSerializationBinder()   //Solution 2 
        ; 
}
```

```csharp
public class KnownTypesSerializationBinder : SerializationBinder
{
    private static IList<Types> KnownTypes = new List<Type>
    {
        typeof(Toy),
        typeof(Chocolate),
        typeof(Shoes),
    };

    public override Type BindToType(string assembly_name, string type_name)
    {
        string assembly_name_expected = Assembly.GetExecutingAssembly().FullName;
        if ( ! assembly_name.Equals(assembly_name_expected) )
        {
            threw new AssemblyMismatchException();
        }        

        return KnownTypes.SingleOrDefault(t => t.Name == type_name);
    }
}
```

*   https://aka.ms/SecureDeserialization

*   https://github.com/pwntester/yoserial.net

*   test 

    *   FxCop

    *   Semmle

    *   Roslyn analysers





