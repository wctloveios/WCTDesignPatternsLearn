//
//  WCTNewManager.m
//  WCT设计模式-单例模式
//
//  Created by wct on 2020/12/5.
//

#import "WCTNewManager.h"

static WCTNewManager *instance = nil;

@implementation WCTNewManager

+ (instancetype )shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (void)test {
    NSLog(@"现在iOS开发 单例使用！");
}

@end
