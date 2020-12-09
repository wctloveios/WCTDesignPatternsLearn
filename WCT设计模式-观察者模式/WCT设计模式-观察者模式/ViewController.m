//
//  ViewController.m
//  WCT设计模式-观察者模式
//
//  Created by wct on 2020/12/9.
//

#import "ViewController.h"
#import "NotifiViewController.h"
#import "KVOViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self presentViewController:[NotifiViewController new] animated:YES completion:nil];
    [self presentViewController:[KVOViewController new] animated:YES completion:nil];
}

@end
