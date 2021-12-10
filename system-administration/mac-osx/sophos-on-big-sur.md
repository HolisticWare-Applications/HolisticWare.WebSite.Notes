# Sophos on BigSur

sophos-on-big-sur.md

All the "access" has been allowed already, but this keeps coming up every 15-20min and

*   https://web.yammer.com/main/threads/eyJfdHlwZSI6IlRocmVhZCIsImlkIjoiOTc1MTY5MTA5NTkwMDE2In0


Switch to MDATP


*   https://microsoft.sharepoint.com/sites/itweb/Pages/ITWebAlertCenter.aspx


Request an Exception from Sophos and onboard to MDE (Microsoft Defender for Endpoint).
Users who MUST run Big Sur need to be added to the ATP-for-Mac-from-Intune-Ring6 security group,
which would give them an exception from Sophos AND onboard MDE to their Mac.

```
#!/bin/bash
set -x

# this script's purpose is to make sophos actually follow Apple's guidelines for launch.d
# man 5 launchd.plist

# Found in /Library/LaunchDaemons
LAUNCH_DAEMONS=(
  'com.sophos.common.servicemanager'
)

for ld in "${LAUNCH_DAEMONS[@]}"; do
  # given we want this service to not run and clog down machines and eat their batteries,
  # let's tell launchd to not keep the process alive indefinitely.
  sudo defaults write "/Library/LaunchDaemons/$ld.plist" KeepAlive -bool false

  # For some reason, the service manager is not really a service manager
  # as it starts other services under launchd?!
  # man pages tell us the following, which doesn't seem to be true, so disable it
  # until the developers fix this.

  # A daemon or agent launched by launchd SHOULD:
  #   Handle the SIGTERM signal, preferably with a dispatch(3) source, and respond to this signal by unwinding any outstanding work quickly and then exiting.

  # As a result, let's tell sophos it's grounded! BAD SOPHOS! BAD!
  sudo launchctl unload "/Library/LaunchDaemons/$ld.plist"
  sudo launchctl stop "$ld"
done

LAUNCH_AGENTS=(
  'com.sophos.agent'
  'com.sophos.uiserver'
)

# Found in /Library/LaunchAgents
for la in "${LAUNCH_AGENTS[@]}"; do
  # given we want this service to not run indefinitely and clog down machines and eat their batteries,
  # let's tell launchd to not keep the process alive indefinitely.
  sudo defaults write "/Library/LaunchAgents/$la.plist" KeepAlive -bool false

  # from man pages
  # RunAtLoad <boolean>
  #   This optional key is used to control whether your job is launched once at the time the job is loaded.
  #   The default is false. This key should be avoided, as speculative job launches have an adverse effect
  #   on system-boot and user-login scenarios.
  sudo defaults write "/Library/LaunchAgents/$la.plist" RunAtLoad -bool false

  # We already know it doesn't respond to SIGTERM, so let's try SIGKILL. That way we ensure it's going to get
  # a clean boot, if it even load again, which we hope it doesn't
  sudo launchctl unload "/Library/LaunchAgents/$ld.plist"
  sudo launchctl stop "$la"
done

# Kill every process
sudo pkill -9 Sophos

# found via kextviewr
KEXTS=(
  'com.sophos.kext.oas'             # OnAccessKext        - A worse file system watcher
  'com.sophos.driver.devctrl'  # SophosDeviceControl - Thanks, but I can control my own device
  'com.sophos.nke.swi'              # SophosSocketFilter  - I prefer a world where net neutrality exists
)

for kext in "${KEXTS[@]}"; do
  sudo kextunload -b "$kext"
done

# it also installs a user on your machine, so clean that up too!

sudo dscl . delete "/Users/_sophos"

echo "Congratulations! You now have made Sophos macOS compliant"
echo "All you need to do now is trigger a good old reboot"

## Congratulations!

# You have now made it compliant with Apple guidelines, congratulations.
# This should improve your user quality of life, and you may have to run this script from time to time.

# Sophos is not only not going to protect you from everything, but also not protect you from anything!

## <LimitLoadToSessionType> - Aqua
# The agents run only under a GUI session (i.e. on access) so if you have multiple users,
# you could let someone hack you by running a file from a ssh session. NICE!
# https://developer.apple.com/library/archive/technotes/tn2083/_index.html#//apple_ref/doc/uid/DTS10003794-CH1-SUBSUBSECTION5

## Personal thoughts:

# If sophos actually wants to improve user experience, I highly recommend these things:
# setting <ProcessType> to background, to not inhibit user experience by eating up 80% CPU when opening files
# setting <LowPriorityIO> and not using a goddamn kext. userspace exists for a reason, not crashing your Mac
# to black screen of death, which is the reason I actually wanted to disable it without letting intune
# enable it back

```