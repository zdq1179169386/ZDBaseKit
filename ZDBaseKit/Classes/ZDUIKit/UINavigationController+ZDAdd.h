//
//  UINavigationController+ZDAdd.h
//  ZDUIKit_Example
//
//  Created by qrh on 2018/9/10.
//  Copyright © 2018年 zdq1179169386. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (ZDAdd)

/**
 初始化rootController

 @param vcClassName vcClassName
 @return UINavigationController
 */
+(instancetype)zd_initWithRootController:(NSString *)vcClassName;

/**
 push

 @param controllerName controllerName
 @param animated  animated
 */
- (void)zd_pushController:(NSString *)controllerName animated:(BOOL)animated;

@end
