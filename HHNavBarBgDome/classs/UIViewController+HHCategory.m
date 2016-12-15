//
//  UIViewController+HHCategory.m
//  HHStatusBarBug
//
//  Created by caohuihui on 2016/12/15.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "UIViewController+HHCategory.h"
#import "NSObject+HHCategory.h"
#import <objc/runtime.h>

@implementation UIViewController (HHCategory)

+(void)load{
    [self hh_swizzleInstanceMethod:[self class] originSelector:@selector(viewWillLayoutSubviews) otherSelector:@selector(hh_viewWillLayoutSubviews)];
    [self hh_swizzleInstanceMethod:[self class] originSelector:@selector(viewDidAppear:) otherSelector:@selector(hh_viewDidAppear:)];
}

- (UINavigationBar *)hh_navBar{
    UINavigationBar *navBar = objc_getAssociatedObject(self, @selector(hh_navBar));
    return navBar;
}

- (void)setHh_navBar:(UINavigationBar *)hh_navBar{
    objc_setAssociatedObject(self, @selector(hh_navBar), hh_navBar, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


-(void)hh_viewDidAppear:(BOOL)animated{
    [self hh_navBarHidden:NO];
    [self.hh_navBar removeFromSuperview];
    [self hh_viewDidAppear:animated];
}


- (void)hh_viewWillLayoutSubviews{
    [self hh_showNavBar];
    [self hh_viewWillLayoutSubviews];
}

- (void)hh_showNavBar{
    if ([self isEqual:self.navigationController.viewControllers.lastObject] ) {
        if(!self.navigationController.navigationBarHidden){
            [self hh_navBarHidden:YES];
            self.view.clipsToBounds = NO;
            if(self.hh_navBar == nil){
                self.hh_navBar = [[UINavigationBar alloc]init];
               [self hh_copyNavBarBg:self.navigationController.navigationBar toNavBar:self.hh_navBar];
            }else{
                [self hh_copyNavBarBg:self.hh_navBar toNavBar:self.navigationController.navigationBar];
            }
            [self hh_adjustBarFrame];
            
            if (!self.hh_navBar.superview) {
                [self.view addSubview:self.hh_navBar];
            }
            
            [self.view bringSubviewToFront:self.hh_navBar];
        }
    }
}

- (void)hh_copyNavBarBg:(UINavigationBar *)orgNavBar toNavBar:(UINavigationBar *)toNaviBar{
    toNaviBar.tintColor = orgNavBar.tintColor;
    toNaviBar.barTintColor = orgNavBar.barTintColor;
    toNaviBar.backgroundColor = orgNavBar.backgroundColor;
    toNaviBar.barStyle = orgNavBar.barStyle;
    toNaviBar.translucent = orgNavBar.translucent;
    [toNaviBar setBackgroundImage:[orgNavBar backgroundImageForBarMetrics:UIBarMetricsDefault] forBarMetrics:UIBarMetricsDefault];
    toNaviBar.shadowImage = orgNavBar.shadowImage;
    
}

- (void)hh_adjustBarFrame{
    UIView *backgroundView = [self.navigationController.navigationBar valueForKey:@"_backgroundView"];
    CGRect rect = [backgroundView.superview convertRect:backgroundView.frame toView:self.view];
    self.hh_navBar.frame = rect;
}

- (void)hh_navBarHidden:(BOOL)hidden{
    UIView *backgroundView = [self.navigationController.navigationBar valueForKey:@"_backgroundView"];
    backgroundView.hidden = hidden;
}

@end
