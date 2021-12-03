# Open folders in tabs

open-folders-in-tabs.md


```
set paths to { "/Users/darwin/Music", "/Users/darwin/Desktop"}

-- initialize new Finder window
tell application "Finder"
	activate
	set finderWindow to make new Finder window
	set toolbar visible of finderWindow to true
end tell

-- open all paths as new tabs
repeat with path in paths
	set applePath to POSIX file path
	tell application "System Events"
		keystroke "t" using command down
	end tell
	tell application "Finder"
		set target of finderWindow to applePath
	end tell
end repeat

-- close the initial tab
tell application "Finder"
	activate
	tell application "System Events"
		keystroke tab using control down
		keystroke "w" using command down
	end tell
end tell
```