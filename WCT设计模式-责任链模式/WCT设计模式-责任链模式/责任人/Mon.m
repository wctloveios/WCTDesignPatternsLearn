//
//  Mon.m
//  WCT设计模式-责任链模式
//
//  Created by wct on 2020/12/16.
//

#import "Mon.h"
#import "Son.h"
#import "Father.h"
@implementation Mon

- (instancetype)init {
    self = [super init];
    if (self) {
        self.position = @"妈妈";
    }
    
    return self;
}

- (BOOL)go:(NSString *)str {
    if ([self.decideArray containsObject:str]) {
        [self print:@"妈妈：OK"];
        return YES;
    } else {
        [self print:@"妈妈：不行"];
        return NO;
    }
}


@end
