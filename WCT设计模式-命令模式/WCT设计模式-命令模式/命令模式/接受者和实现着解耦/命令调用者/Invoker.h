//
//  Invoker.h
//  WCT设计模式-命令模式
//
//  Created by wct on 2020/12/19.
//

#import <Foundation/Foundation.h>
#import "InvokerProtocol.h"


NS_ASSUME_NONNULL_BEGIN

@interface Invoker : NSObject


+ (instancetype)shareInstance;

// 其实我们可以在不做处理的情况下 禁止外部调用岂不是更简单 个人感觉该方法也很不错而且一些成熟的第三方中的单例中也有使用该方法的
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;
- (id)copy NS_UNAVAILABLE; // 没有遵循协议可以不写
- (id)mutableCopy NS_UNAVAILABLE; // 没有遵循协议可以不写

/**
 *  添加指令操作
 *
 *  @param command 指令
 */
- (void)addExcute:(id<InvokerProtocol>)command;

/**
 *  回退操作
 */
-(void)rollBack;

@end

NS_ASSUME_NONNULL_END
