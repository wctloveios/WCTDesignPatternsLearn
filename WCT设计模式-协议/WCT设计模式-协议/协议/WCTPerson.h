//
//  WCTPerson.h
//  WCT设计模式-协议
//
//  Created by wct on 2020/12/22.
//

#import <Foundation/Foundation.h>
#import "WCTDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface WCTPerson : NSObject

@property (nonatomic, weak) id<WCTDelegate> delegate;

- (void)doSport;

@end

NS_ASSUME_NONNULL_END
