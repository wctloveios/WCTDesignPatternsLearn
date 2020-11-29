//
//  WCTGuestWCT.m
//  WCT设计模式-简单工厂、工厂、抽象工厂
//
//  Created by wct on 2020/11/29.
//

#import "WCTGuestWCT.h"

@implementation WCTGuestWCT

- (instancetype)init {
    self = [super init];
    if (self) {
        self.name = @"WCT";
        self.food = @"披萨";
    }
    return self;
}

- (void)eatSomething {
    NSLog(@"抽象工厂模式：%@ 晚上吃了：%@",self.name, self.food);
}

@end
