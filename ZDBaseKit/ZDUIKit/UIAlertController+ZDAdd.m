//
//  UIAlertController+ZDAdd.m
//  ZDUIKit_Example
//
//  Created by qrh on 2018/9/7.
//  Copyright © 2018年 zdq1179169386. All rights reserved.
//

#import "UIAlertController+ZDAdd.h"

@implementation UIAlertController (ZDAdd)

+ (instancetype)zd_showAlert:(NSString *)title message:(NSString *)message actionBlock:(void(^)(NSInteger btnIndex) )actionBlock cancelButtonTitle:(NSString *)cancelBtnTitle otherButtonTitles:(NSString *)otherBtnTitles, ...
{
    UIAlertController * alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    //添加按钮
    if (cancelBtnTitle.length>0) {
        UIAlertAction * cancelAction = [UIAlertAction actionWithTitle:cancelBtnTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            if (actionBlock) {
                actionBlock(0);
            }
        }];
        [alertController addAction:cancelAction];
    }
    if (otherBtnTitles.length>0) {
        UIAlertAction *otherActions = [UIAlertAction actionWithTitle:otherBtnTitles style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            if (actionBlock) {
                actionBlock(1);
            }
        }];
        [alertController addAction:otherActions];
        
        /**
         *  va_list : （1）首先在函数里定义一具VA_LIST型的变量，这个变量是指向参数的指针；
         *            （2）然后用VA_START宏初始化变量刚定义的VA_LIST变量；
         *            （3）然后用VA_ARG返回可变的参数，VA_ARG的第二个参数是你要返回的参数的类型（如果函数有多个可变参数的，依次调用VA_ARG获取各个参数）；
         *            （4）最后用VA_END宏结束可变参数的获取。
         *   va_start :获取可变参数列表的第一个参数的地址;
         *   va_arg :获取当前参数，返回指定类型并将指针指向下一参数
         *   va_end :清空va_list可变参数列表：
         *
         *
         */
        
        va_list args;
        va_start(args, otherBtnTitles);
        if (otherBtnTitles.length) {
            NSString * otherString;
            NSInteger index = 1;
            while ((otherString = va_arg(args, NSString*))) {
                index ++ ;
                UIAlertAction * otherActions = [UIAlertAction actionWithTitle:otherString style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                    if (actionBlock) {
                        actionBlock(index);
                    }
                }];
                [alertController addAction:otherActions];
            }
        }
        va_end(args);
    }
    return alertController;
}
+ (instancetype)zd_showActionSheet:(NSString *)title actionBlock:(void(^)(NSInteger btnIndex) )actionBlock cancelButtonTitle:(NSString *)cancelBtnTitle otherButtonTitles:(NSString *)otherBtnTitles, ...;
{
    UIAlertController * alertVC = [UIAlertController alertControllerWithTitle:title message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    if (cancelBtnTitle.length > 0) {
        UIAlertAction * cancelAction = [UIAlertAction actionWithTitle:cancelBtnTitle style:(UIAlertActionStyleCancel) handler:^(UIAlertAction * _Nonnull action) {
            if (actionBlock) {
                actionBlock(0);
            }
        }];
        [alertVC addAction:cancelAction];
    }
    
    if (otherBtnTitles.length > 0) {
        UIAlertAction *otherActions = [UIAlertAction actionWithTitle:otherBtnTitles style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            if (actionBlock) {
                actionBlock(1);
            }
        }];
        [alertVC addAction:otherActions];
        va_list args;
        va_start(args, otherBtnTitles);
        if (otherBtnTitles.length > 0) {
            NSString * otherStr;
            NSInteger index = 1;
            while ((otherStr = va_arg(args, NSString *))) {
                index++;
                UIAlertAction *otherActions = [UIAlertAction actionWithTitle:otherBtnTitles style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
                    if (actionBlock) {
                        actionBlock(index);
                    }
                }];
                [alertVC addAction:otherActions];
            }
        }
        va_end(args);
    }
    return alertVC;
}



@end
