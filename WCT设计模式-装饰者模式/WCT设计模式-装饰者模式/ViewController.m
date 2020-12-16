//
//  ViewController.m
//  WCT设计模式-装饰者模式
//
//  Created by wct on 2020/12/16.
//

#import "ViewController.h"
#import "Milk.h"
#import "Ice.h"
#import "Mocha.h"
#import "WaterB.h"
#import "WaterA.h"
#import "Beverage.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    id<Beverage> waterA = [[WaterA alloc] init];
    waterA = [[Milk alloc] initWithBeverage:waterA];
    waterA = [[Ice alloc] initWithBeverage:waterA];
    waterA = [[Mocha alloc] initWithBeverage:waterA];
    NSLog(@"name = %@,cost = %f",[waterA getName], [waterA cost]);
    
    id<Beverage> waterB = [[WaterB alloc] init];
    waterB = [[Milk alloc] initWithBeverage:waterB];
    waterB = [[Ice alloc] initWithBeverage:waterB];
    waterB = [[Mocha alloc] initWithBeverage:waterB];
    NSLog(@"name = %@,cost = %f",[waterB getName], [waterB cost]);
    
   /*
    自我理解：（“协议模式” + “组合模式”）
        装饰就是奶茶店一样，将饮料名字和价格实现抽成一个协议，各种奶茶只要加上各种味道，调味就能拼接成一杯客户想要的，具体的价格也由客户点的类型（某种引来哦需要加入的所有配料（装饰品））决定

    设计原则：
        多用组合，少用继承
    
    需求场景：
    【1】静态库扩展功能。不改变（原始类）、不继承、动态扩展功能。（这边想增加饮料品种或者调料，只需要增加对应的类，不会对原先的搭配有问题）
    【2】不知道原始类实现细节，只提供接口，动态扩展功能。（每种调料，知识增加自己的价格和名称，不会对原始搭配产生影响）
    【3】不想有更多子类，不想通过继承的方式添加功能。（通过组合实现扩展，不继承子类）
    【4】动态扩展对象的功能。
    【5】必须持有对象的引用，包含实例化的被装饰类。（需要传入历史饮料，可能是原始饮料，也可能是已经搭配过的，不关系，只是在他基础上去新增调料而已）
    */

}


@end
