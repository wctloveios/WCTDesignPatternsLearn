//
//  ViewController.m
//  WCT设计模式-生成器模式
//
//  Created by wct on 2020/12/5.
//

#import "ViewController.h"
#import "Caster.h"
#import "Warrior.h"
#import "Character.h"
#import "CharacterCreator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /// 参考地址：https://www.jianshu.com/p/92e13802980f
    
    /// 战士套装
    Warrior *warrior = [[Warrior alloc] init];
    /// 法师套装
    Caster *caster = [[Caster alloc] init];
    
    CharacterCreator *creater = [[CharacterCreator alloc] init];
    /// 男法师
    Character *warrior1 = [creater createManPlayerWithProfession:warrior];
    /// 男战士
    Character *Warrior2 = [creater createManPlayerWithProfession:caster];
    /// 女法师
    Character *caster1 = [creater createWowenPlayerWithProfession:warrior];
    /// 女战士
    Character *carrior2 = [creater createWowenPlayerWithProfession:caster];
    
    /// 这样组合的方式，就会出现各种属性不同、职业不同的 角色：
    /// 一般这些基础橘色、基础属性都是固定的。模仿游戏的话，还有各种装备加成、服装加成、宠物加成、buffer加成，就会出现各种高强角色
}


@end
