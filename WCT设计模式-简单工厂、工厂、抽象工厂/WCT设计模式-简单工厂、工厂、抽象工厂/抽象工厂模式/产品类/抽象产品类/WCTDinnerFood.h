//
//  WCTDinnerFood.h
//  WCT设计模式-简单工厂、工厂、抽象工厂
//
//  Created by wct on 2020/11/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WCTDinnerFood : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger pay;

- (void)payForSomething;

@end

NS_ASSUME_NONNULL_END
