//
//  UserControl.h
//  WCT设计模式-桥接模式
//
//  Created by wct on 2020/12/7.
//

#import "AbstractControl.h"

NS_ASSUME_NONNULL_BEGIN

@interface UserControl : AbstractControl

- (void)detectKTcommand;

@end

NS_ASSUME_NONNULL_END
