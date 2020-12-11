//
//  NimoEngine.m
//  WCT设计模式-访问者模式
//
//  Created by wct on 2020/12/11.
//

#import "NimoEngine.h"
#import "NimoComponentVisitor.h"

@implementation NimoEngine

- (id)initWithModelName:(NSString *)modelName{
    self = [super init];
    if (self) {
        _modelName = [modelName copy];
    }
    return self;
}

- (id) init{
    return [self initWithModelName:@"Slant 6"];
}

- (NSString *)description{
    return [NSString stringWithFormat:@"Engine: %@", _modelName];
}


- (void)acceptComponentVisitor:(id<NimoComponentVisitor>) visitor{
    [visitor visitEngine:self];        // 允许自己被访问
}

@end
