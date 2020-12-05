//
//  Caster.m
//  WCT设计模式-生成器模式
//
//  Created by wct on 2020/12/5.
//

#import "Caster.h"
#import "Character.h"

@interface Caster ()

@end

@implementation Caster

/*
 1、种族决定了初始值（也就是 Profession 的buildNewCharacter）
 2、然后不同的初始值由于不同的职业作用（无职业也是一种职业），从而产生不同的角色
 3、我们最后通过修改初始值配置：增加或减少相关的属性值，然后引入不同的职业
 */

- (Profession *)buildStrength:(NSInteger)strength {
    
    [super buildStrength:strength];
    
    self.character.power += strength * 2;
    
    self.character.protection += strength * 2;
    
    return self;
}

- (Profession *)buildStamina:(NSInteger)stamina {
    
    [super buildStamina:stamina];
    
    self.character.power += stamina * 2;
    
    self.character.protection -= stamina * 1;
    
    return self;
}

- (Profession *)buildIntelligence:(NSInteger)intelligence {
    
    [super buildIntelligence:intelligence];
    
    self.character.power -= intelligence * 2;
    
    self.character.protection += intelligence * 2;
    
    return self;
}

- (Profession *)buildAgility:(NSInteger)agility {
    
    [super buildAgility:agility];
    
    self.character.power += agility * 1;
    
    self.character.protection -= agility * 1;
    
    return self;
}

@end
