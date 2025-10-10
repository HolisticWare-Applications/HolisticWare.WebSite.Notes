# Security Scan

security-scan.md

```
dotnet security-scan 
```
```
dotnet tool install \
    --global security-scan \
        --version 5.6.7
```

```
security-scan \
    ./generated/AndroidX.sln \
        --cwe \
        --export=output/sast-results.sarif    
```


```
security-scan \
    ./generated/AndroidX.sln \
        --excl-proj=**/*Test*/** \
        --cwe \
        --export=output/sast-results.sarif    
```

