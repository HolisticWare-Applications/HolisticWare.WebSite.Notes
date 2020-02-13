# iOS Bindings

ios-bindings-native-linking-failed.md 

Native linking failed

```    
/Projects/HolisticWare/20160906230614/00new/TritonPlayer/samples/TritonPlayer.Sample.XamarinIOS/
    clang: 
    Error: 
        linker command failed with exit code 1 (use -v to see invocation) 
        
/Projects/HolisticWare/20160906230614/00new/TritonPlayer/samples/TritonPlayer.Sample.XamarinIOS/
    MTOUCH: 
    Error MT5214: 
        Native linking failed, undefined symbol: 
            _TrackIdKey. 
        This symbol was referenced by the managed member 
            HolisticWare.Triton.Constants.TrackIdKey. 
        Please verify that all the necessary frameworks have been referenced and native libraries linked. 
        
/Projects/HolisticWare/20160906230614/00new/TritonPlayer/samples/TritonPlayer.Sample.XamarinIOS/MTOUCH: Error MT5202: Native linking failed. Please review the build log. (MT5202) (TritonPlayer.Sample.XamarinIOS)
```



```
-framework SystemConfiguration \
-framework AdSupport \
-framework AVFoundation \
-framework MediaPlayer \
-framework CoreMedia
```