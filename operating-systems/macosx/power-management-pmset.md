# Power Management `pmset`

power-management-pmset.md

## `pmset`


See the pmset man page for the list of commands you can use. For example, try any of the following:

See the current schedule.

```
pmset -g sched
```

Schedule your Mac to wake at 8:00 a.m. every Monday.

```
sudo pmset repeat wake M 8:00:00
```

Cancel the current schedule.


```
sudo pmset repeat cancel
```

```
pmset -g sched
```

```
Repeating power events:
  wakepoweron at 6:00AM every day
  sleep at 1:00AM every day
Scheduled power events:
 [0]  wake at 12/09/2024 06:49:27 by 'com.apple.alarm.user-invisible-keysync.retry'
 [1]  wake at 12/09/2024 09:00:00 by 'com.apple.alarm.user-visible-com.apple.donotdisturb.server.ScheduleLifetimeMonitor.timer' User visible: true
```

```
sudo pmset repeat cancel
```

```
pmset -g sched          
```

```
Scheduled power events:
 [0]  wake at 12/09/2024 06:49:27 by 'com.apple.alarm.user-invisible-keysync.retry'
 [1]  wake at 12/09/2024 09:00:00 by 'com.apple.alarm.user-visible-com.apple.donotdisturb.server.ScheduleLifetimeMonitor.timer' User visible: true
```

There is only one pair of repeating events scheduled

```
sudo pmset repeat poweron MTWRFSU 6:00:00 shutdown MTWRFSU 21:30:00
```



```
sudo pmset schedule cancelall
```
