//
//  AbstractKT.m
//  WCT设计模式-桥接模式
//
//  Created by wct on 2020/12/7.
//

#import "AbstractKT.h"

@implementation AbstractKT

- (void)switchPower {
    NSLog(@"空调 打开了");
}

- (void)switchPattern {
    NSLog(@"空调 切换模式！");
}

- (void)switchTemperature {
    NSLog(@"空调 调节温度");
}

@end
