//
//  BookLibrary.h
//  WCT设计模式-迭代器
//
//  Created by wct on 2020/12/10.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"

NS_ASSUME_NONNULL_BEGIN
@protocol BookLibraryProtocol <NSObject>

@optional

- (Iterator *)createIterator;

@end


@interface BookLibrary : NSObject<BookLibraryProtocol>

@end

NS_ASSUME_NONNULL_END
