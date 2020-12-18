//
//  Duck.m
//  WCT设计模式-策略模式
//
//  Created by wct on 2020/12/18.
//

#import "Duck.h"

@implementation Duck

- (void)performFly {
    [self.flyBehavior heightFly];
}

- (void)performSlide {
    [self.flyBehavior slideFly];
}

- (void)performRun {
    [self.runBehavior run];
}

- (void)performWalk {
    [self.runBehavior walk];
}


@end
