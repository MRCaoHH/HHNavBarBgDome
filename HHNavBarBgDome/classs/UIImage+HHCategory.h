//
//  UIImage+HHCategory.h
//  HHNavBarBgDome
//
//  Created by caohuihui on 2016/12/15.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (HHCategory)
/**
 *  @brief  根据颜色生成图片默认图片大小为(1,1)
 *
 *  @param color  颜色
 *
 *  @return 图片
 */
+ (UIImage *)hh_createImageFromColor:(UIColor *)color;
@end
