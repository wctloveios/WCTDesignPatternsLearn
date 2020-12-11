//
//  NimoWheel.h
//  WCT设计模式-访问者模式
//
//  Created by wct on 2020/12/11.
//

#import <Foundation/Foundation.h>
#import "NimoComponentVisitor.h"

NS_ASSUME_NONNULL_BEGIN

@interface NimoWheel : NSObject

@property (nonatomic, assign) float diameter; //车轮直径 

- (void)acceptComponentVisitor:(id<NimoComponentVisitor>) visitor; //引擎遵守访问者协议

@end

NS_ASSUME_NONNULL_END
