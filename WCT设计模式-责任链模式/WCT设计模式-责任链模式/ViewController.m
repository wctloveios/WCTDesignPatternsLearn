//
//  ViewController.m
//  WCT设计模式-责任链模式
//
//  Created by wct on 2020/12/16.
//

#import "ViewController.h"
#import "Father.h"
#import "Mon.h"
#import "Son.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Son *son = [[Son alloc] init];
    Father *father = [[Father alloc] init];
    Mon *mon = [[Mon alloc] init];
    
    father.decideArray = @[@"打球",@"出去玩"];
    mon.decideArray = @[@"买衣服",@"买文具",@"交学费"];
    
    son.father = father;
    son.mon = mon;
    
    father.son = son;
    father.wifi = mon;
    
    mon.son = son;
    mon.husband = father;
    
    
    NSLog(@"--------------");
    if ([son go:@"买衣服"]) {
        NSLog(@"我可以穿新衣服了");
    } else {
        NSLog(@"衣服很多了，下次买吧");
    }
    
    NSLog(@"--------------");
    if ([son go:@"打球"]) {
        NSLog(@"出去打球咯");
    } else {
        NSLog(@"作业没写完，先写完作业");
    }
    
    NSLog(@"--------------");
    if ([son go:@"交学费"]) {
        NSLog(@"开心去上学");
    } else {
        NSLog(@"自己去打工吧");
    }
    
    NSLog(@"--------------");
    if ([son go:@"结婚"]) {
        NSLog(@"先去找个媳妇");
    } else {
        NSLog(@"好吧，矮穷矬没人喜欢");
    }
    
    
    /*
     自我理解：
        只要是在这责任链路里面，需要设置依赖关系，也就是联通这条链路：（儿子—>父亲—>母亲）,儿子先对父亲提需求，父亲能实现就给实现，父亲不行，就转给母亲实现，如果母亲能实现就实现，不能实现就直接拒绝，儿子得到同意和失败的返回，就会自行做接下来的事情，而不是一直等着回应
     */
    
    /*
     项目使用：天猫精灵配网链路
     */
}


@end
