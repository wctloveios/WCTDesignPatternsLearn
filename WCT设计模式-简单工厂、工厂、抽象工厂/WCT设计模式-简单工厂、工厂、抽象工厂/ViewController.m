
//
//  ViewController.m
//  WCT设计模式-简单工厂、工厂、抽象工厂
//
//  Created by wct on 2020/11/29.
//

#import "ViewController.h"
#import "WCTMorningFood.h"
#import "WCTMorningFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 1、简单工厂模式
    WCTMorningFactory *factory = [[WCTMorningFactory alloc] init];
    WCTMorningFood *food1 = [factory customerBuySomthingWithType:WCTMorningFoodTypeBaoZi];
    [food1 payForSomething];
    WCTMorningFood *food2 = [factory customerBuySomthingWithType:WCTMorningFoodTypeDouJiang];
    [food2 payForSomething];
    /*
     WCTMorningFactory作为一个工厂，里面包含了创建产品的逻辑，这里使用一个枚举来控制是创建包子还是豆浆的具体产品。但是这里的问题就是，如果产品类的逻辑非常复杂，那么这个共产类会复杂的不可控。当然，外部调用的话，根本无需关心内部如何创建具体的产品，因为抽象产品类WCTMorningFactory已经制定了一套接口规范。
     */
}


@end
