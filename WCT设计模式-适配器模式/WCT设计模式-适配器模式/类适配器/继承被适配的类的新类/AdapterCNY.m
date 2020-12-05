//
//  AdapterCNY.m
//  WCT设计模式-适配器模式
//
//  Created by wct on 2020/12/5.
//

#import "AdapterCNY.h"

@implementation AdapterCNY

- (float)getCNYWithUSD {
    return [self getUSD] * 6.61;
}

@end
