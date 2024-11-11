# Issues

issues.md

## fatal: unable to access LibreSSL SSL_connect: SSL_ERROR_SYSCALL in connection


```shell
fatal: unable to access 
LibreSSL SSL_connect: SSL_ERROR_SYSCALL in connection
```


```shell
fatal: unable to access 
    'https://github.com/dotnet/android-libraries.git/': 
LibreSSL SSL_connect: SSL_ERROR_SYSCALL in connection
```

### [Re]Solution / Workaround

```shell
networksetup -setv6off Wi-Fi
```