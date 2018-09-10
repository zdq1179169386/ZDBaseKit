//
//  UIColor+ZDAdd.m
//  ZDUIKit_Example
//
//  Created by qrh on 2018/9/3.
//  Copyright © 2018年 zdq1179169386. All rights reserved.
//

#import "UIColor+ZDAdd.h"

@implementation UIColor (ZDAdd)
#pragma mark - other
+ (UIColor *)zd_colorWithRGB:(uint32_t)rgbValue
{
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16) / 255.0f
                           green:((rgbValue & 0xFF00) >> 8) / 255.0f
                            blue:(rgbValue & 0xFF) / 255.0f
                           alpha:1];
}
#pragma mark - other
+ (UIColor *)zd_colorWithRGB:(uint32_t)rgbValue alpha:(CGFloat)alpha
{
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16) / 255.0f
                           green:((rgbValue & 0xFF00) >> 8) / 255.0f
                            blue:(rgbValue & 0xFF) / 255.0f
                           alpha:alpha];
}

#pragma mark - other
+ (UIColor *)zd_colorWithHexString:(NSString*)hexStr;
{
    if (hexStr.length < 6)
    return nil;
    
    if ([hexStr hasPrefix:@"#"]) {
        hexStr = [hexStr substringFromIndex:1];
    }
    unsigned int _red, _green, _blue;
    NSRange exceptionRange;
    exceptionRange.length = 2;
    //red
    exceptionRange.location = 0;
    [[NSScanner scannerWithString:[hexStr substringWithRange:exceptionRange]] scanHexInt:&_red];
    //green
    exceptionRange.location = 2;
    [[NSScanner scannerWithString:[hexStr substringWithRange:exceptionRange]] scanHexInt:&_green];
    //blue
    exceptionRange.location = 4;
    [[NSScanner scannerWithString:[hexStr substringWithRange:exceptionRange]] scanHexInt:&_blue];
    
    UIColor* resultColor = [UIColor colorWithRed:_red/255. green:_green/255. blue:_blue/255. alpha:1.];
    return resultColor;
}
#pragma mark - randomColor
+ (UIColor *)zd_randomColor;
{
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  // 0.5 to 1.0,away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //0.5 to 1.0,away from black
    return [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
}
@end
