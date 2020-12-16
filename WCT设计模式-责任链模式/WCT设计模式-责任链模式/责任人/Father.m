//
//  Father.m
//  WCT设计模式-责任链模式
//
//  Created by wct on 2020/12/16.
//

#import "Father.h"
#import "Son.h"
#import "Mon.h"
@implementation Father

- (instancetype)init {
    self = [super init];
    if (self) {
        self.position = @"爸爸";
    }
    
    return self;
}

- (BOOL)go:(NSString *)str {
    if ([self.decideArray containsObject:str]) {
        [self print:@"爸爸：OK"];
        return YES;
    } else {
        [self print:@"爸爸：我不能做主，问问妈妈"];
        return [self.wifi go:str];
    }
}

@end
