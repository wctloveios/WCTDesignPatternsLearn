//
//  CountryBookLibrary.m
//  WCT设计模式-迭代器
//
//  Created by wct on 2020/12/10.
//

#import "CountryBookLibrary.h"
#import "Book.h"
#import "CountryIterator.h"

@interface CountryBookLibrary ()

@property (strong,nonatomic) NSArray *bookArr;

@end

@implementation CountryBookLibrary

- (instancetype)init {
    self = [super init];
    if (self) {
       Book *one = [self addBook:@"CountryBookLibrary" price:10];
       Book *next = [self addBook:@"博客园-FlyElephant" price:20];
        self.bookArr = @[one,next];
    }
    return self;
}

- (Iterator *)createIterator{
    return [[CountryIterator alloc] initWithData:self.bookArr];
}

- (Book *)addBook:(NSString *)bookName price:(float)price {
    Book *book=[[Book alloc]init];
    book.bookName=bookName;
    book.price=price;
    return  book;
}

@end
