//
//  ViewControllerTheme.m
//  Labb1
//
//  Created by Johannes on 2015-01-22.
//  Copyright (c) 2015 Johannes. All rights reserved.
//

#import "ViewControllerTheme.h"
#import "AppColors.h"

@interface ViewControllerTheme ()


@property (weak, nonatomic) IBOutlet UIView *color;
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;
@property (weak, nonatomic) IBOutlet UISegmentedControl *backgroundTintSwitch;

@end

@implementation ViewControllerTheme

- (UIColor*) checkColor {
    return [UIColor colorWithRed:self.redSlider.value
                           green:self.greenSlider.value
                            blue:self.blueSlider.value
                           alpha:1.0f];
}

- (IBAction)sliderChanged:(id)sender {
    self.color.backgroundColor = [self checkColor];
}

- (IBAction)changeTheme:(id)sender {
    
    UIColor *setColor = [self checkColor];
    
    if (self.backgroundTintSwitch.selectedSegmentIndex == 0) {
        [AppColors appColors].backgroundColor = setColor;
        self.view.backgroundColor = setColor;
    } else {
        [AppColors appColors].tintColor = setColor;
        self.view.tintColor = setColor;
    }
    
    [AppColors appColors].hasChanged = YES;
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self sliderChanged:nil];
    

}

- (void)viewWillAppear:(BOOL)animated {
    
    self.view.backgroundColor = [AppColors appColors].backgroundColor;
    self.view.tintColor = [AppColors appColors].tintColor;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
