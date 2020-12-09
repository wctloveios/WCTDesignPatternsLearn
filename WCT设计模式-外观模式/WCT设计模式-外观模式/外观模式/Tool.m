//
//  Tool.m
//  WCT设计模式-外观模式
//
//  Created by wct on 2020/12/9.
//

#import "Tool.h"

@implementation Tool


+ (void)runing {
    NSLog(@"里面处理逻辑：比如这边去实现和谁一起跑步，跑了多久，在哪里跑的！（也可以用参数传进来设置");
}

+ (void)cooking {
    NSLog(@"里面处理逻辑：比如这边去实现做了什么菜，哪几种，荤素怎么搭配的1（也可以用参数传进来设置");
}

+ (void)shopping{
    NSLog(@"里面处理逻辑：比如这边去实现买了什么东西，哪里逛街的，和谁一起（也可以用参数传进来设置");
}

+ (void)sleeping{
    NSLog(@"里面处理逻辑：比如这边去实现谁在谁家了？和谁一起？开了空调没有等等（也可以用参数传进来设置");
}


@end
