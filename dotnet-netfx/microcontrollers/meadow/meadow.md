# Meadow

meadow.md


```
export MEADOW_DEVICE_SERIAL="356639653138"
dfu-util -a 0 -S $MEADOW_DEVICE_SERIAL -D Meadow.OS.bin -s 0x08000000
```