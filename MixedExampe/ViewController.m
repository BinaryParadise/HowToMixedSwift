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

@interface ViewController ()

@property (nonatomic, assign, readonly) NSInteger t;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 项目中使用swift
    [[[HelloWorld alloc] init] hello];
    
    // 使用纯OC库
    NSLog(@"%@", [PureOCLibVersion ver]);
    
    //使用纯Swift库
    NSLog(@"%@", [PureSwiftVersion ver]);
}


@end
