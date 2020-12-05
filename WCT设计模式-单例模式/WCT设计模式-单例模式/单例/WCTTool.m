//
//  WCTTool.m
//  WCT设计模式-单例模式
//
//  Created by wct on 2020/12/5.
//

#import "WCTTool.h"

@implementation WCTTool

WCTShareInstanceM(WCTTool)

- (void)test {
    NSLog(@"宏定义 单例使用！");
}

@end
