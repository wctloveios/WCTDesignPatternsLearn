//
//  DarkerCommand.h
//  WCT设计模式-命令模式
//
//  Created by wct on 2020/12/19.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Invokerprotocol.h"

@class Receiver;

NS_ASSUME_NONNULL_BEGIN

@interface DarkerCommand : NSObject<InvokerProtocol>

- (instancetype)initWithReceiver:(Receiver*)receiver withParamter:(CGFloat)paramter;

@end

NS_ASSUME_NONNULL_END
