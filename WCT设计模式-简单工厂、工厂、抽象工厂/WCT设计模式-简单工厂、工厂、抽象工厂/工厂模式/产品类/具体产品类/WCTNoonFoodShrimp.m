//
//  WCTNoonFoodShrimp.m
//  WCT设计模式-简单工厂、工厂、抽象工厂
//
//  Created by wct on 2020/11/29.
//

#import "WCTNoonFoodShrimp.h"

@implementation WCTNoonFoodShrimp

- (instancetype)init {
    self = [super init];
    if (self) {
        self.name = @"虾";
        self.pay = 30;
    }
    return self;
}

- (void)payForSomething {
    NSLog(@"工厂模式：中午吃了：%@，消费：%ld元 ",self.name, (long)self.pay);
}

@end
