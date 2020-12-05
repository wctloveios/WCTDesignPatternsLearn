//
//  CharacterCreator.m
//  WCT设计模式-生成器模式
//
//  Created by wct on 2020/12/5.
//

#import "CharacterCreator.h"
#import "Character.h"
#import "Profession.h"

@implementation CharacterCreator

- (Character *)createWowenPlayerWithProfession:(Profession *)profession {
    
    return [[[[[profession  buildNewCharacter]
                            buildStrength:20]
                            buildStamina:20]
                            buildIntelligence:30]
                            buildAgility:30].character;
    
}


- (Character *)createManPlayerWithProfession:(Profession *)profession {
    
    
    return [[[[[profession  buildNewCharacter]
                            buildStrength:30]
                            buildStamina:30]
                            buildIntelligence:20]
                            buildAgility:20].character;
    
}

@end
