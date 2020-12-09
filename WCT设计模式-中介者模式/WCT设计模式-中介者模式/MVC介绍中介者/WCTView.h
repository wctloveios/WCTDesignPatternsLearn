//
//  WCTView.h
//  WCT设计模式-中介者模式
//
//  Created by wct on 2020/12/9.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WCTView : UIView

@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *phoneLabel;

- (void)reloadViewWithName:(NSString *)name phone:(NSString *)phone;

@end

NS_ASSUME_NONNULL_END
