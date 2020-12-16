//
//  Person.h
//  WCT设计模式-责任链模式
//
//  Created by wct on 2020/12/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic, copy) NSString *position;     // 不能决定的，能走到的位置
@property (nonatomic, strong) NSArray *decideArray; // 自己能做决定的事情

- (void)print:(NSString *)str;

@end

NS_ASSUME_NONNULL_END
