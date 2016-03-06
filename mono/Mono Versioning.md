# Mono Versioning


mono team uses a 4-part versioning scheme internally.

For teams's Mac builds - build system increments every time a new commit happens 
on a branch after configure.ac has been bumped to a new 3-part version. 

Some (but not all) of mono builds go to Xamarin customers' Alpha channel after being 
QA'd, then some of those are promoted to beta, then later to stable.

I'm working on automating our procedures so that *every* product release gets a 
corresponding Open Source release, 

First releases since Jo Shield started work on this procedure are examples on alpha 
channel:

	*	4.0.1.28 and 
    	*	4.0.1.34 are the first examples of 

Mono team make sure the website gets automatically updated too, so it'll be 
clear which 4-part versions should be considered stable.

