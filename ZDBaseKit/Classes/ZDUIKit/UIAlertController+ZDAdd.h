//
//  UIAlertController+ZDAdd.h
//  ZDUIKit_Example
//
//  Created by qrh on 2018/9/7.
//  Copyright © 2018年 zdq1179169386. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (ZDAdd)

/**
 alertView

 @param title
 @param message
 @param actionBlock
 @param cancelBtnTitle
 @param otherBtnTitles :一个或多个按钮标题，+ nil
 @return UIAlertController
 */
+ (instancetype)zd_showAlert:(NSString *)title message:(NSString *)message actionBlock:(void(^)(NSInteger btnIndex) )actionBlock cancelButtonTitle:(NSString *)cancelBtnTitle otherButtonTitles:(NSString *)otherBtnTitles, ...;

/**
 ActionSheet

 @param title
 @param actionBlock
 @param cancelBtnTitle
 @param otherBtnTitles :一个或多个按钮标题，+ nil
 @return UIAlertController
 */
+ (instancetype)zd_showActionSheet:(NSString *)title actionBlock:(void(^)(NSInteger btnIndex) )actionBlock cancelButtonTitle:(NSString *)cancelBtnTitle otherButtonTitles:(NSString *)otherBtnTitles, ...;

@end
