//
//  WCTMorningFactory.h
//  WCT设计模式-简单工厂、工厂、抽象工厂
//
//  Created by wct on 2020/11/29.
//

#import <Foundation/Foundation.h>
#import "WCTMorningFood.h"

typedef NS_ENUM(NSInteger, WCTMorningFoodType) {
    WCTMorningFoodTypeBaoZi,
    WCTMorningFoodTypeDouJiang,
};

NS_ASSUME_NONNULL_BEGIN

@interface WCTMorningFactory : NSObject

- (WCTMorningFood *)customerBuySomthingWithType:(WCTMorningFoodType)type;

@end

NS_ASSUME_NONNULL_END
