//
//  WaterB.m
//  WCT设计模式-装饰者模式
//
//  Created by wct on 2020/12/16.
//

#import "WaterB.h"

@interface WaterB ()

@property (nonatomic, strong) NSString *name;

@end

@implementation WaterB

- (instancetype)init {
    if (self = [super init]) {
        _name = @"拿铁咖啡：";
    }
    
    return self;
}

- (NSString *)getName {
    return  _name;
}

- (float)cost {
    return 5.0;
}
@end
