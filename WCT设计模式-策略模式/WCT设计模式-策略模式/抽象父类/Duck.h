//
//  Duck.h
//  WCT设计模式-策略模式
//
//  Created by wct on 2020/12/18.
//

#import <Foundation/Foundation.h>

#import "Fly.h"
#import "Run.h"

NS_ASSUME_NONNULL_BEGIN

@interface Duck : NSObject

@property (nonatomic, strong) id<Fly> flyBehavior;
@property (nonatomic, strong) id<Run> runBehavior;

- (void)performFly;
- (void)performSlide;

- (void)performRun;
- (void)performWalk;


@end

NS_ASSUME_NONNULL_END
