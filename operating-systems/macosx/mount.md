# Mount

mount.md


```
diskutil list

diskutil mount /dev/disk6 /Volumes/xFAT-1TB-2

diskutil mountDisk /dev/disk6
```

```
mount -t /dev/disk6
mount force -t /dev/disk6
diskutil verifyDisk /dev/disk6
diskutil repairDisk /dev/disk6
diskutil repairDisk /dev/disk6
```