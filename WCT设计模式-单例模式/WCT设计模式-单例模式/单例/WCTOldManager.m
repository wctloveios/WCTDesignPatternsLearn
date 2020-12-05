//
//  WCTOldManager.m
//  WCT设计模式-单例模式
//
//  Created by wct on 2020/12/5.
//

#import "WCTOldManager.h"

static  WCTOldManager  *_instance;

@implementation WCTOldManager

#pragma mark - ARC

//alloc
+(instancetype)allocWithZone:(struct _NSZone *)zone{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone: zone];
    });
    return _instance;
}

+ (instancetype )shareInstance {
    return [[self alloc] init];
}

//条件满足ARC
# if __has_feature(objc_arc)
//否则执行MAC

# else

#pragma mark - MRC

//release
- (oneway void)release{
    
}
//retain
- (instancetype)retain{
    return _instance;
}

//count
- (NSUInteger)retainCount{
    return MAXFLOAT;
}
# endif

- (void)test {
    NSLog(@"MAC & ARC  单例使用！");
}

@end
