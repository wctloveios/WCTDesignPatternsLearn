//
//  PersonBookLibrary.m
//  WCT设计模式-迭代器
//
//  Created by wct on 2020/12/10.
//

#import "PersonBookLibrary.h"
#import "Book.h"
#import "PersonIterator.h"

@interface PersonBookLibrary ()

@property (strong,nonatomic) NSMutableArray *books;

@end

@implementation PersonBookLibrary

- (instancetype)init {
    self = [super init];
    if (self) {
        [self addBook:@"PersonIterator" price:100];
        [self addBook:@"博客园-FlyElephant" price:200];
    }
    return self;
}

- (Iterator *)createIterator{
    return [[PersonIterator alloc] initWithData:self.books];
}
 
-(void)addBook:(NSString *)bookName price:(float)price{
    Book *book=[[Book alloc]init];
    book.bookName=bookName;
    book.price=price;
    [self.books addObject:book];
}
 
#pragma mark - getter and  setter
- (NSMutableArray *)books{
    if (!_books) {
        _books=[[NSMutableArray alloc]init];
    }
    return _books;
}

@end

