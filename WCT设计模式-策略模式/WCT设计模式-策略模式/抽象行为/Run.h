//
//  Run.h
//  WCT设计模式-策略模式
//
//  Created by wct on 2020/12/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Run <NSObject>

- (void)walk;

- (void)run;

@end

NS_ASSUME_NONNULL_END
