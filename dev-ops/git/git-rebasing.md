# git rebase

git-rebase.md

> @moljac: please rebase xamarin-android#5911 atop master



> rebase xamarin-android#5911 atop master

> rebase xamarin-android#5911 atop main



`bintray-url-removal` atop `main`:

```
git checkout main
git rebase origin/bintray-url-removal
```

`main` atop `bintray-url-removal`:

```
git checkout bintray-url-removal
git rebase main
```