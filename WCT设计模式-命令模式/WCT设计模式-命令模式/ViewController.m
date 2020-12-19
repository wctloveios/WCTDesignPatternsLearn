//
//  ViewController.m
//  WCT设计模式-命令模式
//
//  Created by wct on 2020/12/19.
//

#import "ViewController.h"
#import "NOCommandViewController.h"
#import "CommandViewController.h"

//实际需要实现的业务逻辑：通过两个按钮调整界面视图的明暗程度，外加一个按钮设置回退操作
typedef enum : NSUInteger {
    hAddButtonTag = 0x11,
    hDelButtonTag,
} ViewControllerEnumValue;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton* addBtn = [self addButtonWithTitle:@"普通实现"
                                      withFrame:CGRectMake(30, 100, 200, 40)
                                     withAction:@selector(buttonsEvent:)
                                        withTag:hAddButtonTag];
    [self.view addSubview:addBtn];
    
    UIButton* delBtn = [self addButtonWithTitle:@"命令模式实现"
                                      withFrame:CGRectMake(30, 200, 200, 40)
                                     withAction:@selector(buttonsEvent:)
                                        withTag:hDelButtonTag];
    [self.view addSubview:delBtn];
}

-(void)buttonsEvent:(UIButton*)btn{
    // 参考链接：https://www.cnblogs.com/goodboy-heyang/p/5037786.html
    if (btn.tag == hAddButtonTag) {
        NOCommandViewController *view = [[NOCommandViewController alloc] init];
        [self presentViewController:view animated:YES completion:nil];
    }else if (btn.tag == hDelButtonTag){
        CommandViewController *view = [[CommandViewController alloc] init];
        [self presentViewController:view animated:YES completion:nil];
    }
}

#pragma mark - 添加同类按钮的方法
//增加相同按钮的方法相同，所以抽离出来
-(UIButton*)addButtonWithTitle:(NSString*)title withFrame:(CGRect)frame withAction:(SEL)sel withTag:(ViewControllerEnumValue)tag{
    UIButton* btn = [[UIButton alloc] initWithFrame:frame];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn setTitle:@"🐶" forState:UIControlStateHighlighted];
    btn.layer.borderWidth = 1.0f;
    [btn addTarget:self action:sel forControlEvents:UIControlEventTouchUpInside];
    [btn setTag:tag];
    return btn;
}

@end
