# Sharpie Pointers

sharpie-pointers.md

[unsupported Builtin: long double]*/

/*[unsupported Builtin: long double]*/ double d

http://aka.ms/objective-sharpie

# Sharpie Pointers

Missing class WiFiNetworkRef
https://xamarinhq.slack.com/archives/D03CSPU44/p1566289866000800

Facts (pointed out by Israel):

*   no public struct for `WifiNetwork`

*   there's a definition of a pointer to `WifiNetwork` struct named `WifiNetworkRef`

```
typedef struct __WiFiNetwork *WiFiNetworkRef;
```

workaround:

*   change all WifiNetworkRef to IntPtr

    *   the way to get the pointer to WifiNetwork is by calling the following method 
        `WiFiDeviceClientAssociateAsync` that will return the pointer of it in a callback

*   looking more close to it, almost everything will be handled as a IntPtr in C#


```
/* mc++ WiFiNetworkRef* */ IntPtr
/* mc++ CFDateRef* */ IntPtr
/* mc++ CFDictionaryRef* */ IntPtr
/* mc++ WiFiDeviceClientRef* */ IntPtr

/* mc++ WiFiDeviceClientGenericCallback* */ IntPtr
/* mc++ WiFiDeviceClientLinkOrPowerCallback* */ IntPtr
/* mc++ CFAllocatorRef* */ IntPtr
/* mc++ WiFiManagerRef* */ IntPtr
/* mc++ CFRunLoopRef* */ IntPtr
/* mc++ WiFiDeviceScanCallback* */ IntPtr
/* mc++ WiFiDeviceAssociateCallback* */ IntPtr
/* mc++ CFArrayRef* */ IntPtr


```
