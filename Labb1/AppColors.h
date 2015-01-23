//
//  AppColors.h
//  Labb1
//
//  Created by Johannes on 2015-01-23.
//  Copyright (c) 2015 Johannes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AppColors : NSObject

@property (nonatomic) UIColor *backgroundColor;
@property (nonatomic) UIColor *tintColor;
@property (nonatomic) BOOL hasChanged;


+ (AppColors*) appColors;

@end
