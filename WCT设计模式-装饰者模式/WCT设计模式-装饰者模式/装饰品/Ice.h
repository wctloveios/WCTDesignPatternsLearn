//
//  Ice.h
//  WCT设计模式-装饰者模式
//
//  Created by wct on 2020/12/16.
//

#import <Foundation/Foundation.h>
#import "Beverage.h"
NS_ASSUME_NONNULL_BEGIN

@interface Ice : NSObject<Beverage>

- (instancetype)initWithBeverage:(id<Beverage>)beverage;

@end

NS_ASSUME_NONNULL_END
