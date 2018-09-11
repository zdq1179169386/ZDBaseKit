//
//  NSString+ZDAdd.h
//  ZDFoundation_Example
//
//  Created by qrh on 2018/9/10.
//  Copyright © 2018年 zdq1179169386. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ZDAdd)

/**
 MD5编码
 
 @return NSString
 */
- (nullable NSString *)md5String;

/**
 base64编码

 @return NSString
 */
- (nullable NSString *)base64EncodedString;

/**
 计算size

 @param font font
 @param size size
 @return NSString
 */
- (CGSize)zd_sizeForFont:(UIFont *)font size:(CGSize)size;
/**
 计算宽度
 
 @param font font
 @return CGFloat
 */
- (CGFloat)zd_widthForFont:(UIFont *)font;
/**
 计算高度
 
 @param font font
 @return CGFloat
 */
- (CGFloat)zd_heightForFont:(UIFont *)font width:(CGFloat)width;
@end
