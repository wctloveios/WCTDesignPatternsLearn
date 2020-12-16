//
//  Mocha.m
//  WCT设计模式-装饰者模式
//
//  Created by wct on 2020/12/16.
//

#import "Mocha.h"

@interface Mocha ()

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) id<Beverage> beverage;

@end

@implementation Mocha

- (instancetype)initWithBeverage:(id<Beverage>)beverage {
    if (self = [super init]) {
        _name = @"Mocha";
        _beverage = beverage;
    }
    return self;
}

- (NSString *)getName {
    return [NSString stringWithFormat:@"%@ + %@", [_beverage getName], _name];
}

- (float)cost {
    return [_beverage cost] + 10.0;
}

@end
