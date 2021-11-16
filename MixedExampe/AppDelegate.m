//
//  AppDelegate.m
//  MixedExampe
//
//  Created by Rake Yang on 2021/11/4.
//

#import "AppDelegate.h"
#import "LoggerFormat.h"
#import "MixedExampe-Swift.h"
@import CocoaLumberjack;
@import Canary;

static DDLogLevel ddLogLevel = DDLogLevelAll;

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.    
    
    CanaryManager.shared.baseURL = @"http://47.96.176.109";
    CanaryManager.shared.appSecret = @"82e439d7968b7c366e24a41d7f53f47d";
    CanaryManager.shared.deviceId = UIDevice.currentDevice.identifierForVendor.UUIDString;
    [DDLog.sharedInstance addLogger:CanaryTTYLogger.new];
    [DDLog.sharedInstance addLogger:DDTTYLogger.sharedInstance];
    DDTTYLogger.sharedInstance.logFormatter = LoggerFormat.new;
    [CanaryManager.shared startLoggerWithDomain:nil customProfile:^NSDictionary<NSString *,id> * _Nonnull{
        return @{};
    }];
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
