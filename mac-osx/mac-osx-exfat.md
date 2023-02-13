# MacOSX exfat

mac-osx-exfat.md

*  to be readable - 1024 kB blocks
 
```
sudo fsck_exfat -d disk6  
```

```
Opening /dev/rdisk6
** Checking volume.
** Checking main boot region.
fsck_exfat: Invalid jump or signature
   Main boot region is invalid. Trying alternate boot region.
** Checking alternate boot region.
fsck_exfat: Invalid jump or signature
   Alternate boot region is invalid.
** The volume  could not be verified completely.
```

```
% sudo fsck_exfat -d disk6s2
```

```
Opening /dev/rdisk6s2
** Checking volume.
** Checking main boot region.
fsck_exfat: FSOPS_ReadBootSector: Cluster size not supported: 2097152

** The volume  could not be verified completely.

```