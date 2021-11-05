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

+ (void)ver {
    DDLogDebug(@"0.1.0 （Pure OC Lib）");
    [PureSwiftVersion2 ver];
}

@end
