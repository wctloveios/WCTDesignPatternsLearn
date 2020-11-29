//
//  WCTNoonFactory.m
//  WCT设计模式-简单工厂、工厂、抽象工厂
//
//  Created by wct on 2020/11/29.
//

#import "WCTNoonFactory.h"
#import "WCTNoonFood.h"

@implementation WCTNoonFactory

+ (WCTNoonFood *)customerBuySomthing {
    WCTNoonFood *food = [[WCTNoonFood alloc] init];
    return food;
}

@end
