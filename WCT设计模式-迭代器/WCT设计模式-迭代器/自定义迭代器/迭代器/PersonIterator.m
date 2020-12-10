//
//  PersonIterator.m
//  WCT设计模式-迭代器
//
//  Created by wct on 2020/12/10.
//

#import "PersonIterator.h"
#import "Book.h"

@interface PersonIterator()
 
@property (assign,nonatomic)  NSInteger            position;
@property (strong,nonatomic)  NSMutableArray       *mutableArr;
 
@end
 
@implementation PersonIterator
 
-(instancetype)initWithData:(NSMutableArray *)data{
    self=[super init];
    if (self) {
        self.mutableArr=data;
    }
    return self;
}
 
-(Boolean)hasNext{
    if (self.position>=[self.mutableArr count]||![self.mutableArr objectAtIndex:self.position]) {
        return false;
    }else{
        return true;
    }
}
 
-(id)next{
    Book *book=[self.mutableArr objectAtIndex:self.position];
    self.position+=1;
    return book;
}
 
@end
