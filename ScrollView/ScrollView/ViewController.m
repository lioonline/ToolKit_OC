//
//  ViewController.m
//  ScrollView
//
//  Created by Cocoa Lee on 15/7/15.
//  Copyright (c) 2015年 Cocoa Lee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIScrollView *scrollView = [[UIScrollView alloc] init];
//    scrollView.backgroundColor = [UIColor grayColor];
    scrollView.center = self.view.center;
    scrollView.bounds = CGRectMake(50, 100, CGRectGetWidth(self.view.bounds)-100, CGRectGetHeight(self.view.bounds)-200);
    [self.view addSubview:scrollView];
    scrollView.contentSize = CGSizeMake(scrollView.bounds.size.width * 6, scrollView.bounds.size.height);
    scrollView.pagingEnabled = YES;
    
    for (int i = 0; i < 5; i ++) {
        UIView *view = [UIView new];
        view.frame = CGRectMake(CGRectGetWidth(scrollView.bounds)*i + 30,50, CGRectGetWidth(scrollView.bounds)-60, CGRectGetHeight(scrollView.bounds)-100);
        view.backgroundColor = [UIColor colorWithRed:random()%256/255.0 green:random()%256/255.0 blue:random()%256/255.0 alpha:1];
        [scrollView addSubview:view];
        view.layer.cornerRadius = 10;
    }
    
    scrollView.clipsToBounds = NO;
//    self.view.backgroundColor = [UIColor grayColor];
    
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
