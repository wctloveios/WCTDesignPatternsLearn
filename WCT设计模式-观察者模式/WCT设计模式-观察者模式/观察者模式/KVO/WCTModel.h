//
//  WCTModel.h
//  WCT设计模式-观察者模式
//
//  Created by wct on 2020/12/9.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WCTModel : NSObject<NSCopying>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger age;

@end

NS_ASSUME_NONNULL_END
