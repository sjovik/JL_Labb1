//
//  ViewController.m
//  Labb1
//
//  Created by Johannes on 2015-01-19.
//  Copyright (c) 2015 Johannes. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *color;

@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;


@end

@implementation ViewController

- (UIColor*) checkColor {
    return [UIColor colorWithRed:self.redSlider.value
                           green:self.greenSlider.value
                            blue:self.blueSlider.value
                           alpha:1.0f];
}

- (IBAction)sliderChanged:(id)sender {
    self.color.backgroundColor = [self checkColor];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self sliderChanged:nil];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
