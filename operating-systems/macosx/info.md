# Info

info.md

Mac info

```bash
system_profiler SPHardwareDataType
sysctl machdep.cpu.brand_string
sysctl -a | grep cpu
sysctl hw.memsize

ioreg -l | grep IOPlatformSerialNumber
sw_vers -buildVersion
```

```bash
system_profiler -detailLevel basic 
```

```bash
system_profiler -xml 
```

```bash
system_profiler -listDataTypes
```

*   https://jumpcloud.com/blog/five-helpful-mac-commands-for-it-admins
