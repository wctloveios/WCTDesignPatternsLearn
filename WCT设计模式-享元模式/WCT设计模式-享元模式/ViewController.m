//
//  ViewController.m
//  WCT设计模式-享元模式
//
//  Created by wct on 2020/12/19.
//

#import "ViewController.h"
#import "FlowerFactory.h"
#import "Flower.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 初始化工厂
    FlowerFactory *factory = [[FlowerFactory alloc] init];
    
    NSMutableArray *arrayFlowers = [[NSMutableArray alloc] init];
    // for循环调用
    for (int i = 0; i < 5000*100; ++i) {
        FlowerType flowerType = arc4random_uniform(kTotalNumberFlower);
        
        // 使用缓存池工厂方法来调用.类型是随机的：运行大小44M
        Flower *flower = [factory flowerViewWithType:flowerType];
        
        // 简单的创建方式：运行大小64M
        // Flower *flower = [[Flower alloc] init];
        
        [arrayFlowers addObject:flower];
        // 打印详情
        [factory detailsType];
    }
    
    /*
     自我理解：就是通过类型来从已有模型中取，再外加额外的属性，来实现不同的具体事例

     iOS端：多线程（线程池），UITableViewCell，UICollectionViewCell
     */
}

@end
