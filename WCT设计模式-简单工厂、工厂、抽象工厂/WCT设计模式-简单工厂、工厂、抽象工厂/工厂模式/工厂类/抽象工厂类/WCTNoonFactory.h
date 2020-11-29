//
//  WCTNoonFactory.h
//  WCT设计模式-简单工厂、工厂、抽象工厂
//
//  Created by wct on 2020/11/29.
//

#import <Foundation/Foundation.h>

@class WCTNoonFood;

NS_ASSUME_NONNULL_BEGIN

@interface WCTNoonFactory : NSObject

+ (WCTNoonFood *)customerBuySomthing;

// 工厂使用类方法和实例方法都可以
//- (WCTNoonFood *)customerBuySomthing;

@end

NS_ASSUME_NONNULL_END
