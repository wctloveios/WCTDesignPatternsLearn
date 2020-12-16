//
//  Son.h
//  WCT设计模式-责任链模式
//
//  Created by wct on 2020/12/16.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN
@class Father,Mon;
@interface Son : Person

/// 定义一些能实现需求的人：有多少列举多少
@property (nonatomic, weak) Father *father;
@property (nonatomic, weak) Mon *mon;

- (BOOL)go:(NSString *)str;

@end

NS_ASSUME_NONNULL_END
