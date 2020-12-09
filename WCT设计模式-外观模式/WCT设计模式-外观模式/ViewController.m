//
//  ViewController.m
//  WCT设计模式-外观模式
//
//  Created by wct on 2020/12/9.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    /*
    参考链接：https://www.jianshu.com/p/80f0455a5b08
    自我理解：（就是封装：由一个上层类，聚合其他各各子类实现统一接口）
        比如司机和乘客，乘客要的结果就是到站，不关系什么车，不关系什么路，不关心司机是男是女，那是不是可以找个公司，直接把着一些列的事情弄好，乘客打的的时候，只要执行停车和上车的动作就好了，甚至连停车的动作都不需要了（还有超车、换道、刹车等等，都是乘客不关系的）

    1、开发实际中注意点：
    【1】提供这种一步到位的能力
    【2】但是同时需要提供一些格外服务（到哪了，前面发生了什么交通事故等一系列查询服务）
    */
}


@end
