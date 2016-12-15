//
//  UIImage+HHCategory.m
//  HHNavBarBgDome
//
//  Created by caohuihui on 2016/12/15.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "UIImage+HHCategory.h"

@implementation UIImage (HHCategory)
+ (UIImage *)hh_createImageFromColor:(UIColor *)color{
    CGRect imageRect = CGRectMake(0, 0, 1,1);
    UIGraphicsBeginImageContext(imageRect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, imageRect);
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;
}
@end
