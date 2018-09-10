//
//  UILabel+ZDAdd.m
//  ZDUIKit_Example
//
//  Created by qrh on 2018/9/7.
//  Copyright © 2018年 zdq1179169386. All rights reserved.
//

#import "UILabel+ZDAdd.h"

@implementation UILabel (ZDAdd)
+ (instancetype)zd_allocLable:(void (^)(UILabel* label))configureBlock;
{
    UILabel * label = [UILabel new];
    label.numberOfLines = 1;
    label.textAlignment = NSTextAlignmentLeft;
    label.lineBreakMode = NSLineBreakByTruncatingTail;
    if (configureBlock) {
        configureBlock(label);
    }
    return label;
}
@end
