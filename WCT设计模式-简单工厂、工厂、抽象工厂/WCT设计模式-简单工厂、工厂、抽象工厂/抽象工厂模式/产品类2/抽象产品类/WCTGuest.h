//
//  WCTGuest.h
//  WCT设计模式-简单工厂、工厂、抽象工厂
//
//  Created by wct on 2020/11/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WCTGuest : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSString *food;

- (void)eatSomething;

@end

NS_ASSUME_NONNULL_END
