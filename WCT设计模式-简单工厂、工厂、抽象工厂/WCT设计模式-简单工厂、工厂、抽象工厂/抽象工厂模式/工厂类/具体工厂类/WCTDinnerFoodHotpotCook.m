//
//  WCTDinnerFoodHotpotCook.m
//  WCT设计模式-简单工厂、工厂、抽象工厂
//
//  Created by wct on 2020/11/29.
//

#import "WCTDinnerFoodHotpotCook.h"
#import "WCTDinnerFoodHotpot.h"
#import "WCTGuestLJ.h"
@implementation WCTDinnerFoodHotpotCook

- (WCTDinnerFood *)creatDinner {
    WCTDinnerFoodHotpot *hotpot = [[WCTDinnerFoodHotpot alloc] init];
    return hotpot;
}

- (WCTGuest *)creatGust {
    WCTGuestLJ *guest = [[WCTGuestLJ alloc] init];
    return guest;
}

@end
