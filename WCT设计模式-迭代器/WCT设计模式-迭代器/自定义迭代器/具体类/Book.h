//
//  Book.h
//  WCT设计模式-迭代器
//
//  Created by wct on 2020/12/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Book : NSObject<NSCopying>

@property (copy,nonatomic) NSString *bookName;
@property (assign,nonatomic) float price;

@end

NS_ASSUME_NONNULL_END
