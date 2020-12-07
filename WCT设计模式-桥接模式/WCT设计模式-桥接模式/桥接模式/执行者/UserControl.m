//
//  UserControl.m
//  WCT设计模式-桥接模式
//
//  Created by wct on 2020/12/7.
//

#import "UserControl.h"

@implementation UserControl

- (void)detectKTcommand {
    [self.ktProtocol switchPower];
    [self.ktProtocol switchPattern];
    [self.ktProtocol switchTemperature];
}

@end
