//
//  Father.h
//  WCT设计模式-责任链模式
//
//  Created by wct on 2020/12/16.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@class Son,Mon;

@interface Father : Person

/// 定义一些能实现需求的人：有多少列举多少
@property (nonatomic, weak) Son *son;
@property (nonatomic, weak) Mon *wifi;

- (BOOL)go:(NSString *)str;

@end

NS_ASSUME_NONNULL_END
