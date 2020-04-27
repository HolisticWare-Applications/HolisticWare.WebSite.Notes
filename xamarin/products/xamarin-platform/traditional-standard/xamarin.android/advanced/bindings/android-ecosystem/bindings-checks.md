# Bindings Checks

bindings-checks.md

```
find ./generated -type f -name "com.*.cs"  
find ./generated -type f -name "org.*.cs"  
```


```
find ./generated -type f \( -name "com.*.cs" -and ! -name "*.AssemblyInfo.cs" \) 
```


```
find ./generated -type f \( -name "org.*.cs" -and ! -name "com.*.AssemblyInfo.cs" \) 

find ./generated -type f  -name "[[:lower:]]*.cs"

find ./generated -type f  \( -name "[[:lower:]]*.cs" -and ! -name "*.AssemblyInfo.cs" \) 
```
