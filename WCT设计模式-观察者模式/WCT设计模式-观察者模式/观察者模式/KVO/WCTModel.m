//
//  WCTModel.m
//  WCT设计模式-观察者模式
//
//  Created by wct on 2020/12/9.
//

#import "WCTModel.h"

@implementation WCTModel

- (id)copyWithZone:(NSZone *)zone {
    WCTModel *model = [[WCTModel alloc] init];
    model.name = [_name copy];
    model.age = _age;
    return model;
}

@end
