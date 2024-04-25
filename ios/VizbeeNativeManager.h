#if __has_include("RCTBridgeModule.h")
#import "RCTBridgeModule.h"
#else
#import <React/RCTBridgeModule.h>
#endif

#import <React/RCTEventEmitter.h>
#import <VizbeeKit/VZBSessionManager.h>

@interface VizbeeNativeManager : RCTEventEmitter <RCTBridgeModule, VZBSessionStateDelegate, VZBAnalyticsDelegate, VZBVideoStatusUpdateDelegate, VZBVolumeStatusDelegate>

@end
  
