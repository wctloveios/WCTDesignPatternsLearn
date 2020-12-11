//
//  NimoCar.h
//  WCT设计模式-访问者模式
//
//  Created by wct on 2020/12/11.
//

#import <Foundation/Foundation.h>
#import "NimoComponentVisitor.h"

NS_ASSUME_NONNULL_BEGIN
@class NimoEngine, NimoWheel;

@interface NimoCar : NSObject

@property (nonatomic) NimoEngine *engine;
@property (nonatomic, readonly) NSArray *arrayOfWheels;
- (void)addWheel:(NimoWheel *)wheel atIndex:(NSUInteger) index;


- (void)acceptComponentVisitor:(id<NimoComponentVisitor>)visitor; //引擎遵守访问者协议

@end

NS_ASSUME_NONNULL_END
