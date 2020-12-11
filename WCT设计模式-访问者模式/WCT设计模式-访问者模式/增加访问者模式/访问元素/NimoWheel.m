//
//  NimoWheel.m
//  WCT设计模式-访问者模式
//
//  Created by wct on 2020/12/11.
//

#import "NimoWheel.h"
#import "NimoComponentVisitor.h"

@implementation NimoWheel

- (id)init{
   self = [super init];
   if (self) {
       _diameter = 400.0f;
   }
   return self;
}

-(NSString *)description{
   return [NSString stringWithFormat:@"Wheel: %f mm", _diameter];
}


- (void)acceptComponentVisitor:(id<NimoComponentVisitor>) visitor{
    [visitor visitWheel:self];
}

@end
