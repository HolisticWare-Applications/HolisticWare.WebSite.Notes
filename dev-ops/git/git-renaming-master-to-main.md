# Renaming `master` to `main`

git-renaming-master-to-main.md

*Note: `master` to `main` renaming*

GitHub will notify users with open PRs what to do, but in general for local environments users will need to do :

```
git branch -m master <BRANCH>
git fetch origin
git branch -u origin/<BRANCH> <BRANCH>
```

