//
//  UIBarButtonItem+ZDAdd.m
//  ZDUIKit_Example
//
//  Created by qrh on 2018/9/7.
//  Copyright © 2018年 zdq1179169386. All rights reserved.
//

#import "UIBarButtonItem+ZDAdd.h"
#import "UIButton+ZDAdd.h"
@implementation UIBarButtonItem (ZDAdd)
- (instancetype)zd_initItemWithText:(NSString *)text fontSize:(CGFloat )fontSize textColor:(UIColor *)textColor action:(void(^)(UIButton * btn))action;
{
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundColor:[UIColor clearColor]];
    if (!text) {
        text = @"";
    }
    [btn setTitle:text forState:UIControlStateNormal];
    [btn setTitleColor:textColor forState:UIControlStateNormal];
    if (!fontSize) {
        fontSize = 17;
    }
    btn.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    CGRect buttonFrame = CGRectZero;
    buttonFrame.size = [self sizeForText:text font:[UIFont systemFontOfSize:fontSize]];
    CGFloat fixWidth = 20;
    if (@available(iOS 11.0, *)) {
        fixWidth = 10;
    }
    buttonFrame.size.width += fixWidth;
    buttonFrame.size.height = 38;
    btn.frame = buttonFrame;
    [btn zd_addTouchUpInsideEvent:^(UIButton *btn) {
        if (action) {
            action(btn);
        }
    }];
    UIBarButtonItem * item = [[UIBarButtonItem alloc] initWithCustomView:btn];
    return item;
}
-(instancetype)zd_initItemWithImage:(UIImage *)image highlightImage:(UIImage *)highlightImage type:(UIBarButtonItemType)type action:(void(^)(UIButton * btn))action;
{
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundColor:[UIColor clearColor]];
    if (image) {
        [btn setImage:image forState:UIControlStateNormal];
        if (highlightImage) {
            [btn setImage:highlightImage forState:UIControlStateHighlighted];
        }
    }
    CGRect buttonFrame = CGRectMake(0, 0, 0, 38);
    if (type == UIBarButtonItemType_Left) {
        [btn setImageEdgeInsets:UIEdgeInsetsMake(0, -20, 0, 0)];
        
    }else if (type == UIBarButtonItemType_Right){
        [btn setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, -18)];
    }else{
        
    }
    CGFloat fixWidth = 30;
    if (@available(iOS 11.0, *)) {
        fixWidth = 10;
    }
    buttonFrame.size.width += image.size.width + fixWidth;
    btn.frame = buttonFrame;
    [btn zd_addTouchUpInsideEvent:^(UIButton *btn) {
        if (action) {
            action(btn);
        }
    }];
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}
- (CGSize)sizeForText:(NSString *)text font:(UIFont *)font
{
    if (!text) {
        text = @"";
    }
    if (!font) {
        font = [UIFont systemFontOfSize:12];
    }
    return [text sizeWithAttributes: @{NSFontAttributeName: font}];
}
@end
