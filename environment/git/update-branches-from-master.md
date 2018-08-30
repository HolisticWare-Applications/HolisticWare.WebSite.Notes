Error CS0453: 
The type 'T' must be a non-nullable value type in order to use it as parameter 'T' 
in the generic type or method  


Error CS0315:
The type 'int' cannot be used as type parameter 'T' in the generic type or method 'Interval<T>'. 
There is no boxing conversion from 'int' to 'System.IConvertible'. 

Error CS0315:
The type 'int' cannot be used as type parameter 'T' in the generic type or method  
There is no boxing conversion from 'int' to 'System.IConvertible'. 




http://www.alcula.com/calculators/statistics/dispersion/
http://www.alcula.com/calculators/statistics/correlation-coefficient/


# Update branches from master

update-branches-from-master.md

2 options

*   merge

*   rebase

## Merge

This creates an extra commit for the merge.

Checkout branch (every branch) (NOTE: this is not needed if branch is already checked out):

```
    git checkout b1
```

Then merge:

```
    git merge origin/master
```

Then push:

```
    git push origin b1
```

## Rebase

git fetch
git rebase origin/master
