//
//  KTProtocol.h
//  WCT设计模式-桥接模式
//
//  Created by wct on 2020/12/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol KTProtocol <NSObject>

/// 切换模式
- (void)switchPattern;

/// 调节温度
- (void)switchTemperature;

/// 电源开关
- (void)switchPower;


/// 这边具体增加各种KT（空调的）相关其他操作，不会影响到control（遥控器）：如果能够互相作用的，可以一起抽到内部统一实现
/// ......

@end

NS_ASSUME_NONNULL_END
