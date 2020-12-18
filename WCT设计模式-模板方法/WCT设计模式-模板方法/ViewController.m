//
//  ViewController.m
//  WCT设计模式-模板方法
//
//  Created by wct on 2020/12/18.
//

#import "ViewController.h"
#import "WCTChinessFood.h"
#import "WCTWesternCook.h"
#import "WCTCook.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    WCTChinessFood *cook = [[WCTChinessFood alloc] init];
    [cook buy];
    [cook prepare];
    [cook chao];
    [cook shangCai];
    
    WCTWesternCook *cook2 = [[WCTWesternCook alloc] init];
    [cook2 buy];
    [cook2 prepare];
    [cook2 liaoli];
    [cook2 shangCai];
    
    /*
     自我理解：就是复用！！！父类设计一些通用的方法：例如一系列通用的初始化过程，而不共同的部分，通过子类继承父类的方法，在实现父类方法的中间，穿插一些子类特有的方法；想扩展什么不同的方法，只要不共同，都通过继承子类的方式去实现即可
     */
}


@end
