//
//  PureOCLibVersion.m
//  MixedLib
//
//  Created by Rake Yang on 2021/11/4.
//

#import "PureOCLibVersion.h"
@import PureSwiftLib2;
@import CocoaLumberjack;

static DDLogLevel ddLogLevel = DDLogLevelAll;


@implementation PureOCLibVersion

+ (void)ver:(NSString *)tip {
    DDLogDebug(@"%@", tip);
    [PureSwiftVersion2 ver:@"oc库中使用swift库"];
}

@end
