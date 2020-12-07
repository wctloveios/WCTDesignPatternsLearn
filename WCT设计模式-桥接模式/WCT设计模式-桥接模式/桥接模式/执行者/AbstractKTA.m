//
//  AbstractKTA.m
//  WCT设计模式-桥接模式
//
//  Created by wct on 2020/12/7.
//

#import "AbstractKTA.h"

@implementation AbstractKTA

- (void)switchPower {
    NSLog(@"空调A 打开了");
}

- (void)switchPattern {
    NSLog(@"空调A 切换模式！");
}

- (void)switchTemperature {
    NSLog(@"空调A 调节温度");
}

@end
