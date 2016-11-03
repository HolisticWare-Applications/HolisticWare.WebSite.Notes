# Xamarin.iOS Bindings Errors fixing


*   fix Interfaces 
    sharpie usually generates w/o prefix "I"
    remove "I"


##

  Error BI1017: 
    btouch: 
    Do not know how to make a signature for 
      System.Byte* 
    in method 
      `get_YPlane' 
      (BI1017) 

		// @property (readonly, nonatomic) const uint8_t * yPlane;
		[Export("yPlane")]
		unsafe byte* YPlane { get; }



## 

    BTOUCH: 
      Error BI1014: 
      btouch: Unsupported type for Fields: 
          TWCAspectRatio 


		// extern const TWCAspectRatio TWCVideoAspectRatioConstraintsNone;
		[Field("TWCVideoAspectRatioConstraintsNone", "__Internal")]
		//mc++ TWCAspectRatio TWCVideoAspectRatioConstraintsNone { get; }
		IntPtr TWCVideoAspectRatioConstraintsNone { get; }




    BTOUCH: Error BI1014: btouch: Unsupported type for Fields: 
    global::CoreMedia.CMVideoDimensions (BI1014) (Twilio.Conversations.iOS)


## 

  obj/Debug/ios/SupportDelegates.g.cs(38,66): 
  error CS0426: 
    The nested type 
      `Result' 
    does not exist in the type 
      `TwilioIPMessagingClient.TwilioIPMessagingClient'
      
  obj/Debug/ios/SupportDelegates.g.cs(38,103): error CS0426: The nested type `Channel' does not exist in the type `TwilioIPMessagingClient.TwilioIPMessagingClient'
  obj/Debug/ios/SupportDelegates.g.cs(39,59): error CS0426: The nested type `Result' does not exist in the type `TwilioIPMessagingClient.TwilioIPMessagingClient'
  obj/Debug/ios/SupportDelegates.g.cs(40,67): error CS0426: The nested type `Result' does not exist in the type `TwilioIPMessagingClient.TwilioIPMessagingClient'
  obj/Debug/ios/SupportDelegates.g.cs(40,104): error CS0426: The nested type `Message' does not exist in the type `TwilioIPMessagingClient.TwilioIPMessagingClient'



## -------------


Objective-C exception thrown.  
Name: 
NSUnknownKeyException Reason: 
    [ setValue:forUndefinedKey:]: 
    this class is not key value coding-compliant for the key countersLabel.
    
    
    
view controller may have the wrong class in your xib.





2015-12-22 13:29:12.449 Sample.PixoMeter.XamarinIOS[5263:148621] Could not register the assembly 'Sample.PixoMeter.XamarinIOS': 
ObjCRuntime.RuntimeException: The registrar cannot marshal the parameter type 'System.Object' of the parameter 'sender' in the method 'Sample.PixoMeter.XamarinIOS.CustomMeterReadingViewController.TorchAction(System.Object)'
  at Registrar.Registrar.ComputeSignature (System.Type DeclaringType, System.Reflection.MethodBase Method, Registrar.ObjCMember member, Boolean isCategoryInstance) [0x0015a] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/Registrar.cs:1816 
  at Registrar.Registrar+ObjCMethod.ComputeSignature () [0x00000] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/Registrar.cs:577 
  at Registrar.Registrar+ObjCMethod.get_Signature () [0x0000b] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/Registrar.cs:550 
  at Registrar.Registrar+ObjCMethod.get_Trampoline () [0x001e7] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/Registrar.cs:526 
  at Registrar.DynamicRegistrar.RegisterMethod (Registrar.ObjCMethod method) [0x00037] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/DynamicRegistrar.cs:930 
  at Registrar.DynamicRegistrar.OnRegisterType (Registrar.ObjCType type) [0x00256] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/DynamicRegistrar.cs:791 
  at Registrar.Registrar.RegisterTypeUnsafe (System.Type type, System.Collections.Generic.List`1& exceptions) [0x0109d] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/Registrar.cs:1710 
  at Registrar.Registrar.RegisterAssembly (System.Reflection.Assembly assembly) [0x00097] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/Registrar.cs:1753 
2015-12-22 13:29:12.453 Sample.PixoMeter.XamarinIOS[5263:148621] System.AggregateException: One or more errors occurred. ---> ObjCRuntime.RuntimeException: The registrar found a signature mismatch in the method 'Sample.PixoMeter.XamarinIOS.CustomMeterReadingViewController.TorchAction' - the selector 'torchAction' indicates the method takes 0 parameters, while the managed method has 1 parameters.
  --- End of inner exception stack trace ---
---> (Inner Exception #0) ObjCRuntime.RuntimeException: The registrar found a signature mismatch in the method 'Sample.PixoMeter.XamarinIOS.CustomMeterReadingViewController.TorchAction' - the selector 'torchAction' indicates the method takes 0 parameters, while the managed method has 1 parameters.<---

---> (Inner Exception #1) ObjCRuntime.RuntimeException: The registrar cannot marshal the parameter type 'System.Object' of the parameter 'sender' in the method 'Sample.PixoMeter.XamarinIOS.CustomMeterReadingViewController.TorchAction(System.Object)'
  at Registrar.Registrar.ComputeSignature (System.Type DeclaringType, System.Reflection.MethodBase Method, Registrar.ObjCMember member, Boolean isCategoryInstance) [0x0015a] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/Registrar.cs:1816 
  at Registrar.Registrar+ObjCMethod.ComputeSignature () [0x00000] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/Registrar.cs:577 
  at Registrar.Registrar+ObjCMethod.ValidateSignature (System.Collections.Generic.List`1& exceptions) [0x0001d] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/Registrar.cs:565 <---

