# git submodules

## Update

# Git SubModule Update

git-submodule-update.md

```
git submodule update --init --recursive
find . -type d
git checkout master
```

```
git pull 
```

in the parent repository which holds the submodules. 

This will add the new submodule as an  empty directory.

```
git submodule update --recursive --remote 
```

in the main repository. 

This will pull the latest changes for  all submodules, including the new one.


*   https://davidltran.com/blog/updating-git-submodules/

```
git submodule init
git submodule \
    update --init --recursive --merge

git submodule update                 
git submodule foreach \
    '\
        git fetch origin; \
        git checkout $(git rev-parse --abbrev-ref HEAD); \
        git reset --hard origin/$(git rev-parse --abbrev-ref HEAD); \
        git submodule update --recursive; \
        git clean -dfx \
    '
```

```
git submodule \
    foreach --recursive git pull origin master

git submodule \
    foreach --recursive git pull origin main
```

## Reset repo and submodules


```
git submodule update --recursive
# or:
git pull --recurse-submodules

git submodule foreach \
    git pull origin master
```

```
git submodule update --init --recursive

git submodule foreach \
    "git pull origin master" 
```


```
git clean -xfd
git submodule foreach --recursive git clean -xfd
git reset --hard
git submodule foreach --recursive git reset --hard
git submodule update --init --recursive
```


```
git reset --hard
git submodule foreach --recursive 'git checkout -- . || :'
git submodule update --init --recursive
git clean -d -f -f -x
git submodule foreach --recursive git clean -d -f -f -x
```


```
git submodule update --init --recursive

git submodule foreach \
    --limit_from="submodule_2"  \
    --limit_to="submodule7" \
    "git pull origin master" 
```

```
# 1st time
git submodule update --init --recursive
# For git 1.8.2 or above, the option --remote was added to support updating to latest tips of remote branches:
git submodule update --recursive --remote
git submodule foreach --recursive \
    git submodule update --init 
````




# git submodules



````
git submodule foreach \
    git reset --hard

git submodule foreach \
    --recursive \
    git reset --hard

git submodule deinit -f .
git submodule update --init
```




```
git submodule foreach \
    git status


git submodule foreach \
    git add .
git submodule foreach \
    git status
```

```
git push --recurse-submodules=on-demand
git submodule foreach \
    git push
```


````
git submodule foreach \
    git pull

git submodule foreach \
     --recursive \
    git pull
   
```


```
git submodule update --init
git submodule update --init --recursive
git submodule update --recursive --remote --force
git submodule foreach --quiet git pull --quiet origin

git pull --rebase --recurse-submodules --quiet  

git submodule update --init --recursive
git submodule foreach git pull origin master
```

## git submodule pull latest commit


```
git submodule foreach git pull
git submodule update --remote --merge
git submodule update --init
git submodule update --init --recursive
git submodule update --recursive --remote --force
```