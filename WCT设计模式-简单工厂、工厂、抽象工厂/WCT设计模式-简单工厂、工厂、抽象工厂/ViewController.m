
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

#import "WCTDinnerFactory.h"
#import "WCTDinnerFood.h"
#import "WCTGuest.h"

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
    
    
    // 2、工厂模式：
    WCTNoonFood *noodFood1 = [WCTNoonFoodFishCook customerBuySomthing];
    [noodFood1 payForSomething];
    WCTNoonFood *noodFood2 = [WCTNoonFoodShrimpCook customerBuySomthing];
    [noodFood2 payForSomething];
    /*
     与简单工厂模式把所有产品都放到WCTMorningFactory来获取相比，工厂模式每次需要一个新的产品，就需要新建一个具体工厂来生成新的产品。当你需要鱼的时候，只要新建一个继承于WCTNoonFactory的工厂类（WCTNoonFoodFishCook），再创建一个继承于WCTNoonFood的具体产品（WCTNoonFoodFish）就可以创建新的产品了。对原来的代码都不需要做任何修改。这就使得产品的拓展变得简单。
     */
    
    
    // 3、抽象工厂模式：
    WCTDinnerFactory *dinnerFactory1 = [WCTDinnerFactory factoryWithType:WCTDinnerFoodTypePizza];
    WCTDinnerFood *dinnerFood1 = [dinnerFactory1 creatDinner];
    [dinnerFood1 payForSomething];
    WCTGuest *guest1 = [dinnerFactory1 creatGust];
    [guest1 eatSomething];
    WCTDinnerFactory *dinnerFactory2 = [WCTDinnerFactory factoryWithType:WCTDinnerFoodTypeHotpot];
    WCTDinnerFood *dinnerFood2 = [dinnerFactory2 creatDinner];
    [dinnerFood2 payForSomething];
    WCTGuest *guest2 = [dinnerFactory2 creatGust];
    [guest2 eatSomething];
    /*
     使用WCTDinnerFactory来创建工厂，屏蔽了内部的实现，你可以不用管内部是使用的馒头工厂还是油条工厂。你需要关注的就是他们公有的接口就行了。抽象工厂的最大好处在于，让你感觉不到内部差异性。cocoa框架里到处都是使用了这种设计。比如NSString、NSNumber。(这方面可以查阅cocoa的类簇这个概念来了解相关资料)当然，缺点就是，如果你修改了抽象类的方法，那么所有的子类都要跟着一起修改。
     */
    
    /*
     总结:从简单工厂模式到工厂模式，再到抽象工厂模式。可以看到整个模式的一步步演进。简单工厂模式在产品多样之后，整个工厂将会变得臃肿而难以维护。于是我们将简单工厂模式中的工程做了抽象处理，这样每种产品对应一个工厂。这样无疑会增加代码量。但是好处是显而易见的，单独让一个工厂处理一种产品会让逻辑变得好维护。但是这样还不够，因为增加新的品类，就会产生新的类，对于调用者来说，处理太多具有相同接口的类显然是不合算的。于是，我们使用抽象工厂模式来解决这个问题。我们让抽象工厂内部做一个封装，用以隐藏真正的具体工厂。这样，对于调用者来说，即时内部增加了新的产品，你也是不知道的。
     */
}


@end
