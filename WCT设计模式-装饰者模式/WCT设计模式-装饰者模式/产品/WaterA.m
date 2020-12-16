//
//  WaterA.m
//  WCT设计模式-装饰者模式
//
//  Created by wct on 2020/12/16.
//

#import "WaterA.h"

@interface WaterA ()

@property (nonatomic, strong) NSString *name;

@end

@implementation WaterA

- (instancetype)init {
    if (self = [super init]) {
        _name = @"美式咖啡：";
    }
    
    return self;
}

- (NSString *)getName {
    return  _name;
}

- (float)cost {
    return 3.0;
}

@end
