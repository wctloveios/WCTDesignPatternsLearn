//
//  ViewController.m
//  WCT设计模式-桥接模式
//
//  Created by wct on 2020/12/7.
//

#import "ViewController.h"

#import "AbstractControl.h"
#import "UserControl.h"
#import "KTProtocol.h"
#import "AbstractKT.h"
#import "AbstractKTA.h"
#import "AbstractKTB.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    AbstractControl *control = [[UserControl alloc] init];
    id<KTProtocol> ktProtocol = [[AbstractKTA alloc] init];
    control.ktProtocol = ktProtocol;
    [control detectKTcommand];
    
    AbstractControl *control2 = [[UserControl alloc] init];
    id<KTProtocol> ktProtocol2 = [[AbstractKTB alloc] init];
    control2.ktProtocol = ktProtocol2;
    [control2 detectKTcommand];
    
    /*
     *  桥接模式：将抽象部分与它的实现部分分离，使它们都可以独立地变化。
     *  在本例中，AbstractControl是抽象部分，KTProtocol是其实现部分。
     */
    
    /*
     参考链接：https://www.jb51.net/article/81210.htm
     小结：总的来说，桥接模式的本质在于“分离抽象和实现”。
    
     桥接模式的优点：
    【1】桥接模式使用聚合关系，解耦了抽象和实现之间固有的绑定关系，使得抽象和实现可以沿着各自的维度来变化。
    【2】提高了系统的可扩展性，可以独立地对抽象部分和实现部分进行扩展。
    【3】可减少子类的个数
    
    桥接模式的缺点：
    【1】桥接模式的引入会增加系统的理解与设计难度，由于聚合关系建立在抽象层，要求开发者针对抽象进行设计与编程。
    【2】桥接模式要求正确识别出系统中两个独立变化的维度，因此其使用范围具有一定的局限性。
    
    适用场景（通过优缺点的分析，我们可以在如下的情形下使用桥接模式：）
    【1】不想在抽象与其实现之间形成固定的绑定关系；
    【2】抽象及其实现都应可以通过子类化独立进行扩展；
    【3】对抽象的实现进行修改不应影响客户端代码；
    【4】如果每个实现需要额外的子类以细化抽象，则说明有必要把它们分成两个部分；
    【5】想在带有不同抽象接口的多个对象之间共享一个实现。
     */
}


@end
