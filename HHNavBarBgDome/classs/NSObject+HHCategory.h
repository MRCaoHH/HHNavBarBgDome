//
//  NSObject+HHCategory.h
//  HHStatusBarBug
//
//  Created by caohuihui on 2016/12/15.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (HHCategory)
+ (void)hh_swizzleClassMethod:(Class)class originSelector:(SEL)originSelector otherSelector:(SEL)otherSelector;
+ (void)hh_swizzleInstanceMethod:(Class)class originSelector:(SEL)originSelector otherSelector:(SEL)otherSelector;
@end
