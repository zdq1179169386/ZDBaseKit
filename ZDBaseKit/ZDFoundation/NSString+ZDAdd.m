//
//  NSString+ZDAdd.m
//  ZDFoundation_Example
//
//  Created by qrh on 2018/9/10.
//  Copyright © 2018年 zdq1179169386. All rights reserved.
//

#import "NSString+ZDAdd.h"
#import "NSData+ZDAdd.h"

@implementation NSString (ZDAdd)

- (NSString *)md5String {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] md5String];
}
- (NSString *)base64EncodedString {
    return [[self dataUsingEncoding:NSUTF8StringEncoding] base64EncodedString];
}


- (CGSize)zd_sizeForFont:(UIFont *)font size:(CGSize)size
{
    CGSize result;
    if (!font) font = [UIFont systemFontOfSize:12];
    {
        NSMutableDictionary *attr = [NSMutableDictionary new];
        attr[NSFontAttributeName] = font;
        NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
        paragraphStyle.lineBreakMode = NSLineBreakByWordWrapping;
        attr[NSParagraphStyleAttributeName] = paragraphStyle;
        
        CGRect rect = [self boundingRectWithSize:size
                                         options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                      attributes:attr context:nil];
        result = rect.size;
    }
    return result;
}
- (CGFloat)zd_widthForFont:(UIFont *)font
{
    CGSize size = [self zd_sizeForFont:font size:CGSizeMake(HUGE, HUGE)];
    return size.width;
}

- (CGFloat)zd_heightForFont:(UIFont *)font width:(CGFloat)width
{
    CGSize size = [self zd_sizeForFont:font size:CGSizeMake(width, HUGE)];
    return size.height;
}


@end

