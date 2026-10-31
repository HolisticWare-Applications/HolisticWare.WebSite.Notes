# Garbage Collector GC

gc-garbage-collector.md

*   https://blog.applied-algorithms.tech/a-sub-millisecond-gc-for-net

flavors of garbage collection:

*   Workstation vs. server GC

*   Background GC

    ```xml
    <PropertyGroup>
      <ServerGarbageCollection>true</ServerGarbageCollection>
    </PropertyGroup>
    ```

    WPF App.Config:

    ```xml
    <configuration>
      <runtime>
        <gcServer enabled="true"/>
      </runtime>
    </configuration>
    ```

*   https://learn.microsoft.com/en-us/dotnet/core/runtime-config/garbage-collector

*   https://www.ditdot.hr/en/improving-garbage-collection-in-net

https://minidump.net/2025-28-01-writing-a-net-gc-in-c-part-1/

https://minidump.net/writing-a-net-gc-in-c-part-2/

https://minidump.net/writing-a-net-gc-in-c-part-3/

https://minidump.net/writing-a-net-gc-in-c-part-4/

https://minidump.net/writing-a-net-gc-in-c-part-5/

https://minidump.net/writing-a-net-gc-in-c-part-6/

https://minidump.net/writing-a-net-gc-in-c-part-7/

https://minidump.net/writing-a-net-gc-in-c-part-8/

https://minidump.net/writing-a-net-gc-in-c-part-9/

https://minidump.net/writing-a-net-gc-in-c-part-10/
