//
//  AbstractControl.h
//  WCT设计模式-桥接模式
//
//  Created by wct on 2020/12/7.
//

#import <Foundation/Foundation.h>

#import "KTProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface AbstractControl : NSObject

/// 准守遥控器规范的具体遥控器
@property (nonatomic, weak) id<KTProtocol> ktProtocol;

- (void)detectKTcommand;

/// 这边具体增加各种contol（遥控器）相关其他操作，不会影响到KT（空调的操作）
/// ......

@end

NS_ASSUME_NONNULL_END
