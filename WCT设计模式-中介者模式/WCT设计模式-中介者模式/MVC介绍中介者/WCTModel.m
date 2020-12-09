//
//  WCTModel.m
//  WCT设计模式-中介者模式
//
//  Created by wct on 2020/12/9.
//

#import "WCTModel.h"

@implementation WCTModel

- (id)copyWithZone:(NSZone *)zone {
    WCTModel *model = [[WCTModel alloc] init];
    model.name = [_name copy];
    model.phone = [_phone copy];
    return model;
}

@end
