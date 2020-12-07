//
//  AbstractKTB.m
//  WCT设计模式-桥接模式
//
//  Created by wct on 2020/12/7.
//

#import "AbstractKTB.h"

@implementation AbstractKTB

- (void)switchPower {
    NSLog(@"空调B 打开了");
}

- (void)switchPattern {
    NSLog(@"空调B 切换模式！");
}

- (void)switchTemperature {
    NSLog(@"空调B 调节温度");
}

@end
