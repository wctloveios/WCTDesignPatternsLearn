
//
//  Invoker.m
//  WCT设计模式-命令模式
//
//  Created by wct on 2020/12/19.
//

#import "Invoker.h"

@interface Invoker ()

/** 存储指令对象 */
@property (nonatomic,strong)NSMutableArray *commandArray;

@end

@implementation Invoker

//+ (instancetype)shareInstance {
//    static Invoker *_sharedInvoker = nil;
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        //不能再使用alloc方法
//        //因为已经重写了allocWithZone方法，所以这里要调用父类的分配空间的方法
//        _sharedSingleton = [[super allocWithZone:NULL] init];
//    });
//    return _sharedSingleton;
//}
//
//// 防止外部调用alloc 或者 new
//+ (instancetype)allocWithZone:(struct _NSZone *)zone {
//    return [Invoker shareInstance];
//}
//
//// 防止外部调用copy
//- (id)copyWithZone:(nullable NSZone *)zone {
//    return [Invoker shareInstance];
//}
//
//// 防止外部调用mutableCopy
//- (id)mutableCopyWithZone:(nullable NSZone *)zone {
//    return [Invoker shareInstance];
//}

// 跟上面的方法实现有一点不同
+ (instancetype)shareInstance {
    static Invoker *_sharedInvoker = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
          // 要使用self来调用
        _sharedInvoker = [[self alloc] init];
    });
    return _sharedInvoker;
}

-(NSMutableArray*)commandArray{
    if (_commandArray == nil) {
        NSLog(@"创建了一次NSMutableArray对象");
        _commandArray = [NSMutableArray array];
    }
    return _commandArray;
}

- (void)addExcute:(id<InvokerProtocol>)command{
    [command excute];
    NSLog(@"开始执行了");
    [self.commandArray addObject:command];
    NSLog(@"执行结束了");
}


-(void)rollBack{
    NSLog(@"撤销操作");
    if (self.commandArray.count) {
        [self.commandArray.lastObject rollBackExcute];
        [self.commandArray removeLastObject];
    }
}
@end
