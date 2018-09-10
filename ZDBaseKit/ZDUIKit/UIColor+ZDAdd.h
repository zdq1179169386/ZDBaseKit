//
//  UIColor+ZDAdd.h
//  ZDUIKit_Example
//
//  Created by qrh on 2018/9/3.
//  Copyright © 2018年 zdq1179169386. All rights reserved.
//

#import <UIKit/UIKit.h>
#ifndef ZDColorHex
#define ZDColorHex(colorStr) [UIColor zd_colorWithHexString:colorStr];
#endif
@interface UIColor (ZDAdd)

/**
 根据16进制创建颜色

 @param rgbValue 0x66ccff
 @return UIColor
 */
+ (UIColor *)zd_colorWithRGB:(uint32_t)rgbValue;


/**
 根据16进创建颜色

 @param rgbValue 0x66ccff
 @param alpha 0.0-1.0
 @return UIColor
 */
+ (UIColor *)zd_colorWithRGB:(uint32_t)rgbValue alpha:(CGFloat)alpha;

/**
 根据16进制字符串创建颜色

 @param hexStr #FFFF00
 @return UIColor
 */
+ (UIColor *)zd_colorWithHexString:(NSString*)hexStr;

/**
 随机颜色
 
 @return UIColor
 */
+ (UIColor *)zd_randomColor;

@end
