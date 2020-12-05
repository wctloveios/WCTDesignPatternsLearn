//
//  WCTOldManager.h
//  WCT设计模式-单例模式
//
//  Created by wct on 2020/12/5.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WCTOldManager : NSObject

+ (instancetype )shareInstance;

- (void)test;

@end

NS_ASSUME_NONNULL_END
