//
//  YuanYangDuck.m
//  WCT设计模式-策略模式
//
//  Created by wct on 2020/12/18.
//

#import "YuanYangDuck.h"
#import "YuanYangFly.h"
#import "YuanYangRun.h"

@implementation YuanYangDuck

- (instancetype)init {
    if (self = [super init]) {
        self.flyBehavior = [[YuanYangFly alloc] init];
        self.runBehavior = [[YuanYangRun alloc] init];
        NSLog(@"我是鸳鸯");
    }
    return self;
}

@end
