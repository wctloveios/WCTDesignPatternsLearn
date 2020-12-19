//
//  FlowerFactory.m
//  WCT设计模式-享元模式
//
//  Created by wct on 2020/12/19.
//

#import "FlowerFactory.h"

@implementation FlowerFactory

- (Flower *)flowerViewWithType:(FlowerType)type {
    // 1. 懒加载flowerPools, 初始化享元池.
    if (self.flowerPools == nil) {
        self.flowerPools = [[NSMutableDictionary alloc] initWithCapacity:kTotalNumberFlower];
    }

    // 2. 去享元池里面取
    Flower *flower = [self.flowerPools objectForKey:[NSNumber numberWithInteger:type]];

    // 3. 如果没取到就判断
    if (flower == nil) {
        // 1. 创建花
        flower = [[Flower alloc] init];

        // 2. 根据传进来的类型, 去选择对应的类型
        switch (type) {
            case kRedFlower:
                flower.flowerColor = @"红色的花";
                flower.flowerName = @"红玫瑰";
                break;

            case kBlueFlower:
                flower.flowerColor = @"蓝色的花";
                flower.flowerName = @"蓝玫瑰";
                break;

            case kYellowFlower:
                flower.flowerColor = @"黄色的花";
                flower.flowerName = @"野菊花";
                break;

            default:
                break;
        }
        // 3. 把创建的话,添加到享元池里面
        [self.flowerPools setObject:flower forKey:[NSNumber numberWithInt:type]];
    }

    return flower;
}

- (void)detailsType {
    NSArray *array = [self.flowerPools allKeys];
    // 打印
    for (NSNumber *key in array) {
        NSLog(@"di zhi = %@,  key = %@", self.flowerPools[key], key);
    }
}

@end
