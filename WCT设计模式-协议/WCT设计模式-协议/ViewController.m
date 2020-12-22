//
//  ViewController.m
//  WCT设计模式-协议
//
//  Created by wct on 2020/12/22.
//

#import "ViewController.h"
#import "WCTPerson.h"
#import "WCTDelegate.h"

@interface ViewController ()<WCTDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    WCTPerson *person = [[WCTPerson alloc] init];
    person.delegate = self;
    [person doSport];
}

- (void)sport {
    NSLog(@"做运动了");
}

@end
