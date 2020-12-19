//
//  Receiver.h
//  WCT设计模式-命令模式
//
//  Created by wct on 2020/12/19.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

//Receiver任务执行者，有服务的对象，那么也有操作服务对象的具体行为

//这里根据业务逻辑任务就是改变client的明亮程度

@interface Receiver : NSObject

/** 服务的对象 */
@property (nonatomic,strong)UIView *clientView;


//增加亮度的行为
-(void)makeViewLighter:(CGFloat)quantity;
//降低亮度的行为
-(void)makeViewDarker:(CGFloat)quantity;

@end

NS_ASSUME_NONNULL_END
