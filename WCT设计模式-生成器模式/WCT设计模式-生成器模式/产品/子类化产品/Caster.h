//
//  Caster.h
//  WCT设计模式-生成器模式
//
//  Created by wct on 2020/12/5.
//

#import "Profession.h"

NS_ASSUME_NONNULL_BEGIN

@interface Caster : Profession

@end

@interface Caster (Override)

- (Profession *)buildStrength:(NSInteger)strength;
- (Profession *)buildStamina:(NSInteger)stamina;
- (Profession *)buildIntelligence:(NSInteger)intelligence;
- (Profession *)buildAgility:(NSInteger)agility;

@end

NS_ASSUME_NONNULL_END
