//
//  CharacterCreator.h
//  WCT设计模式-生成器模式
//
//  Created by wct on 2020/12/5.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Character;
@class Profession;

@interface CharacterCreator : NSObject

/**
 创建女性角色
 */
- (Character *)createWowenPlayerWithProfession:(Profession *)profession;

/**
 创建男性角色
 */
- (Character *)createManPlayerWithProfession:(Profession *)profession;

///.... 还有一系列的职业：刺客、辅助、射手

@end

NS_ASSUME_NONNULL_END
