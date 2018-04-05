# git update with merge and rebase

update-merge-rebase.md

## update branch from another

```
git checkout feature1
git merge develop
```

`feature1` will be updated with commits from `develop` branch



```
git checkout featurebranch && git merge master
```

Possible to do this as many times as needed. This won't affect master and it will be possible to 
do it the other way around to update master whenever user is done with the feature branch.


```
git rebase master 
```

may be more desirable than git merge master for simplifying later integration back into the master 
branch


two options:

The first is a merge, but this creates an extra commit for the merge.

Checkout each branch:

git checkout b1
Then merge:

git merge origin/master
Then push:

git push origin b1
Alternatively, you can do a rebase:

git fetch
git rebase origin/master


## References / Links

*   https://www.atlassian.com/git/tutorials/merging-vs-rebasing