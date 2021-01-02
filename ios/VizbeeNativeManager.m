
#import "VizbeeNativeManager.h"
#import <React/RCTLog.h>

@implementation VizbeeNativeManager

{
  BOOL _hasListeners;
}

RCT_EXPORT_MODULE(VizbeeNativeManager)

-(dispatch_queue_t) methodQueue {
    return dispatch_get_main_queue();
}

-(NSArray<NSString*>*) supportedEvents {
        return @[@"CancelEvent", @"OKEvent"];
}

// Will be called when this module's first listener is added.
- (void)startObserving
{
  _hasListeners = YES;
}

// Will be called when this module's last listener is removed, or on dealloc.
- (void)stopObserving
{
  _hasListeners = NO;
}

//----------------
// Flow APIs
//----------------

RCT_EXPORT_METHOD(smartPrompt) {
    RCTLogInfo(@"Invoking smartPrompt");
}

RCT_EXPORT_METHOD(smartCast) {
    RCTLogInfo(@"Invoking smartCast");
}

RCT_EXPORT_METHOD(smartPlay:(NSDictionary*) vizbeeVideoMap
        didPlayOnTVCallback:(RCTResponseSenderBlock)callback
         doPlayOnTVCallback:(RCTResponseSenderBlock)callback
        ) {
    RCTLogInfo(@"Invoking smartPlay");
}

//----------------
// Session APIs
//----------------

RCT_REMAP_METHOD(getSessionState, getSessionStateWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    RCTLogInfo(@"Invoking getSessionState");
}

RCT_REMAP_METHOD(getSessionConnectedDevice, getSessionConnectedDeviceWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    RCTLogInfo(@"Invoking getSessionConnectedDevice");
}

//----------------
// Video APIs
//----------------

RCT_EXPORT_METHOD(play) {
    RCTLogInfo(@"Invoking play");
}

RCT_EXPORT_METHOD(pause) {
    RCTLogInfo(@"Invoking pause");
}

RCT_EXPORT_METHOD(seek:(double) position) {
    RCTLogInfo(@"Invoking seek");
}

RCT_EXPORT_METHOD(stop) {
    RCTLogInfo(@"Invoking stop");
}

@end
  
