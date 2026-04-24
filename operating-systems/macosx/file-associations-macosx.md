# File Associations on MacOSX

file-associations-macosx.md


```
# Open in Visual Studio Code
# Automator +/ New +/ Quick Action (Service)
# files or folders
# in any application
# Pass input: as arguments

# launch Visual Studio Code (new window)
/usr/local/bin/code -n
for f in "$@"; do
	# open each file in Visual Studio that is opened
    /usr/local/bin/code "$f"
done
```

```
# Open in Rider
# Automator +/ New +/ Quick Action (Service)
# files or folders
# in any application
# Pass input: as arguments

for f in "$@"; do
    open -a 'Rider 2018.1.4.app' "$f"
done
```

```
killall Finder
```


```
/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister \
    -kill -r \
    -domain local \
    -domain system \
    -domain user
```
