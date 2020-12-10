//
//  Book.m
//  WCT设计模式-迭代器
//
//  Created by wct on 2020/12/10.
//

#import "Book.h"

@implementation Book

- (id)copyWithZone:(NSZone *)zone {
    Book *book = [[Book alloc] init];
    book.bookName = [_bookName copy];
    book.price = _price;
    return book;
}

@end
