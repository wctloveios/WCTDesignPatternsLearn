//
//  LighterCommand.m
//  WCT设计模式-命令模式
//
//  Created by wct on 2020/12/19.
//

#import "LighterCommand.h"

#import "Receiver.h"
@interface LighterCommand ()

/** 接受者 */
@property (nonatomic,strong)Receiver *receiver;

/** 数值 */
@property (nonatomic,assign)CGFloat paramter;
@end

@implementation LighterCommand


- (instancetype)initWithReceiver:(Receiver*)receiver withParamter:(CGFloat)paramter
{
    self = [super init];
    if (self) {
        self.receiver = receiver;
        self.paramter = paramter;
    }
    return self;
}

/**
 *  命令的执行 思考一下，命令怎么执行让任务实现？
 *
 */
- (void)excute{
    [self.receiver makeViewLighter:self.paramter];
}

/**
 *  撤销命令
 */
- (void)rollBackExcute{
    [self.receiver makeViewDarker:self.paramter];
}

@end
