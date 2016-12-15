//
//  NSObject+HHCategory.m
//  HHStatusBarBug
//
//  Created by caohuihui on 2016/12/15.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "NSObject+HHCategory.h"
#import <objc/runtime.h>

@implementation NSObject (HHCategory)
+ (void)hh_swizzleClassMethod:(Class)class originSelector:(SEL)originSelector otherSelector:(SEL)otherSelector
{
    Method otherMehtod = class_getClassMethod(class, otherSelector);
    Method originMehtod = class_getClassMethod(class, originSelector);
    // 交换2个方法的实现
    method_exchangeImplementations(otherMehtod, originMehtod);
}

+ (void)hh_swizzleInstanceMethod:(Class)class originSelector:(SEL)originSelector otherSelector:(SEL)otherSelector
{
    Method otherMehtod = class_getInstanceMethod(class, otherSelector);
    Method originMehtod = class_getInstanceMethod(class, originSelector);
    // 交换2个方法的实现
    method_exchangeImplementations(otherMehtod, originMehtod);
}
@end
