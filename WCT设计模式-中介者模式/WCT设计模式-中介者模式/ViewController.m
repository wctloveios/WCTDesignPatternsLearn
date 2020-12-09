//
//  ViewController.m
//  WCT设计模式-中介者模式
//
//  Created by wct on 2020/12/9.
//

#import "ViewController.h"

#import "WCTViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self presentViewController:[WCTViewController new] animated:YES completion:nil];
}


@end
