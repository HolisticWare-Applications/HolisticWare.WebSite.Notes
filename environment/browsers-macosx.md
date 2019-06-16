# Browsers MacOSX

browsers-macosx.md

*   MultiBrowser

    Free
    
    *   https://github.com/johnste/finicky

*   Browser Fairy

*   Choosy


```
mdls -name kMDItemCFBundleIdentifier \
    -r \
        /Applications/Safari.app

mdls -name kMDItemCFBundleIdentifier \
    -r \
        /Applications/Microsoft\ Edge\ Canary.app

mdls -name kMDItemCFBundleIdentifier \
    -r \
        /Applications/Microsoft\ Outlook.app/

mdls -name kMDItemCFBundleIdentifier \
    -r \
    /Applications/Thunderbird.app/
```

|-----------------------|-----------------------------------|
| Browser	            | Bundle Identifier                 |
|-----------------------|-----------------------------------|
| Google Chrome	        | com.google.Chrome                 |
| Google Chrome Canary  | com.google.Chrome.canary          |
| Opera	                | com.operasoftware.Opera           |
| Mozilla Firefox	    | org.mozilla.firefox
| Firefox Developer Edition	org.mozilla.firefoxdeveloperedition
| Safari	com.apple.Safari
| Brave	com.electron.brave
| Brave Developer	com.brave.Browser.dev

https://github.com/will-stone/browserosaurus

