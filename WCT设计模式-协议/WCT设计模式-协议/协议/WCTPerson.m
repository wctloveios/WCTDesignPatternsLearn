//
//  WCTPerson.m
//  WCT设计模式-协议
//
//  Created by wct on 2020/12/22.
//

#import "WCTPerson.h"

@implementation WCTPerson

- (void)doSport {
    if ([self.delegate respondsToSelector:@selector(sport)]) {
        [self.delegate sport];
    }
}

@end
