//
//  UINavigationBar+HHCategory.m
//  HHNavBarBgDome
//
//  Created by caohuihui on 2016/12/15.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "UINavigationBar+HHCategory.h"
#import "UIImage+HHCategory.h"

@implementation UINavigationBar (HHCategory)
- (void)hh_setBackgroundColor:(UIColor *)color shadownColor:(UIColor *)shadownColor{
    [self setBackgroundImage:[UIImage hh_createImageFromColor:color] forBarMetrics:UIBarMetricsDefault];
    
    UIImage *img = [UIImage hh_createImageFromColor:shadownColor?:color];
    [self setShadowImage:img];
}
@end
