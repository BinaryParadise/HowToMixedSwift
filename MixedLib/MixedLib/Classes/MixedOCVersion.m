//
//  MixedOCVersion.m
//  MixedLib
//
//  Created by Rake Yang on 2021/11/4.
//

#import "MixedOCVersion.h"
#warning 注意此处的区别
//#import "MixedLib-Swift.h" //静态库生效
#import <MixedLib/MixedLib-Swift.h> //动态库生效
@import CocoaLumberjack;

static DDLogLevel ddLogLevel = DDLogLevelAll;

@implementation MixedOCVersion

+ (void)load {
    [MixedSwiftVersion ver:@"混编库中oc使用swift"];
}

+ (void)ver:(NSString *)tip {
    DDLogError(tip);
}

@end
