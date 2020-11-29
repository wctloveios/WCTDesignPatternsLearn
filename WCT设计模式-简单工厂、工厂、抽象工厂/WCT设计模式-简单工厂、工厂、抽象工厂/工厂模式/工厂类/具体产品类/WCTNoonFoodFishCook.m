//
//  WCTNoonFoodFishCook.m
//  WCT设计模式-简单工厂、工厂、抽象工厂
//
//  Created by wct on 2020/11/29.
//

#import "WCTNoonFoodFishCook.h"
#import "WCTNoonFoodFish.h"
@implementation WCTNoonFoodFishCook

+ (WCTNoonFood *)customerBuySomthing {
    WCTNoonFoodFish *food = [[WCTNoonFoodFish alloc] init];
    return food;
}
@end
