//
//  WCTMorningFood.m
//  WCT设计模式-简单工厂、工厂、抽象工厂
//
//  Created by wct on 2020/11/29.
//

#import "WCTMorningFood.h"

@implementation WCTMorningFood

- (void)payForSomething {
    NSLog(@"简单模式：早上买了：%@，消费：%ld元 ",self.name, (long)self.pay);
}

@end
