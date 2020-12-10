//
//  ViewController.m
//  WCT设计模式-迭代器
//
//  Created by wct on 2020/12/10.
//

#import "ViewController.h"
#import "BookLibrary.h"
#import "PersonIterator.h"
#import "PersonBookLibrary.h"
#import "CountryBookLibrary.h"
#import "Iterator.h"
#import "Book.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /*
     自定义迭代器
     【1】质保路一些列的增删改查接口，看不到内部逻辑
     */
    [self iteratorDesign];
    
    
    /*
     系统迭代器：基本够用，除非做特别负责的存储，一般来说够用了
     */
}

- (void)iteratorDesign{
    BookLibrary *personLibrary=[[PersonBookLibrary alloc]init];
    Iterator    *personIterator=[personLibrary createIterator];
    [self logLibraryInfo:personIterator];
     
    BookLibrary *countryLibrary=[[CountryBookLibrary alloc]init];
    Iterator    *countryIterator=[countryLibrary createIterator];
    [self logLibraryInfo:countryIterator];
}
 
- (void)logLibraryInfo:(Iterator *)iterator{
    while ([iterator hasNext]) {
        Book *book=[iterator next];
        NSLog(@"书名:%@--价格:%f",book.bookName,book.price);
    }
}

@end
