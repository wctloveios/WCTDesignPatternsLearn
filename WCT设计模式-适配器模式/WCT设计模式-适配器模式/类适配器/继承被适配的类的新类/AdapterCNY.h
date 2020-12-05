//
//  AdapterCNY.h
//  WCT设计模式-适配器模式
//
//  Created by wct on 2020/12/5.
//

#import "AdapterUSD.h"
#import "TargetCNYProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface AdapterCNY : AdapterUSD<TargetCNYProtocol>

@end

NS_ASSUME_NONNULL_END
