//
//  KVOViewController.m
//  WCT设计模式-观察者模式
//
//  Created by wct on 2020/12/9.
//

#import "KVOViewController.h"
#import "WCTModel.h"

@interface KVOViewController ()

@property (nonatomic, strong) WCTModel *model;

@end

@implementation KVOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    /*
     参考：https://www.jianshu.com/p/0bbc0c15add9
     【1】自定义KVO
     【2】KVO增加Block
     */
    
    _model = [[WCTModel alloc] init];
    _model.name = @"wct";
    _model.age = 20;
    [_model addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    _model.name = @"lj";
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    if (object == _model && [keyPath isEqualToString:@"name"]) {
        NSLog(@"监听到了变化，内容是 = %@", change);
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
