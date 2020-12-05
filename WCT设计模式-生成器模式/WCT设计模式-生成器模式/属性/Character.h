//
//  Character.h
//  WCT设计模式-生成器模式
//
//  Created by wct on 2020/12/5.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Character : NSObject

/*
 1、charater本身仅仅只是一个Model，它本身并不能按照规则来变动自身的数值
 2、他提供的是产品具有的各种基本属性，每个属性的不同，提供出去的产品就会存在差异
 3、这就是我们要的，能够动态调整不同的属性值，给到客户一个他想要的产品
*/

// 攻击力
@property (nonatomic, assign) NSInteger protection;
// 防御力
@property (nonatomic, assign) NSInteger power;
// 力量
@property (nonatomic, assign) NSInteger strength;
// 耐力
@property (nonatomic, assign) NSInteger stamina;
// 智力
@property (nonatomic, assign) NSInteger intelligence;
// 敏捷
@property (nonatomic, assign) NSInteger agility;

///.... 还有一系列的属性：攻击距离....

@end

NS_ASSUME_NONNULL_END
