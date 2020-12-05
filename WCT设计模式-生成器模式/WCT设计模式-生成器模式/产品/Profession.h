//
//  Profession.h
//  WCT设计模式-生成器模式
//
//  Created by wct on 2020/12/5.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Character;

@interface Profession : NSObject

/**
 最后所生成的角色（Character）
 */
@property (nonatomic, strong, readonly) Character *character;

/**
 初始化并且创建一个无任何属性的默认职业（如果想要更加复杂，区分男女之类的，可以集合其他设计模式，去扩展）
 */
- (Profession *)buildNewCharacter;

@end

/// 提供扩展方法，可以更改属性值
@interface Profession (Attribute)

- (Profession *)buildStrength:(NSInteger)strength;
- (Profession *)buildStamina:(NSInteger)stamina;
- (Profession *)buildIntelligence:(NSInteger)intelligence;
- (Profession *)buildAgility:(NSInteger)agility;

@end

NS_ASSUME_NONNULL_END
