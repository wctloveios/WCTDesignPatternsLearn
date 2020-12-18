//
//  DaYanDuck.m
//  WCT设计模式-策略模式
//
//  Created by wct on 2020/12/18.
//

#import "DaYanDuck.h"

#import "DaYanRun.h"
#import "DaYanFly.h"

@implementation DaYanDuck

- (instancetype)init {
    if (self = [super init]) {
        self.flyBehavior = [[DaYanFly alloc] init];
        self.runBehavior = [[DaYanRun alloc] init];
        NSLog(@"我是大雁");
    }
    return self;
}

@end
