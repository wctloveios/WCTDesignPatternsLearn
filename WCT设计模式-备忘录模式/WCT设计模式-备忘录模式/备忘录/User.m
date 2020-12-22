//
//  User.m
//  WCT设计模式-备忘录模式
//
//  Created by wct on 2020/12/22.
//

#import "User.h"

@implementation User

/**
 保存备忘录
 */
- (Man *)saveState {
    Man *m = [Man new];
    m.age = _age;
    m.height = _height;
    return m;
}

/**
 从备忘录中恢复
 */
- (void)recoverStateFromMan:(Man *)man {
    _age = man.age;
    _height = man.height;
}

@end
