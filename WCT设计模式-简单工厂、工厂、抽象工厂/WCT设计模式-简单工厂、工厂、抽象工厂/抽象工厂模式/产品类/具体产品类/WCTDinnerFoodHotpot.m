//
//  WCTDinnerFoodHotpot.m
//  WCT设计模式-简单工厂、工厂、抽象工厂
//
//  Created by wct on 2020/11/29.
//

#import "WCTDinnerFoodHotpot.h"

@implementation WCTDinnerFoodHotpot

- (instancetype)init {
    self = [super init];
    if (self) {
        self.name = @"火锅";
        self.pay = 300;
    }
    return self;
}

- (void)payForSomething {
    NSLog(@"抽象工厂模式：晚上吃了：%@，消费：%ld元 ",self.name, (long)self.pay);
}


@end
