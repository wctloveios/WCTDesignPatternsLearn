//
//  NimoCustromDriver.m
//  WCT设计模式-访问者模式
//
//  Created by wct on 2020/12/11.
//

#import "NimoCustromDriver.h"

@implementation NimoCustromDriver

- (void) visitEngine:(NimoEngine *) engine{
    NSLog(@"我是客户，只能看车外观，不能拆开看引擎");
}

- (void) visitWheel:(NimoWheel *) wheel{
    NSLog(@"我是客户，只能看车轮胎，不能替换升级");
}

- (void) visitCar:(NimoCar *)car {
    NSLog(@"我是客户，开到试驾区试试车");
}

@end
