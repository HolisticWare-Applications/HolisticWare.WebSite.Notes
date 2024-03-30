# Git LFS

git-lfs.md

```bash
git lfs \
    track \
        **/*.pkg \
        **/*.dmg \
        **/*.zip \
```

https://docs.github.com/en/repositories/working-with-files/managing-large-files/installing-git-large-file-storage

https://git-lfs.com/

https://github.com/git-lfs/git-lfs

http://arfc.github.io/manual/guides/git-lfs


```
Uploading LFS objects:   0% (0/1), 0 B | 0 B/s, done.
batch response: Post dial tcp: lookup github.com on read udp  i/o timeout
error: failed to push some refs to 
```

https://stackoverflow.com/questions/51724041/git-lfs-error-failed-to-push-some-refs-to

git config --global lfs.contenttype 0


```
Uploading LFS objects:   0% (0/1), 0 B | 0 B/s, done.
batch response: Post "https://github.com/HolisticWare-Infrastrucutre/bin.macosx.git/info/lfs/objects/batch": dial tcp: lookup github.com on 10.10.1.1:53: read udp 10.10.0.126:63890->10.10.1.1:53: i/o timeout
error: failed to push some refs to 'https://github.com/HolisticWare-Infrastrucutre/bin.macosx.git'
```
