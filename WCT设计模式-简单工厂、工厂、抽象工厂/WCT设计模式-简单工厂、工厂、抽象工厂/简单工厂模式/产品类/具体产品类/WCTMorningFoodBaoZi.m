//
//  WCTMorningFoodBaoZi.m
//  WCT设计模式-简单工厂、工厂、抽象工厂
//
//  Created by wct on 2020/11/29.
//

#import "WCTMorningFoodBaoZi.h"

@implementation WCTMorningFoodBaoZi

- (instancetype)init {
    self = [super init];
    if (self) {
        self.name = @"包子";
        self.pay = 2;
    }
    return self;
}

- (void)payForSomething {
    NSLog(@"简单工厂模式：早上买了：%@，消费：%ld元 ",self.name, (long)self.pay);
}

@end
