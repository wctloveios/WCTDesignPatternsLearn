//
//  NOCommandViewController.m
//  WCT设计模式-命令模式
//
//  Created by wct on 2020/12/19.
//

#import "NOCommandViewController.h"
#import "Receiver.h"


//实际需要实现的业务逻辑：通过两个按钮调整界面视图的明暗程度，外加一个按钮设置回退操作
typedef enum : NSUInteger {
    hAddButtonTag = 0x11,
    hDelButtonTag,
    hRolButtonTag,
} ViewControllerEnumValue;

@interface NOCommandViewController ()

/** 接受者，执行任务者 */
@property (nonatomic,strong)Receiver *receiver;

@end

@implementation NOCommandViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //画出三个按钮
    //调亮按钮 +
    UIButton* addBtn = [self addButtonWithTitle:@"+"
                                      withFrame:CGRectMake(30, 100, 40, 40)
                                     withAction:@selector(buttonsEvent:)
                                        withTag:hAddButtonTag];
    [self.view addSubview:addBtn];
    //调暗按钮 -
    UIButton* delBtn = [self addButtonWithTitle:@"-"
                                      withFrame:CGRectMake(100, 100, 40, 40)
                                     withAction:@selector(buttonsEvent:)
                                        withTag:hDelButtonTag];
    [self.view addSubview:delBtn];
    //撤销操作按钮
    UIButton* rolBtn = [self addButtonWithTitle:@"RoolBack"
                                      withFrame:CGRectMake(170, 100, 100, 40)
                                     withAction:@selector(buttonsEvent:)
                                        withTag:hRolButtonTag];
    [self.view addSubview:rolBtn];
    
    self.receiver = [[Receiver alloc] init];
    [self.receiver setClientView:self.view];
}

-(void)buttonsEvent:(UIButton*)btn{
    if (btn.tag == hAddButtonTag) {
        
        [self.receiver makeViewLighter:0.1f];
        
    }else if (btn.tag == hDelButtonTag){
        
        [self.receiver makeViewDarker:0.1f];
        
    }else if (btn.tag == hRolButtonTag){
        
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
