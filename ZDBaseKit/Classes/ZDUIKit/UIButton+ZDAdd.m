//
//  UIButton+ZDAdd.m
//  ZDUIKit_Example
//
//  Created by qrh on 2018/9/7.
//  Copyright © 2018年 zdq1179169386. All rights reserved.
//

#import "UIButton+ZDAdd.h"
#import <objc/runtime.h>
static char * actionBlockKey;
@implementation UIButton (ZDAdd)

+ (instancetype )zd_allocButton:(void(^)(UIButton *btn))configureBlock action:(void(^)(UIButton *btn))actionBlock;
{
    UIButton * button = [self buttonWithType:UIButtonTypeCustom];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    if (configureBlock) {
        configureBlock(button);
    }
    [button zd_addTouchUpInsideEvent:actionBlock];
    return button;
}
- (void)zd_addTouchUpInsideEvent:(void(^)(UIButton *btn))actionBlock;
{
    objc_setAssociatedObject(self, &actionBlockKey, actionBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addTarget:self action:@selector(btnCallBlock:) forControlEvents:UIControlEventTouchUpInside];
}
- (void)btnCallBlock:(UIButton *)button
{
    void(^ actionBlock)(UIButton * btn) = objc_getAssociatedObject(self, &actionBlockKey);
    if (actionBlock) {
        actionBlock(button);
    }
}
@end
