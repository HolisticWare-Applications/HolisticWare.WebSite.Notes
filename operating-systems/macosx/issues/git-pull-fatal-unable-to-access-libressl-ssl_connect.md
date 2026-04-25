# `git pull` fatal: unable to access LibreSSL SSL_connect

git-pull-fatal-unable-to-access-libressl-ssl_connect.md

After MacOSX update I get (Seems like only for git pull)

```
MacOSX
git pull
fatal: unable to access 
LibreSSL SSL_connect: SSL_ERROR_SYSCALL in connection to github.com:443
```

Workaround:

1.  clean and restart Mac

2.  git proxy

    ```shell
    git config --global --unset http.proxy
    git config --global --unset https.proxy
    ```

## Diverse

```shell
fatal: unable to access 
    'https://github.com/dotnet/android-libraries.git/': 
LibreSSL SSL_connect: SSL_ERROR_SYSCALL in connection to github.com:443
```
