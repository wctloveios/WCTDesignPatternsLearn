//
//  FlowerFactory.h
//  WCT设计模式-享元模式
//
//  Created by wct on 2020/12/19.
//

#import <Foundation/Foundation.h>
#import "Flower.h"
NS_ASSUME_NONNULL_BEGIN
typedef enum {
    kRedFlower, // 0
    kBlueFlower, // 1
    kYellowFlower, // 2
    kTotalNumberFlower  // 用于计数的.
}FlowerType;

@interface FlowerFactory : NSObject
// 缓存池, 存放享元对象
@property (nonatomic, strong) NSMutableDictionary *flowerPools;
// 创建花的工厂方法
- (Flower *)flowerViewWithType:(FlowerType)type;
// 打印数据
- (void)detailsType;
@end


NS_ASSUME_NONNULL_END
