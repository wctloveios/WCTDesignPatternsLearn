
//
//  ViewController.m
//  WCT设计模式-简单工厂、工厂、抽象工厂
//
//  Created by wct on 2020/11/29.
//

#import "ViewController.h"

#import "WCTMorningFood.h"
#import "WCTMorningFactory.h"

#import "WCTNoonFood.h"
#import "WCTNoonFoodFishCook.h"
#import "WCTNoonFoodShrimpCook.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 1、简单工厂模式
    WCTMorningFactory *moonindFactory = [[WCTMorningFactory alloc] init];
    WCTMorningFood *morningFood1 = [moonindFactory customerBuySomthingWithType:WCTMorningFoodTypeBaoZi];
    [morningFood1 payForSomething];
    WCTMorningFood *morningFood2 = [moonindFactory customerBuySomthingWithType:WCTMorningFoodTypeDouJiang];
    [morningFood2 payForSomething];
    /*
     WCTMorningFactory作为一个工厂，里面包含了创建产品的逻辑，这里使用一个枚举来控制是创建包子还是豆浆的具体产品。但是这里的问题就是，如果产品类的逻辑非常复杂，那么这个共产类会复杂的不可控。当然，外部调用的话，根本无需关心内部如何创建具体的产品，因为抽象产品类WCTMorningFactory已经制定了一套接口规范。
     */
    
    
    // 工厂模式：
    WCTNoonFood *noodFood1 = [WCTNoonFoodFishCook customerBuySomthing];
    [noodFood1 payForSomething];
    WCTNoonFood *noodFood2 = [WCTNoonFoodShrimpCook customerBuySomthing];
    [noodFood2 payForSomething];
    /*
     与简单工厂模式把所有产品都放到WCTMorningFactory来获取相比，工厂模式每次需要一个新的产品，就需要新建一个具体工厂来生成新的产品。当你需要鱼的时候，只要新建一个继承于WCTNoonFactory的工厂类（WCTNoonFoodFishCook），再创建一个继承于WCTNoonFood的具体产品（WCTNoonFoodFish）就可以创建新的产品了。对原来的代码都不需要做任何修改。这就使得产品的拓展变得简单。
     */
}


@end
