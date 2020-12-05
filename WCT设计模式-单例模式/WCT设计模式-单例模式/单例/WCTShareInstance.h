//
//  WCTShareInstance.h
//  WCT设计模式-单例模式
//
//  Created by wct on 2020/12/5.
//

#define WCTShareInstanceH(name)   +(instancetype )share##name;


//条件满足ARC
# if __has_feature(objc_arc)
//否则执行MAC  ##表示拼接   条件编译if不能放入宏define,所以先条件编译大与宏范围。

#define WCTShareInstanceM(name)   static  id  _instance; \
+(instancetype)allocWithZone:(struct _NSZone *)zone \
{ \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{   \
_instance = [super allocWithZone: zone]; \
});  \
return _instance; \
} \
\
+(instancetype )share##name   \
{ \
return [[self alloc] init ]; \
} \
\
-(id)copyWithZone:(NSZone *)zone \
{ \
return _instance; \
} \
\
-(id)mutableCopyWithZone:(NSZone *)zone \
{ \
return _instance; \
} \

# else
//条件不满足：MRC
#pragma mark - MRC

#define WCTShareInstanceM(name)   static  id  _instance; \
+(instancetype)allocWithZone:(struct _NSZone *)zone \
{ \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{   \
_instance = [super allocWithZone: zone]; \
});  \
return _instance; \
} \
\
+(instancetype )share##name \
{ \
return [[self alloc] init ]; \
} \
\
-(id)copyWithZone:(NSZone *)zone \
{ \
return _instance; \
} \
\
-(id)mutableCopyWithZone:(NSZone *)zone \
{ \
return _instance; \
} \
-(oneway void)release \
{ \
  \
} \
-(instancetype)retain \
{ \
 \
return _instance;  \
} \
-(NSUInteger)retainCount \
{ \
    return MAXFLOAT; \
}//不能加\   如果加表示endif 为MRC其中的一部风

# endif
