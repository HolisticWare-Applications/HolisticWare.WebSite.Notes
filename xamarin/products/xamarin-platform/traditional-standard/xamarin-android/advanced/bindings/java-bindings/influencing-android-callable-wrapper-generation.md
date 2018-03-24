# Influencing Android Callable Wrapper generation

influencing-android-callable-wrapper-generation.md

Is it possible to influence ACW generation:

Suppose interface in api.xml with visibility=”” and while Bindings compile, 
ACW using this Interface complains that it has private access:

Error:

	obj/Debug/android/src/mono/com/BRMicro/UsbController_IPermissionListenerImplementor.java(28,28): 
	Error:  
		error: IPermissionListener has private access in UsbController
		com.BRMicro.UsbController.IPermissionListener

Code:

	`
	public class UsbController_IPermissionListenerImplementor
		extends java.lang.Object
		implements
			mono.android.IGCUserPeer,
			com.BRMicro.UsbController.IPermissionListener
	`









