//
//  AppColors.m
//  Labb1
//
//  Created by Johannes on 2015-01-23.
//  Copyright (c) 2015 Johannes. All rights reserved.
//


#import "AppColors.h"

@implementation AppColors

+(AppColors*) appColors {
    static  AppColors *appColorsInstance = nil;
    
    if (appColorsInstance == nil) {
        appColorsInstance = [[[self class] alloc] init];
        appColorsInstance.backgroundColor = [UIColor whiteColor];
        appColorsInstance.tintColor = [UIColor colorWithRed:0.0f green:0.0f blue:0.0f alpha:1.0f];
    }
    return appColorsInstance;
    
}

@end
