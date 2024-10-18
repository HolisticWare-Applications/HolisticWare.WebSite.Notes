# Rename branch


```shell
export OLD_BRANCH_NAME=dev/moljac/fix-18015-mac-catalyst-picker-empty
export NEW_BRANCH_NAME=dev/moljac/fix-18015-mac-catalyst-picker-empty-button
#update the name of the default branch.
git branch -m $OLD_BRANCH_NAME $NEW_BRANCH_NAME
git fetch origin
git branch -u origin/$NEW_BRANCH_NAME $NEW_BRANCH_NAME
git remote set-head origin -a

#Optionally, run the following command to remove tracking references to the old branch name.
git remote prune origin
