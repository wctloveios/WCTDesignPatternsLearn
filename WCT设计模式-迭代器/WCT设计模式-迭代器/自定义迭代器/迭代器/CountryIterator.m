//
//  CountryIterator.m
//  WCT设计模式-迭代器
//
//  Created by wct on 2020/12/10.
//

#import "CountryIterator.h"
#import "Book.h"

@interface  CountryIterator()
 
@property  (strong,nonatomic)  NSArray  *arr;
@property  (assign,nonatomic)  NSInteger position;
 
@end

@implementation CountryIterator

-(instancetype)initWithData:(NSArray *)data{
    self=[super init];
    if (self) {
        self.arr=data;
    }
    return self;
}
 
-(Boolean)hasNext{
    if (self.position>=[self.arr count]||!self.arr[self.position]) {
        return false;
    }else{
        return true;
    }
}
 
-(id)next{
    Book *book=self.arr[self.position];
    self.position+=1;
    return book;
}

@end
