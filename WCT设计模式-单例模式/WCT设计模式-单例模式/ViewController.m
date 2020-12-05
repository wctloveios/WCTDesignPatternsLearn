//
//  ViewController.m
//  WCT设计模式-单例模式
//
//  Created by wct on 2020/12/5.
//

#import "ViewController.h"
#import "WCTOldManager.h"
#import "WCTNewManager.h"
#import "WCTTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [[WCTNewManager shareInstance] test];
    [[WCTOldManager shareInstance] test];
    [[WCTTool shareWCTTool] test];
}


@end
