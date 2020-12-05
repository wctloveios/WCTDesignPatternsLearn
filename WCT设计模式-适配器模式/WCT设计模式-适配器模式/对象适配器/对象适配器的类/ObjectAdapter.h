//
//  ObjectAdapter.h
//  WCT设计模式-适配器模式
//
//  Created by wct on 2020/12/5.
//

#import <Foundation/Foundation.h>
#import "TargetBasketballProtocol.h"
#import "AdapterFooterball.h"

NS_ASSUME_NONNULL_BEGIN

@interface ObjectAdapter : NSObject<TargetBasketballProtocol>

- (instancetype)initWithAdapter:(AdapterFooterball *)adapterFooterball;

@end

NS_ASSUME_NONNULL_END
