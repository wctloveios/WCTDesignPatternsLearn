//
//  Son.m
//  WCT设计模式-责任链模式
//
//  Created by wct on 2020/12/16.
//

#import "Son.h"
#import "Father.h"
#import "Mon.h"
@implementation Son

- (instancetype)init {
    self = [super init];
    if (self) {
        self.position = @"儿子";
    }
    
    return self;
}

- (BOOL)go:(NSString *)str {
    [self print:[NSString stringWithFormat:@"儿子：爸爸我想-%@",str]];
    
    return [self.father go:str];
    
}

@end
