//
//  WCTCook.m
//  WCT设计模式-模板方法
//
//  Created by wct on 2020/12/18.
//

#import "WCTCook.h"

@implementation WCTCook

- (void)buy {
    NSLog(@"买食材");
}

- (void)prepare {
    NSLog(@"准备食材");
}

- (void)shangCai {
    NSLog(@"上菜");
}

@end
