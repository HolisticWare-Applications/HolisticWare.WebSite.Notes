# Finder Automation

finder-automation.md

Open Script Editor (search with Spotlight), paste everything below, change the folders at 
the top to what you want. Hit CMD+R to test it. If it works, save, on the File Format drop 
down, select Application. Good to go. Drag to your dock or wherever.

# you can declare user and system folders like this:
set path1 to (path to desktop folder) as alias
set path2 to (path to downloads folder) as alias

# or you can manually enter the folder location in quotes:
set path3 to "Users:N1c0lat0:Documents" as alias
set path4 to "Applications:Diablo III" as alias

tell application "Finder"
	open path1
	open path2
	open path3
	open path4
end tell


tell application "Finder"

  make new Finder window

  set target of front Finder window to (POSIX file "/Users/yourname" as alias)

  set bounds of front Finder window to {0, 50, 200, 500}

  make new Finder window

  set target of front Finder window to (POSIX file "/Users/yourname/Desktop" as alias)

  set bounds of front Finder window to {410, 50, 910, 500}

end tell


https://apple.stackexchange.com/questions/347306/in-macos-10-14-mojave-can-finder-remember-previously-opened-tabs-like-safari


Delete the following file:

~/Library/Saved Application State/com.apple.finder.savedState

https://developer.apple.com/library/archive/documentation/AppleScript/Conceptual/AppleScriptLangGuide/introduction/ASLR_intro.html

https://gist.github.com/darwin/262db85585ea563f3060edb467dd2c95



https://www.switchingtomac.com/tutorials/osx/5-ways-to-reveal-the-path-of-a-file-on-macos/