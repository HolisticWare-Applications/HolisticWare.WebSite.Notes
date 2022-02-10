# Type is defined multiple times 

type-is-defined-multiple_times.md


Bindings Error


Error in obj/Debug/lp/102/jl/classes.jar:com/google/android/gms/internal/measurement/zzu.class:

Type 
    com.google.android.gms.internal.measurement.zzu 
is defined multiple times: 
    obj/Debug/lp/102/jl/classes.jar:com/google/android/gms/internal/measurement/zzu.class, 
    obj/Debug/lp/111/jl/classes.jar:com/google/android/gms/internal/measurement/zzu.class
Compilation failed


javac d8
Type 
is defined multiple times: 
Compilation failed

https://github.com/xamarin/xamarin-android/issues/5237


find ./generated -type f -name api.xml -exec grep -Hni "measurement.zzfg" {} \;
./generated/com.google.android.gms.play-services-measurement-impl/obj/Release/monoandroid90/api.xml:33:    <class abstract="false" deprecated="not deprecated" extends="com.google.android.gms.internal.measurement.zzfg" extends-generic-aware="com.google.android.gms.internal.measurement.zzfg" jni-extends="Lcom/google/android/gms/internal/measurement/zzfg;" final="true" name="zzel" static="false" visibility="" jni-signature="Lcom/google/android/gms/internal/measurement/zzel;">
./generated/com.google.android.gms.play-services-measurement-impl/obj/Release/monoandroid90/api.xml:197:    <class abstract="true" deprecated="not deprecated" extends="java.lang.Object" extends-generic-aware="java.lang.Object" jni-extends="Ljava/lang/Object;" final="false" name="zzfg" static="false" visibility="" jni-signature="Lcom/google/android/gms/internal/measurement/zzfg;"></class>



