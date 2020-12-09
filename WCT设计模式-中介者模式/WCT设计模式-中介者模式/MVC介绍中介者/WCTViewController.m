//
//  WCTViewController.m
//  WCT设计模式-中介者模式
//
//  Created by wct on 2020/12/9.
//

#import "WCTViewController.h"
#import "WCTView.h"
#import "WCTModel.h"

@interface WCTViewController ()

@property (nonatomic, strong) WCTView *wctView;
@property (nonatomic, strong) WCTModel *wctModel;

@end

@implementation WCTViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _wctModel = [[WCTModel alloc] init];
    _wctModel.name = @"wct";
    _wctModel.phone = @"185****9171";
    
    _wctView = [[WCTView alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
    _wctView.nameLabel.text = _wctModel.name;
    _wctView.phoneLabel.text = _wctModel.phone;
    [self.view addSubview:_wctView];
    
    [self reloadView];
    
    /*
     经典的MVC设计模式:
     【1】原理：所有的逻辑全部在ViewController 中处理，将Model和View完全解耦，两个之间没有互相引用，都是通过中介者ViewController 去完成渲染
     【2】优点点：View和model互相解耦
     【3】缺点：中介者臃肿
     */
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    _wctModel.name = @"lj";
    _wctModel.phone = @"185****9171";
    
    [self reloadView];
}

- (void)reloadView {
    [_wctView reloadViewWithName:_wctModel.name phone:_wctModel.phone];
}

@end
