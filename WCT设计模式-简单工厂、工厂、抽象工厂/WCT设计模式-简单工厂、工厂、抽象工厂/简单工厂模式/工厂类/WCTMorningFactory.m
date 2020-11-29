//
//  WCTMorningFactory.m
//  WCT设计模式-简单工厂、工厂、抽象工厂
//
//  Created by wct on 2020/11/29.
//

#import "WCTMorningFactory.h"

#import "WCTMorningFoodBaoZi.h"
#import "WCTMorningFoodDouJiang.h"

@implementation WCTMorningFactory

- (WCTMorningFood *)customerBuySomthingWithType:(WCTMorningFoodType)type {
    
    WCTMorningFood *food;
    switch (type) {
        case WCTMorningFoodTypeBaoZi:
            food = [[WCTMorningFoodBaoZi alloc] init];
            break;
        case WCTMorningFoodTypeDouJiang:
            food = [[WCTMorningFoodDouJiang alloc] init];
            break;
        default:
            return nil;
            break;
    }
    return food;
}

@end
