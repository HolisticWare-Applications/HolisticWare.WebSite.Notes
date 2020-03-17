# AVD manager

avdmanager.md 

./avdmanager commandline:

    Usage:
        avdmanager [global options] [action] [action options]
        Global options:
    -s --silent     : Silent mode, shows errors only.
    -v --verbose    : Verbose mode, shows errors, warnings and all messages.
        --clear-cache: Clear the SDK Manager repository manifest cache.
    -h --help       : Help on a specific command.

    Valid actions are composed of a verb and an optional direct object:
    -   list              : Lists existing targets or virtual devices.
    -   list avd          : Lists existing Android Virtual Devices.
    -   list target       : Lists existing targets.
    -   list device       : Lists existing devices.
    - create avd          : Creates a new Android Virtual Device.
    -   move avd          : Moves or renames an Android Virtual Device.
    - delete avd          : Deletes an Android Virtual Device.

Creating:

    ./avdmanager \
        create avd \
            --name avd-x86-L-25-google-apis \
            -k "system-images;android-25;google_apis;x86"

    Action "create avd":
    Creates a new Android Virtual Device.
    Options:
    -a --snapshot: Place a snapshots file in the AVD, to enable persistence.
    -c --sdcard  : Path to a shared SD card image, or size of a new sdcard for
                    the new AVD.
    -g --tag     : The sys-img tag to use for the AVD. The default is to
                    auto-select if the platform has only one tag for its system
                    images.
    -p --path    : Directory where the new AVD will be created.
    -k --package : Package path of the system image for this AVD (e.g.
                    'system-images;android-19;google_apis;x86').
    -n --name    : Name of the new AVD. [required]
    -f --force   : Forces creation (overwrites an existing AVD)
    -b --abi     : The ABI to use for the AVD. The default is to auto-select the
                    ABI if the platform has only one ABI for its system images.
    -d --device  : The optional device definition to use. Can be a device index
                    or id.



Deleting:

    ./avdmanager \
        delete avd \
        --name test