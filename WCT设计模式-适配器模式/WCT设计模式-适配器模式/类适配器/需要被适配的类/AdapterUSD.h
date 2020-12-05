//
//  AdapterUSD.h
//  WCT设计模式-适配器模式
//
//  Created by wct on 2020/12/5.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdapterUSD : NSObject

// 获取默认100美元
- (float)getUSD;

@end

NS_ASSUME_NONNULL_END
