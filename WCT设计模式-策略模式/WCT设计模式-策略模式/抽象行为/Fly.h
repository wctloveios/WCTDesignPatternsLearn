//
//  Fly.h
//  WCT设计模式-策略模式
//
//  Created by wct on 2020/12/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Fly <NSObject>

/// 高空飞行
- (void)heightFly;

/// 简单滑行
- (void)slideFly;

@end

NS_ASSUME_NONNULL_END
