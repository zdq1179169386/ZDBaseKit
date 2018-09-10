//
//  UIButton+ZDAdd.h
//  ZDUIKit_Example
//
//  Created by qrh on 2018/9/7.
//  Copyright © 2018年 zdq1179169386. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (ZDAdd)

/**
 快捷创建button

 @param configureBlock
 @param actionBlock 这个block里注意循环引用
 @return UIButton
 */
+ (instancetype )zd_allocButton:(void(^)(UIButton *btn))configureBlock action:(void(^)(UIButton *btn))actionBlock;


/**
 给button添加点击block

 @param actionBlock 
 */
- (void)zd_addTouchUpInsideEvent:(void(^)(UIButton *btn))actionBlock;

@end
