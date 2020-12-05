//
//  ViewController.m
//  WCT设计模式-适配器模式
//
//  Created by wct on 2020/12/5.
//

#import "ViewController.h"

#import "AdapterUSD.h"
#import "AdapterCNY.h"

#import "ObjectAdapter.h"
#import "AdapterFooterball.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 1、类适配器
    NSLog(@"类适配器");
    AdapterUSD *usd = [[AdapterUSD alloc] init];
    float num = [usd getUSD];
    NSLog(@"美国业务是打印美元：%f", num);
    
    AdapterCNY *cny = [[AdapterCNY alloc] init];
    float newNum = [cny getCNYWithUSD];
    NSLog(@"中国业务是打印人民币：%f",newNum);
    /*
     类适配器：就是通过 ”继承目标类“ + ”组合“ 的方式适配新业务，通过替换新的类名去适配新的业务
     */
    
    
    // 2、对象适配器
    NSLog(@"对象适配器");
    /// 历史业务
    AdapterFooterball *adapterFooterball = [[AdapterFooterball alloc] init];
    NSString *odlPE = [adapterFooterball goPE];
    NSLog(@"以前的体育课：%@",odlPE);
    // 新业务
    ObjectAdapter *newAdapter = [[ObjectAdapter alloc] initWithAdapter:[AdapterFooterball new]];
    NSString *newPE = [newAdapter goBasketball];
    NSLog(@"现在的体育课：%@",newPE);
    /*
     对象适配器：就是通过 ”继承目标类“ + ”组合“ 的方式适配新业务，通过替换新的类名去适配新的业务
     */
}


@end
