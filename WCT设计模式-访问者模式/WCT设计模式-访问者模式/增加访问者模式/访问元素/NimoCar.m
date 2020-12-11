//
//  NimoCar.m
//  WCT设计模式-访问者模式
//
//  Created by wct on 2020/12/11.
//

#import "NimoCar.h"
#import "NimoComponentVisitor.h"
#import "NimoEngine.h"
#import "NimoWheel.h"

@interface NimoCar()
@property (nonatomic, readwrite) NSMutableArray *mutableArrayOfWheels;
@end
@implementation NimoCar

- (id)init{
    if (self = [super init]) {
        _mutableArrayOfWheels = [[NSMutableArray alloc] initWithCapacity:4];
    }
    
    return self;
}

- (void)addWheel:(NimoWheel *)wheel atIndex:(NSUInteger) index{
    [_mutableArrayOfWheels insertObject:wheel atIndex:index];
}

- (NSArray *)arrayOfWheels{
    return [_mutableArrayOfWheels copy];
}

- (NSString *)description{
    return [NSString stringWithFormat:@"My car: %@", [NSDictionary dictionaryWithObjects:@[_engine, self.arrayOfWheels] forKeys:@[@"Engine", @"Wheels"]]];
}


- (void)acceptComponentVisitor:(id<NimoComponentVisitor>) visitor{
    [visitor visitCar:self];  
    [_engine acceptComponentVisitor:visitor];
    for (NimoWheel *wheel in self.arrayOfWheels) {
        [wheel acceptComponentVisitor:visitor];
    }
}

@end

