//
//  Outdate.m
//  MixedExampe
//
//  Created by Rake Yang on 2021/11/4.
//

#import "Outdate.h"

@import CocoaLumberjack;
static DDLogLevel ddLogLevel = DDLogLevelAll;

@implementation Outdate

+ (void)warning {
    DDLogDebug(@"Objective-C is outdated!");
}

@end
