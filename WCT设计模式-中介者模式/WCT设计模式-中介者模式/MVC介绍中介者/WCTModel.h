//
//  WCTModel.h
//  WCT设计模式-中介者模式
//
//  Created by wct on 2020/12/9.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WCTModel : NSObject<NSCopying>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *phone;

@end

NS_ASSUME_NONNULL_END
