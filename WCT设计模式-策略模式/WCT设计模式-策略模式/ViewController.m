//
//  ViewController.m
//  WCT设计模式-策略模式
//
//  Created by wct on 2020/12/18.
//

#import "ViewController.h"
#import "DaYanDuck.h"
#import "YuanYangDuck.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Duck *duck1 = [[DaYanDuck alloc] init];
    [duck1 performFly];
    [duck1 performSlide];
    [duck1 performWalk];
    [duck1 performRun];
    
    Duck *duck2 = [[YuanYangDuck alloc] init];
    [duck2 performFly];
    [duck2 performSlide];
    [duck2 performWalk];
    [duck2 performRun];
    
    // 通过不同的子类去初始化鸭子对象，去运行时决定鸭子能实现什么行为
    
    // 参考链接：https://blog.csdn.net/wtdask/article/details/80454852
    
    /*
     自我理解：
         【1】定义一系列行为，父类去抽象申明这些行为，同时透露实现的接口，父类内部去指定属性去实现他能实现的行为
         【2】子类继承的时候，子类初始化时自行使用不同的行为去初始化
         【3】抽象一个行为协议，初始化几个对象，遵守行为协议，在协议方法内具体实现自己的能实现的行为(鸳鸯和大雁的具体行为类)
         【4】初始化父类的时候，使用子类去初始化对象，这样返回的实体类鸭子类，就会具体到哪一种鸭子，实现具体的行为
     */
}


@end
