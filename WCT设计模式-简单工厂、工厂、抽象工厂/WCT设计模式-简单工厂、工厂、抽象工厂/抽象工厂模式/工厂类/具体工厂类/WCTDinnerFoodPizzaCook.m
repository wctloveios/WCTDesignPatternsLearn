//
//  WCTDinnerFoodPizzaCook.m
//  WCT设计模式-简单工厂、工厂、抽象工厂
//
//  Created by wct on 2020/11/29.
//

#import "WCTDinnerFoodPizzaCook.h"
#import "WCTDinnerFoodPizza.h"
#import "WCTGuestWCT.h"
@implementation WCTDinnerFoodPizzaCook

- (WCTDinnerFood *)creatDinner {
    WCTDinnerFoodPizza *pizza = [[WCTDinnerFoodPizza alloc] init];
    return pizza;
}

- (WCTGuest *)creatGust {
    WCTGuestWCT *guest = [[WCTGuestWCT alloc] init];
    return guest;
}

@end