---> (Inner Exception #2) ObjCRuntime.RuntimeException: The registrar found a signature mismatch in the method 'Sample.PixoMeter.XamarinIOS.CustomMeterReadingViewController.IntegerStepperAction' - the selector 'integerStepperAction' indicates the method takes 0 parameters, while the managed method has 1 parameters.<---

---> (Inner Exception #3) ObjCRuntime.RuntimeException: The registrar cannot marshal the parameter type 'System.Object' of the parameter 'sender' in the method 'Sample.PixoMeter.XamarinIOS.CustomMeterReadingViewController.IntegerStepperAction(System.Object)'
  at Registrar.Registrar.ComputeSignature (System.Type DeclaringType, System.Reflection.MethodBase Method, Registrar.ObjCMember member, Boolean isCategoryInstance) [0x0015a] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/Registrar.cs:1816 
  at Registrar.Registrar+ObjCMethod.ComputeSignature () [0x00000] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/Registrar.cs:577 
  at Registrar.Registrar+ObjCMethod.ValidateSignature (System.Collections.Generic.List`1& exceptions) [0x0001d] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/Registrar.cs:565 <---

---> (Inner Exception #4) ObjCRuntime.RuntimeException: The registrar found a signature mismatch in the method 'Sample.PixoMeter.XamarinIOS.CustomMeterReadingViewController.FractionStepperAction' - the selector 'fractionStepperAction' indicates the method takes 0 parameters, while the managed method has 1 parameters.<---

---> (Inner Exception #5) ObjCRuntime.RuntimeException: The registrar cannot marshal the parameter type 'System.Object' of the parameter 'sender' in the method 'Sample.PixoMeter.XamarinIOS.CustomMeterReadingViewController.FractionStepperAction(System.Object)'
  at Registrar.Registrar.ComputeSignature (System.Type DeclaringType, System.Reflection.MethodBase Method, Registrar.ObjCMember member, Boolean isCategoryInstance) [0x0015a] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/Registrar.cs:1816 
  at Registrar.Registrar+ObjCMethod.ComputeSignature () [0x00000] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/Registrar.cs:577 
  at Registrar.Registrar+ObjCMethod.ValidateSignature (System.Collections.Generic.List`1& exceptions) [0x0001d] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/Registrar.cs:565 <---

---> (Inner Exception #6) ObjCRuntime.RuntimeException: The registrar found a signature mismatch in the method 'Sample.PixoMeter.XamarinIOS.CustomMeterReadingViewController.CountersStepperAction' - the selector 'countersStepperAction' indicates the method takes 0 parameters, while the managed method has 1 parameters.<---

---> (Inner Exception #7) ObjCRuntime.RuntimeException: The registrar cannot marshal the parameter type 'System.Object' of the parameter 'sender' in the method 'Sample.PixoMeter.XamarinIOS.CustomMeterReadingViewController.CountersStepperAction(System.Object)'
  at Registrar.Registrar.ComputeSignature (System.Type DeclaringType, System.Reflection.MethodBase Method, Registrar.ObjCMember member, Boolean isCategoryInstance) [0x0015a] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/Registrar.cs:1816 
  at Registrar.Registrar+ObjCMethod.ComputeSignature () [0x00000] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/Registrar.cs:577 
  at Registrar.Registrar+ObjCMethod.ValidateSignature (System.Collections.Generic.List`1& exceptions) [0x0001d] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/Registrar.cs:565 <---

---> (Inner Exception #8) ObjCRuntime.RuntimeException: The registrar found a signature mismatch in the method 'Sample.PixoMeter.XamarinIOS.CustomMeterReadingViewController.ZoomSliderAction' - the selector 'zoomSliderAction' indicates the method takes 0 parameters, while the managed method has 1 parameters.<---

---> (Inner Exception #9) ObjCRuntime.RuntimeException: The registrar cannot marshal the parameter type 'System.Object' of the parameter 'sender' in the method 'Sample.PixoMeter.XamarinIOS.CustomMeterReadingViewController.ZoomSliderAction(System.Object)'
  at Registrar.Registrar.ComputeSignature (System.Type DeclaringType, System.Reflection.MethodBase Method, Registrar.ObjCMember member, Boolean isCategoryInstance) [0x0015a] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/Registrar.cs:1816 
  at Registrar.Registrar+ObjCMethod.ComputeSignature () [0x00000] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/Registrar.cs:577 
  at Registrar.Registrar+ObjCMethod.ValidateSignature (System.Collections.Generic.List`1& exceptions) [0x0001d] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/Registrar.cs:565 <---

---> (Inner Exception #10) ObjCRuntime.RuntimeException: The registrar found a signature mismatch in the method 'Sample.PixoMeter.XamarinIOS.CustomMeterReadingViewController.LcdSwitchAction' - the selector 'lcdSwitchAction' indicates the method takes 0 parameters, while the managed method has 1 parameters.<---

---> (Inner Exception #11) ObjCRuntime.RuntimeException: The registrar cannot marshal the parameter type 'System.Object' of the parameter 'sender' in the method 'Sample.PixoMeter.XamarinIOS.CustomMeterReadingViewController.LcdSwitchAction(System.Object)'
  at Registrar.Registrar.ComputeSignature (System.Type DeclaringType, System.Reflection.MethodBase Method, Registrar.ObjCMember member, Boolean isCategoryInstance) [0x0015a] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/Registrar.cs:1816 
  at Registrar.Registrar+ObjCMethod.ComputeSignature () [0x00000] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/Registrar.cs:577 
  at Registrar.Registrar+ObjCMethod.ValidateSignature (System.Collections.Generic.List`1& exceptions) [0x0001d] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/Registrar.cs:565 <---

---> (Inner Exception #12) ObjCRuntime.RuntimeException: The registrar found a signature mismatch in the method 'Sample.PixoMeter.XamarinIOS.CustomMeterReadingViewController.Cancel' - the selector 'cancel' indicates the method takes 0 parameters, while the managed method has 1 parameters.<---

---> (Inner Exception #13) ObjCRuntime.RuntimeException: The registrar cannot marshal the parameter type 'System.Object' of the parameter 'sender' in the method 'Sample.PixoMeter.XamarinIOS.CustomMeterReadingViewController.Cancel(System.Object)'
  at Registrar.Registrar.ComputeSignature (System.Type DeclaringType, System.Reflection.MethodBase Method, Registrar.ObjCMember member, Boolean isCategoryInstance) [0x0015a] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/Registrar.cs:1816 
  at Registrar.Registrar+ObjCMethod.ComputeSignature () [0x00000] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/Registrar.cs:577 
  at Registrar.Registrar+ObjCMethod.ValidateSignature (System.Collections.Generic.List`1& exceptions) [0x0001d] in /Users/builder/data/lanes/2689/78c6cd3d/source/maccore/src/ObjCRuntime/Registrar.cs:565 <---







Failed to marshal the Objective-C object 0x7eb2d4b0 (type: MasterViewController). Could not find an existing managed instance for this object, nor was it possible to create a new managed instance (because the type 'Sample.PixoMeter.XamarinIOS.MasterViewController' does not have a constructor that takes one IntPtr argument).



