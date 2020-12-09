//
//  ViewController.m
//  WCT设计模式-组合模式
//
//  Created by wct on 2020/12/9.
//

#import "ViewController.h"
#import "SuperView.h"
#import "SonView1.h"
#import "SonView2.h"

@interface ViewController ()

@property (nonatomic, strong) SuperView *superView1;
@property (nonatomic, strong) SonView1 *sonView11;
@property (nonatomic, strong) SonView2 *sonView21;

@property (nonatomic, strong) SuperView *superView2;
@property (nonatomic, strong) SonView1 *sonView12;
@property (nonatomic, strong) SonView2 *sonView22;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /// 可以单独独立
    _superView1 = [[SuperView alloc] initWithFrame:CGRectMake(0, 100, 100, 100)];
    _superView1.backgroundColor = [UIColor redColor];
    [self.view addSubview:_superView1];
    
    _sonView11 = [[SonView1 alloc] initWithFrame:CGRectMake(120, 100, 25, 25)];
    _sonView11.backgroundColor = [UIColor blueColor];
    [self.view addSubview:_sonView11];
    
    _sonView21 = [[SonView2 alloc] initWithFrame:CGRectMake(150, 100, 25, 25)];
    _sonView21.backgroundColor = [UIColor greenColor];
    [self.view addSubview:_sonView21];
    
    /// 也可以组合成一个整体
    _superView2 = [[SuperView alloc] initWithFrame:CGRectMake(0, 300, 100, 100)];
    _superView2.backgroundColor = [UIColor redColor];
    [self.view addSubview:_superView2];
    
    _sonView12 = [[SonView1 alloc] initWithFrame:CGRectMake(0, 0, 25, 25)];
    _sonView12.backgroundColor = [UIColor blueColor];
    [_superView2 addSubview:_sonView12];
    
    _sonView22 = [[SonView2 alloc] initWithFrame:CGRectMake(70, 70, 25, 25)];
    _sonView22.backgroundColor = [UIColor greenColor];
    [_superView2 addSubview:_sonView22];
    
    
    /// 能够体现出父子结构，最简单的就是自定义UI控件了，一个一个的View，组合成一个大的View
}


@end
