//
//  NotifiViewController.m
//  WCT设计模式-观察者模式
//
//  Created by wct on 2020/12/9.
//

#import "NotifiViewController.h"

static NSString * const kDidReviceNification = @"didReviceNification";

@interface NotifiViewController ()

@end

@implementation NotifiViewController

- (void)dealloc {
    /// 移除监听
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /// 添加监听
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(priteLog:) name:kDidReviceNification object:nil];
}

// 处理监听逻辑
- (void)priteLog:(NSNotification *)info {
    NSLog(@"%@ - 收到了一条信息！",info.userInfo[@"time"]);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    /// 发送监听
    [[NSNotificationCenter defaultCenter] postNotificationName:kDidReviceNification object:self userInfo:@{@"time":[NSDate dateWithTimeIntervalSinceNow:0]}];
}

@end
