//
//  Flower.h
//  WCT设计模式-享元模式
//
//  Created by wct on 2020/12/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Flower : NSObject

@property (nonatomic, copy) NSString *flowerColor; //  花色
@property (nonatomic, copy) NSString *flowerName; // 花名

@end

NS_ASSUME_NONNULL_END
