//
//  WCTDinnerFactory.m
//  WCT设计模式-简单工厂、工厂、抽象工厂
//
//  Created by wct on 2020/11/29.
//

#import "WCTDinnerFactory.h"
#import "WCTDinnerFoodHotpotCook.h"
#import "WCTDinnerFoodPizzaCook.h"

@implementation WCTDinnerFactory

+ (instancetype)factoryWithType:(WCTDinnerFoodType)type {
    WCTDinnerFactory *factory;
    switch (type) {
        case WCTDinnerFoodTypePizza:
            factory = [[WCTDinnerFoodPizzaCook alloc] init];
            break;
        case WCTDinnerFoodTypeHotpot:
            factory = [[WCTDinnerFoodHotpotCook alloc] init];
            break;
        default:
            return nil;
            break;
    }
    return factory;
}
- (WCTDinnerFood *)creatDinner {
    return nil;
}

- (WCTGuest *)creatGust {
    return nil;
}

@end
