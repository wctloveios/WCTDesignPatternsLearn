//
//  ViewController.m
//  WCT设计模式-访问者模式
//
//  Created by wct on 2020/12/11.
//

#import "ViewController.h"

#import "NimoCar.h"
#import "NimoEngine.h"
#import "NimoWheel.h"

/// 访问者
#import "NimoComponentUpgrade.h"
#import "NimoCustromDriver.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NimoCar *car = [[NimoCar alloc] init];
    NimoEngine *engine = [[NimoEngine alloc] initWithModelName:@"V8"];
    NimoWheel *wheelA = [[NimoWheel alloc] init];
    NimoWheel *wheelB = [[NimoWheel alloc] init];
    NimoWheel *wheelC = [[NimoWheel alloc] init];
    NimoWheel *wheelD = [[NimoWheel alloc] init];
    
    car.engine = engine;
    [car addWheel:wheelA atIndex:0];
    [car addWheel:wheelB atIndex:1];
    [car addWheel:wheelC atIndex:2];
    [car addWheel:wheelD atIndex:3];
    
    NSLog(@"%@", car);
    
    //对组建进行“升级”
    NimoComponentUpgrade *upgradeVisitor = [[NimoComponentUpgrade alloc] init];
    [car acceptComponentVisitor:upgradeVisitor];

    NimoCustromDriver *custromDriver = [[NimoCustromDriver alloc] init];
    [car acceptComponentVisitor:custromDriver];

}


@end
