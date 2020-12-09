//
//  WCTView.m
//  WCT设计模式-中介者模式
//
//  Created by wct on 2020/12/9.
//

#import "WCTView.h"

@implementation WCTView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, 50)];
        _nameLabel.textColor = [UIColor blueColor];
        [self addSubview:_nameLabel];
        
        _phoneLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 50, self.frame.size.width, 50)];
        _phoneLabel.textColor = [UIColor blueColor];
        [self addSubview:_phoneLabel];
    }
    return self;
}

- (void)reloadViewWithName:(NSString *)name phone:(NSString *)phone {
    _nameLabel.text = name;
    _phoneLabel.text = phone;
}

@end
