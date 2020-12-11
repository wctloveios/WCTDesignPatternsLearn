//
//  NimoComponentVisitor.h
//  WCT设计模式-访问者模式
//
//  Created by wct on 2020/12/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class NimoEngine, NimoWheel;
@class NimoCar;
@protocol NimoComponentVisitor <NSObject>
/// 维修协议
- (void)visitEngine:(NimoEngine *)engine;        // 可以访问引擎
- (void)visitWheel:(NimoWheel *)wheel;        // 可以访问轮胎

// 试驾协议
- (void)visitCar:(NimoCar *)car;     //可以访问汽车

/// 协议不一定都要用，可以可选，用@optional 修饰下
 
@end

NS_ASSUME_NONNULL_END
