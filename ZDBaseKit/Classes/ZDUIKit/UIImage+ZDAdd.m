//
//  UIImage+ZDAdd.m
//  ZDUIKit_Example
//
//  Created by qrh on 2018/9/10.
//  Copyright © 2018年 zdq1179169386. All rights reserved.
//

#import "UIImage+ZDAdd.h"

@implementation UIImage (ZDAdd)
+ (UIImage *)zd_imageWithColor:(UIColor *)color withSize:(CGSize )imgSize;
{
    //如果传的size是{0,0}
    if (CGSizeEqualToSize(CGSizeZero, imgSize)) {
        imgSize.width = 1.0f;
        imgSize.height = 1.0f;
    }
    CGRect rect = CGRectMake(0.0f, 0.0f, imgSize.width, imgSize.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage* theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}
@end
