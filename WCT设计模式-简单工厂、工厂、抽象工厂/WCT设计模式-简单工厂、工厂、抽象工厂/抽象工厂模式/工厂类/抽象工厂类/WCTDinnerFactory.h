//
//  WCTDinnerFactory.h
//  WCT设计模式-简单工厂、工厂、抽象工厂
//
//  Created by wct on 2020/11/29.
//

#import <Foundation/Foundation.h>

@class WCTDinnerFood;
@class WCTGuest;

typedef NS_ENUM(NSInteger, WCTDinnerFoodType) {
    WCTDinnerFoodTypePizza,
    WCTDinnerFoodTypeHotpot,
};

NS_ASSUME_NONNULL_BEGIN

@interface WCTDinnerFactory : NSObject

+ (instancetype)factoryWithType:(WCTDinnerFoodType)type;
- (WCTDinnerFood *)creatDinner;
- (WCTGuest *)creatGust;

// ..... 可以增加生产任何一种，工厂可以支持一种，也可以支持多种（工厂不支持的，可以新增工厂去支持）

@end

NS_ASSUME_NONNULL_END
