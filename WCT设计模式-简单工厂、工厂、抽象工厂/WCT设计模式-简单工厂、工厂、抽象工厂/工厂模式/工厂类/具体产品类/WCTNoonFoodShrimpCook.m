//
//  WCTNoonFoodShrimpCook.m
//  WCT设计模式-简单工厂、工厂、抽象工厂
//
//  Created by wct on 2020/11/29.
//

#import "WCTNoonFoodShrimpCook.h"
#import "WCTNoonFoodShrimp.h"

@implementation WCTNoonFoodShrimpCook

+ (WCTNoonFood *)customerBuySomthing {
    WCTNoonFoodShrimp *food = [[WCTNoonFoodShrimp alloc] init];
    return food;
}

@end
