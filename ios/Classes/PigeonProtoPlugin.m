#import "PigeonProtoPlugin.h"
#import "Person.pbobjc.h"

@implementation PigeonProtoPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"pigeon_proto"
            binaryMessenger:[registrar messenger]];
  PigeonProtoPlugin* instance = [[PigeonProtoPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPerson" isEqualToString:call.method]) {
    PigeonPerson *person = [[PigeonPerson alloc] init];
    person.name = @"me";
    person.id_p = 1;
    person.email = @"me@email.com";
    person.phone = @"112";
    result(person.data);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
