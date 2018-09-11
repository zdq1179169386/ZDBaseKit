//
//  UIImage+ZDAdd.h
//  ZDUIKit_Example
//
//  Created by qrh on 2018/9/10.
//  Copyright © 2018年 zdq1179169386. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ZDAdd)

/**
 根据颜色生成图片

 @param color color
 @param imgSize imgSize
 @return UIImage
 */
+ (UIImage *)zd_imageWithColor:(UIColor *)color withSize:(CGSize )imgSize;

@end
