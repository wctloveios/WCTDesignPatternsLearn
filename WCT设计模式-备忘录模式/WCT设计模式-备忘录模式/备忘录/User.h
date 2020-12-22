//
//  User.h
//  WCT设计模式-备忘录模式
//
//  Created by wct on 2020/12/22.
//

#import <Foundation/Foundation.h>
#import "Man.h"

NS_ASSUME_NONNULL_BEGIN

@interface User : NSObject

/// 示例属性 -- 姓名
@property (nonatomic, strong) NSString *name;
/// 示例属性 -- 年龄
@property (nonatomic, assign) NSInteger age;
/// 示例属性 -- 身高
@property (nonatomic, assign) NSInteger height;

/**
 保存备忘录
 */
- (Man *)saveState;

/**
 从备忘录中恢复
 */
- (void)recoverStateFromMan:(Man *)man;

@end

NS_ASSUME_NONNULL_END
