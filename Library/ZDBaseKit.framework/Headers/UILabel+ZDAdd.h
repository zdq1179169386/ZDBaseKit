//
//  UILabel+ZDAdd.h
//  ZDUIKit_Example
//
//  Created by qrh on 2018/9/7.
//  Copyright © 2018年 zdq1179169386. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (ZDAdd)

/**
 快捷创建label
 @param configureBlock block 会返回label
 @return UILabel
 */
+ (instancetype)zd_allocLable:(void (^)(UILabel* label))configureBlock;

@end
