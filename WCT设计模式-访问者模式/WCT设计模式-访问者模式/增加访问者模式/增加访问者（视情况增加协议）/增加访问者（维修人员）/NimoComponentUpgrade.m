//
//  NimoComponentUpgrade.m
//  WCT设计模式-访问者模式
//
//  Created by wct on 2020/12/11.
//
#import "NimoComponentUpgrade.h"
    
@implementation NimoComponentUpgrade

- (void) visitEngine:(NimoEngine *) engine{
    NSLog(@"我是升级人员，正在对引擎<%@>进行升级", engine);
}
    
- (void) visitWheel:(NimoWheel *) wheel{
    NSLog(@"我是升级人员，正在对车轮<%@>进行升级", wheel);
}

- (void) visitCar:(NimoCar *)car {
    NSLog(@"我是升级人员，只能开车进维修厂");
}

@end
