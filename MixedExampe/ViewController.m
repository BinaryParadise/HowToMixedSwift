//
//  ViewController.m
//  MixedExampe
//
//  Created by Rake Yang on 2021/11/4.
//

#import "ViewController.h"
#import "MixedExampe-Swift.h"
@import PureOCLib;
@import PureSwiftLib;
@import MixedLib;

static DDLogLevel ddLogLevel = DDLogLevelAll;

@interface ViewController ()

@property (nonatomic, assign, readonly) NSInteger t;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onClick:(id)sender {
    
    DDLogError(@"混编库");
    DDLogWarn(@"纯oc库");
    DDLogDebug(@"纯swift库");
    DDLogInfo(@"================================================================================================");
    // 项目中使用swift
    [[[HelloWorld alloc] init] hello:@"项目中oc使用swift"];
    
    // 使用纯OC库
    [PureOCLibVersion ver:@"项目中oc使用纯OC库"];
    
    // 使用纯Swift库
    [PureSwiftVersion ver:@"项目中oc使用纯Swift库"];
    //TODO: [PureSwiftVersion base64test];
    
    
    // 使用混编库中的OC
    [MixedOCVersion ver:@"项目中oc使用混编库oc"];
    
    // 使用混编库中的swift
    [MixedSwiftVersion ver:@"项目中oc使用混编库swift"];
}

@end
