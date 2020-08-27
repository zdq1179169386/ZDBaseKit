//
//  UIBarButtonItem+ZDAdd.h
//  ZDUIKit_Example
//
//  Created by qrh on 2018/9/7.
//  Copyright © 2018年 zdq1179169386. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, UIBarButtonItemType) {
    
    UIBarButtonItemType_None = 0,   //
    UIBarButtonItemType_Left = 1,   //左边
    UIBarButtonItemType_Right = 2   //右边
    
};

@interface UIBarButtonItem (ZDAdd)

/**
 根据文字初始化 UIBarButtonItem

 @param text text
 @param fontSize fontSize
 @param textColor textColor
 @param action action
 @return UIBarButtonItem
 */
-(instancetype)zd_initItemWithText:(NSString *)text fontSize:(CGFloat )fontSize textColor:(UIColor *)textColor action:(void(^)(UIButton * btn))action;

/**
 根据图片生成 UIBarButtonItem

 @param image image
 @param highlightImage highlightImage
 @param type left or right
 @param action action
 @return UIBarButtonItem
 */
-(instancetype)zd_initItemWithImage:(UIImage *)image highlightImage:(UIImage *)highlightImage type:(UIBarButtonItemType)type action:(void(^)(UIButton * btn))action;

@end
