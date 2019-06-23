# Projitems files

*   VS4Windws

    *   install "Project System Tools" extension

*   VS4Mac 

    *   uses msbuild SDK (API) for builds

        *    not commandline invocation

    *   Builds from the API don't use `.rsp` files

    *   `*.rsp` files apply only to command-line build invocations
    
    *   this would mean VS Mac would not support `.rsp files`
    
    *   VS4Mac does not run  `msbuild.exe` itself
    

## enabling structured binlog

Add `Directory.Build.rsp` file to project root or parent folders.

To turn on the feature in VS4Mac

```
export MD_FEATURES_ENABLED=IdeBuildOutputView
open -n /Applications/Visual\ Studio.app/
```

Adding

```
export MD_FEATURES_ENABLED=IdeBuildOutputView
```

to `~/.bash_profile ` does not work.


## Chat

### 2019-06-21

Short report regarding `Directory.Build.rsp` files with VS4Mac

Commandline:
```
export MD_FEATURES_ENABLED=IdeBuildOutputView
open -n /Applications/Visual\ Studio.app/
```
Works!
Adding 
```
export MD_FEATURES_ENABLED=IdeBuildOutputView
```
to `~/.bash_profile` does NOT work. (Anybody? Any idea?)

Currently two of us are testing `~/.bashrc` and some other options.

@dean I would use `*.props`, but there is no MsBuild built-in property that will enable/configure StructuredBinLogger.
See:

question:
https://xamarinhq.slack.com/archives/C0VFPK631/p1556613491101800

and answer:
https://xamarinhq.slack.com/archives/C0VFPK631/p1556816708203300

so `*.props` will not work. or do you have any idea?

Some confusing facts for environment variable approach (my/our 2c):

* does not read existing `Directory.Build.rsp`
* creates in-memory `*.binlog` file which can be saved

But thanks to all of you - we can proceede with work.

### 2019-06-19

```
Kirill Osenkov [18:22]
Technically VSMac uses MSBuild to build, so if the command line MSBuild picks it up, 
so should the IDE build. 
Have you tried if it works when you build from the command line using `msbuild`?
@rodrigo and his team have written the Structured Build Output feature for VSMac that 
records .binlogs during the build and lets you investigate, but this feature might be disabled.

is there a way to enable the Structured Build Output feature?

Rainer Sigwald [18:38]
Builds from the API don't use `.rsp` files; they apply only to command-line build invocations

Rodrigo Moya [18:43]
@kirillosenkov yes, via an env var
this env var -> 
https://github.com/xamarin/md-addins/blob/master/Xamarin.Ide/Xamarin.Ide/VSMacFeatureSwitchController.cs#L25
sorry, MD_FEATURES_ENABLED=IdeBuildOutputView

Matt Ward [14:42]
From Rainer’s comment `Builds from the API don't use` .rsp` files; they apply only to command-line 
build invocations` - this would mean VS Mac would not support .rsp files. It does not run 
msbuild.exe itself.

Miljenko Cvjetko 🇭🇷 [14:52]
Got it!
Thanks @mward
Does the same apply for VS4Windows? Is there equivalent ENV VAR or something for VS4Windows.
No wait. Installing “Project System Tools” extension should enable it. Right?
```
