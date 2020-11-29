//
//  WCTNoonFood.m
//  WCT设计模式-简单工厂、工厂、抽象工厂
//
//  Created by wct on 2020/11/29.
//

#import "WCTNoonFood.h"

@implementation WCTNoonFood

- (void)payForSomething {
    NSLog(@"工厂模式：早上买了：%@，消费：%ld元 ",self.name, (long)self.pay);
}


@end
