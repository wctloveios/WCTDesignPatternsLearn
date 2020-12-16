//
//  Mon.h
//  WCT设计模式-责任链模式
//
//  Created by wct on 2020/12/16.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN
@class Father,Son;
@interface Mon : Person

/// 定义一些能实现需求的人：有多少列举多少
@property (nonatomic, weak) Father *husband;
@property (nonatomic, weak) Son *son;

- (BOOL)go:(NSString *)str;

@end

NS_ASSUME_NONNULL_END
