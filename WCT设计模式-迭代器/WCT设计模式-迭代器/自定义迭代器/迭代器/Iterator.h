//
//  Iterator.h
//  WCT设计模式-迭代器
//
//  Created by wct on 2020/12/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IteratorProtocol <NSObject>
 
@optional
-(Boolean)hasNext;
 
@optional
-(id)next;
 
@end

@interface Iterator : NSObject<IteratorProtocol>


@end

NS_ASSUME_NONNULL_END
