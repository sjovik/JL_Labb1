//
//  ViewController.m
//  Labb1
//
//  Created by Johannes on 2015-01-19.
//  Copyright (c) 2015 Johannes. All rights reserved.
//

#import "ViewController.h"
#import "AppColors.h"

@interface ViewController ()


@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}

- (void)viewWillAppear:(BOOL)animated {
    
    self.view.backgroundColor = [AppColors appColors].backgroundColor;
    self.view.tintColor = [AppColors appColors].tintColor;}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
