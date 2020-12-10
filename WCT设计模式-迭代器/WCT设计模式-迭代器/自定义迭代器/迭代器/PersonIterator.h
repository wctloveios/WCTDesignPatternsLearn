//
//  PersonIterator.h
//  WCT设计模式-迭代器
//
//  Created by wct on 2020/12/10.
//

#import "Iterator.h"

NS_ASSUME_NONNULL_BEGIN

@interface PersonIterator : Iterator

-(instancetype)initWithData:(NSArray *)data;

@end

NS_ASSUME_NONNULL_END
