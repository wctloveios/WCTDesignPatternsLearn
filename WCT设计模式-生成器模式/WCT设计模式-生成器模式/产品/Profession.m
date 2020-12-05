//
//  Profession.m
//  WCT设计模式-生成器模式
//
//  Created by wct on 2020/12/5.
//

#import "Profession.h"
#import "Character.h"

@interface Profession ()

@property (nonatomic, strong) Character *character;

@end

@implementation Profession

/*
 1、.m的实现很简单就是简单的赋值，并且返回本身。(因为并不知道具体职业所以仅仅是赋值而已)
 2、返回本身是为了链式编程，当然也可以直接去掉返回。
 */

- (Profession *)buildNewCharacter {
    
    self.character = nil;
    self.character = [[Character alloc] init];
    
    return self;
}

- (Profession *)buildStrength:(NSInteger)strength {
    
    self.character.strength = strength;
    
    return self;
}

- (Profession *)buildStamina:(NSInteger)stamina {
    
    self.character.stamina = stamina;
    
    return self;
}

- (Profession *)buildIntelligence:(NSInteger)intelligence {
    
    self.character.intelligence = intelligence;
    
    return self;
}

- (Profession *)buildAgility:(NSInteger)agility {
    
    self.character.agility = agility;
    
    return self;
}

@end
