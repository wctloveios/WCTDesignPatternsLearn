//
//  ObjectAdapter.m
//  WCT设计模式-适配器模式
//
//  Created by wct on 2020/12/5.
//

#import "ObjectAdapter.h"

@interface ObjectAdapter ()

@property (nonatomic, strong) AdapterFooterball *footerball;

@end


@implementation ObjectAdapter

- (instancetype)initWithAdapter:(AdapterFooterball *)adapterFooterball {
    self = [super init];
    if (self) {
        _footerball = adapterFooterball;
    }
    return self;
}

- (NSString *)goBasketball {
    return [NSString stringWithFormat:@"%@变成打篮球（因为我们换了一个体育老师）",[self.footerball goPE]];
}

@end
