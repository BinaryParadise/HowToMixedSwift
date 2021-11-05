//
//  MixedOCVersion.m
//  MixedLib
//
//  Created by Rake Yang on 2021/11/4.
//

#import "MixedOCVersion.h"
//#import "MixedLib-Swift.h" //静态库生效
#import <MixedLib/MixedLib-Swift.h> //动态库生效
@import CocoaLumberjack;

static DDLogLevel ddLogLevel = DDLogLevelAll;

@implementation MixedOCVersion

+ (void)load {
    [MixedSwiftVersion ver];
}

+ (void)ver {
    DDLogDebug(@"0.1.0 （OC in Mixed Lib）");
}

@end
