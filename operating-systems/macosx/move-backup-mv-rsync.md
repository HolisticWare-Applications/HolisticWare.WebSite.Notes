# Move backup `mv` `rsync`

move-backup-mv-rsync.md

```
rsync -avh folder1/* folder2/
```

```
rsync -av /source/ /destination/
```
(after checking)

```
rm -rf /source/
```

rsync --remove-source-files won't delete any directories, so you will have to do something like find -depth -type d -empty -delete afterwards to get rid of the empty source directory tree.

