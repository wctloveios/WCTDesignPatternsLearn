//
//  ViewController.m
//  WCT设计模式-备忘录模式
//
//  Created by wct on 2020/12/22.
//

#import "ViewController.h"
#import "User.h"
#import "Man.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    User *user = [User new];    //人使用保存对象，年龄和身高就是保存对象
    user.name = @"WCT";
    user.age = 18;
    user.height = 168;
    NSLog(@"我是%@，今年%ld岁，身高%ld", user.name, (long)user.age, (long)user.height);
    NSMutableArray *memoArray = [NSMutableArray array];//此处的数组就是备忘录管理类
    for (int i=0; i<10; i++) {
        [memoArray addObject:[user saveState]];
        user.age += 1;
        user.height += 2;
        NSLog(@"我是%@，今年%ld岁，身高%ld", user.name, (long)user.age, (long)user.height);
    }
    /// 恢复到23岁时候的状态
    NSLog(@"恢复到23岁时候的状态");
    [user recoverStateFromMan:memoArray[5]];
    NSLog(@"我是%@，今年%ld岁，身高%ld", user.name, (long)user.age, (long)user.height);
    
    /*
     自我理解：就是保存呗，存进去什么，取出来什么就好了

     备忘录模式
     1、什么是备忘录模式
     在不破坏封闭的前提下，捕获一个对象的内部状态，并在该对象之外保存这个状态。这样以后就可将该对象恢复到原先保存的状态。
     备忘录模式总共需要三种对象
     [1] 保存对象（即备忘录）,就像上文中 memoArray 就是一个备忘录类，字典，Set都可以
     [2] 使用对象
     [3] 管理备忘录对象
     保存对象是为了保存和恢复使用类的一些状态。管理对象是为了管理备忘录（例如多次恢复、根据版本恢复等）。

     2、备忘录模式用在什么地方
     * 功能比较复杂的，但是需要维护或记录属性历史的类。
     * 需要保存的属性只是众多属性的一小部分时。
     一般而言，运用备忘录的思想很多，完整的运用备忘录模式的很少。

     3、备忘录模式的使用
     [1]. 在使用类中引用备忘录类，实现保存与恢复两个方法
     [2]. 通过管理对象，取出或者保存使用类需要的对象
     管理对象可以是自定义类、也可以是数组或者字典。

     4、总结
     备忘录模式在许多的使用情况下，只有一个备忘录，就导致了一种管理类即是备忘录类的情况。只要每次都把外部备忘录对象进行覆盖和读取就可以实现备忘录模式。
     */
}


@end
