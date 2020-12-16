//
//  Beverage.h
//  WCT设计模式-装饰者模式
//
//  Created by wct on 2020/12/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Beverage <NSObject>

- (NSString *)getName;

- (float)cost;

@end

NS_ASSUME_NONNULL_END
