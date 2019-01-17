# ibtoold unrecognized selector sent to class

ibtoold-unrecognized-selector-sent-to-class-xcode-installation-not-finished.md

Usually happens after updates OS and XCode

```
Resources/LaunchScreen.storyboard: Error: 2018-10-14 16:07:12.757 
ibtoold[8205:5712515] +[SimServiceContext serviceContextForDeveloperDir:error:]: 
unrecognized selector sent to class 0x11a80ac00
2018-10-14 16:07:12.822 ibtoold[8205:5712515] 
*** 
Terminating app due to uncaught exception 'NSInvalidArgumentException', 
reason: '+[SimServiceContext serviceContextForDeveloperDir:error:]: unrecognized selector sent to class 0x11a80ac00'
*** First throw call stack:
(
	0   CoreFoundation                      0x00007fff3cc372db __exceptionPreprocess + 171
	1   libobjc.A.dylib                     0x00007fff63ddec76 objc_exception_throw + 48
	2   CoreFoundation                      0x00007fff3cccfcf4 +[NSObject(NSObject) doesNotRecognizeSelector:] + 132
	3   CoreFoundation                      0x00007fff3cbad820 ___forwarding___ + 1456
	4   CoreFoundation                      0x00007fff3cbad1e8 _CF_forwarding_prep_0 + 120
	5   IDEInterfaceBuilderCocoaTouchIntegration 0x000000011a39a2dc __IBSharedInterfaceBuilderSpecificSimulatorServiceContext_block_invoke_2 + 162
	6   IDEInterfaceBuilderCocoaTouchIntegration 0x000000011a39a20e __IBSharedInterfaceBuilderSpecificSimulatorServiceContext_block_invoke + 28
	7   libdispatch.dylib                   0x00007fff649bedb8 _dispatch_client_callout + 8
	8   libdispatch.dylib                   0x00007fff649bed6b dispatch_once_f + 41
	9   IDEInterfaceBuilderCocoaTouchIntegration 0x000000011a39a1ad IBSharedInterfaceBuilderSpecificSimulatorServiceContext + 1165
	10  IDEInterfaceBuilderCocoaTouchIntegration 0x000000011a27803e -[IBCocoaTouchIdiom trySimDeviceTypeForIdentifier:error:] + 56
	11  IDEInterfaceBuilderCocoaTouchIntegration 0x000000011a2781f9 -[IBCocoaTouchIdiom simDeviceTypeForToolDescription:error:] + 153
	12  IDEInterfaceBuilderCocoaTouchIntegration 0x000000011a331ea4 -[IBCocoaTouchPlatformToolDescription preferredDeviceTypeReturningError:] + 114
	13  IDEInterfaceBuilderCocoaTouchIntegration 0x000000011a24d2f7 -[IBCocoaTouchToolManager executionContextForDescription:error:] + 225
	14  IDEInterfaceBuilderKit              0x000000010aae7e41 -[IBAbstractInterfaceBuilderPlatformToolManager _determineContextsForLaunchingToolWithDescription:returningLaunchContext:returningExecutionContext:returningFailureContext:error:forReason:] + 136
	15  IDEInterfaceBuilderKit              0x000000010aae815f -[IBAbstractInterfaceBuilderPlatformToolManager launchNewToolWithDescription:error:forReason:] + 154
	16  IDEInterfaceBuilderCocoaTouchIntegration 0x000000011a24de04 -[IBCocoaTouchToolManager launchNewToolWithDescription:error:forReason:] + 89
	17  IDEInterfaceBuilderKit              0x000000010aae5d66 -[IBAbstractInterfaceBuilderPlatformToolManager cachedToolIncrementBusyWithDescription:error:forReason:] + 258
	18  IDEInterfaceBuilderCocoaTouchIntegration 0x000000011a24dca0 -[IBCocoaTouchToolManager cachedToolIncrementBusyWithDescription:error:forReason:] + 89
	19  IDEInterfaceBuilderCocoaTouchIntegration 0x000000011a2cb4ce __122-[IBCocoaTouchXIBDocumentCompiler compiledKeyedObjectsDataWithMarshallingContext:archivingContext:diagnosticsBlock:error:]_block_invoke.95 + 267
	20  libdispatch.dylib                   0x00007fff649bedb8 _dispatch_client_callout + 8
	21  libdispatch.dylib                   0x00007fff649d21e1 _dispatch_queue_barrier_sync_invoke_and_complete + 60
	22  DVTFoundation                       0x000000010b7403db DVTDispatchSync + 208
	23  IDEInterfaceBuilderCocoaTouchIntegration 0x000000011a2cae26 -[IBCocoaTouchXIBDocumentCompiler compiledKeyedObjectsDataWithMarshallingContext:archivingContext:diagnosticsBlock:error:] + 3436
	24  IDEInterfaceBuilderCocoaTouchIntegration 0x000000011a2cc63c __121-[IBCocoaTouchXIBDocumentCompiler compiledPackageWithOptions:marshallingContext:archivingContext:diagnosticsBlock:error:]_block_invoke + 72
	25  IDEInterfaceBuilderKit              0x000000010ab8d68b -[IBDocumentCompiler invokeWhileUsingSourceAsIntermediateDocument:] + 72
	26  IDEInterfaceBuilderKit              0x000000010ab8d9b8 -[IBDocumentCompiler invokeWithIntermediateDocumentOfTargetRuntime:alwaysCopy:block:] + 316
	27  IDEInterfaceBuilderCocoaTouchIntegration 0x000000011a2cbc56 -[IBCocoaTouchXIBDocumentCompiler compiledPackageWithOptions:marshallingContext:archivingContext:diagnosticsBlock:error:] + 696
	28  IDEInterfaceBuilderCocoaTouchIntegration 0x000000011a2b9c5d -[IBCocoaTouchStoryboardDocumentCompiler compileCompilationUnit:options:forSceneCompilationGroup:error:] + 407
	29  IDEInterfaceBuilderKit              0x000000010ae02bbd -[IBStoryboardSceneCompilationGroup compilationResultsForCompilationUnits:options:returningErrors:] + 658
	30  IDEInterfaceBuilderKit              0x000000010adf0305 -[IBStoryboardDocumentCompiler compileUnitsFromCompilationGroups:filter:options:errors:] + 505
	31  IDEInterfaceBuilderKit              0x000000010adf1b69 __78-[IBStoryboardDocumentCompiler compileContentsOfStoryboardWithOptions:errors:]_block_invoke + 209
	32  IDEInterfaceBuilderKit              0x000000010ac90887 IBWithAutoInvalidationPool + 180
	33  IDEInterfaceBuilderKit              0x000000010adf1901 -[IBStoryboardDocumentCompiler compileContentsOfStoryboardWithOptions:errors:] + 242
	34  IDEInterfaceBuilderKit              0x000000010adf1f0f -[IBStoryboardDocumentCompiler internalCompileWithOptions:error:] + 174
	35  IDEInterfaceBuilderCocoaTouchIntegration 0x000000011a2ba058 -[IBCocoaTouchStoryboardDocumentCompiler internalCompileWithOptions:error:] + 131
	36  IDEInterfaceBuilderKit              0x000000010adf2f30 __57-[IBStoryboardDocumentCompiler compileWithOptions:error:]_block_invoke + 261
	37  IDEInterfaceBuilderKit              0x000000010ab8da43 __85-[IBDocumentCompiler invokeWithIntermediateDocumentOfTargetRuntime:alwaysCopy:block:]_block_invoke + 137
	38  IDEInterfaceBuilderKit              0x000000010ab8d7b2 -[IBDocumentCompiler invokeWithIntermediateDocument:] + 244
	39  IDEInterfaceBuilderKit              0x000000010ab8d970 -[IBDocumentCompiler invokeWithIntermediateDocumentOfTargetRuntime:alwaysCopy:block:] + 244
	40  IDEInterfaceBuilderKit              0x000000010adf2bb8 -[IBStoryboardDocumentCompiler compileWithOptions:error:] + 669
	41  IDEInterfaceBuilderKit              0x000000010ab8db4a +[IBDocumentCompiler compileContentsOfDocument:options:error:] + 123
	42  IDEInterfaceBuilderKit              0x000000010ab47076 __47-[IBDocument compiledPackageWithOptions:error:]_block_invoke + 56
	43  IDEInterfaceBuilderKit              0x000000010ab8b2b9 -[IBDocumentAutolayoutManager ignoreAutolayoutStatusInvalidationDuring:] + 27
	44  IDEInterfaceBuilderKit              0x000000010ab46fca -[IBDocument compiledPackageWithOptions:error:] + 227
	45  IDEInterfaceBuilderKit              0x000000010ab47315 -[IBDocument compileAndWriteToPath:withOptions:error:] + 180
	46  ibtoold                             0x000000010a9a5e73 IBCompileDocumentForSingleTargetDevice + 211
	47  ibtoold                             0x000000010a9a173c -[IBCLIInterfaceBuilderToolPersona invokeArguments:outputDictionary:] + 26169
	48  ibtoold                             0x000000010a9a467e -[IBCLIInterfaceBuilderToolPersona runSingleInvocation:outputtingToFileHandle:andVerifyingEnvironment:] + 3171
	49  ibtoold                             0x000000010a9a80e7 IBCLIServerRunSingleInvocation + 520
	50  ibtoold                             0x000000010a9a873e __IBCLIServerRunSingleInvocationWithIODirectedAtPipesAndUnlinkOnSuccess_block_invoke_2 + 34
	51  ibtoold                             0x000000010a9a860c __IBCLIServerRunSingleInvocationWithIODirectedAtPipesAndUnlinkOnSuccess_block_invoke + 857
	52  ibtoold                             0x000000010a9973f5 -[IBCLIErrorForwarder forwardErrorOutputToDescriptor:whileInvokingBlock:] + 110
	53  ibtoold                             0x000000010a9a7c9d IBCLIServerRunSingleInvocationWithIODirectedAtPipesAndUnlinkOnSuccess + 581
	54  ibtoold                             0x000000010a9a6a7d main + 2673
	55  libdyld.dylib                       0x00007fff649f8015 start + 1
	56  ???                                 0x0000000000000002 0x0 + 2
)
libc++abi.dylib: terminating with uncaught exception of type NSException 
(AsyncAwait.iOS)
/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/iOS/Xamarin.iOS.Common.targets(3,3): 
Error: 
ibtool exited with code 255 
/Library/Frameworks/Mono.framework/External/xbuild/Xamarin/iOS/Xamarin.iOS.Common.targets(3,3): 
Error: 
Failed to load ibtool log file 
`obj/iPhoneSimulator/Debug/device-builds/iphone11.4-12.0/ibtool-manifests/LaunchScreen.storyboardc`: 
Failed to parse PList data type:  
```

Reduced:

```
Resources/LaunchScreen.storyboard
unrecognized selector sent to class
libc++abi.dylib: terminating with uncaught exception of type NSException 
ibtool exited with code 255 
Failed to parse PList data type:  
```


Launch Xcode and finish installation of the tools and rest.... 

