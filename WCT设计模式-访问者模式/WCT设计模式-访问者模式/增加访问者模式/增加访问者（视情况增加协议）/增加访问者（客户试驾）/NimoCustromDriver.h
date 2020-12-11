//
//  NimoCustromDriver.h
//  WCT设计模式-访问者模式
//
//  Created by wct on 2020/12/11.
//

#import <Foundation/Foundation.h>
#import "NimoComponentVisitor.h"
NS_ASSUME_NONNULL_BEGIN

@interface NimoCustromDriver : NSObject<NimoComponentVisitor>

- (void) visitEngine:(NimoEngine *) engine;
- (void) visitWheel:(NimoWheel *) wheel;
- (void) visitCar:(NimoCar *)car;
@end

NS_ASSUME_NONNULL_END
