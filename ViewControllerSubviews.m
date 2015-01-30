//
//  ViewControllerSubviews.m
//  Labb1
//
//  Created by Johannes on 2015-01-23.
//  Copyright (c) 2015 Johannes. All rights reserved.
//

#import "ViewControllerSubviews.h"
#import "AppColors.h"

@interface ViewControllerSubviews ()
@property (weak, nonatomic) IBOutlet UIImageView *image;

@end

@implementation ViewControllerSubviews
- (IBAction)imageBlur {
    UIImage *blur = [UIImage imageNamed:@"meblur"];
    [self.image setImage:blur];
}

- (IBAction)imageThings {
    UIImage *noblur = [UIImage imageNamed:@"me"];
    [self.image setImage:noblur];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [AppColors appColors].backgroundColor;
    self.view.tintColor = [AppColors appColors].tintColor;
    // Do any additional setup after loading the view.
    
    
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
