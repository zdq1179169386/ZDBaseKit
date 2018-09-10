//
//  UIView+ZDAdd.m
//  ZDUIKit_Example
//
//  Created by qrh on 2018/9/3.
//  Copyright © 2018年 zdq1179169386. All rights reserved.
//

#import "UIView+ZDAdd.h"

@implementation UIView (ZDAdd)
#pragma mark -- getter
-(CGFloat)zd_x
{
    return self.frame.origin.x;
}
-(CGFloat)zd_y
{
    return self.frame.origin.y;
}
- (CGFloat)zd_right
{
    return self.frame.size.width + self.frame.origin.x;
}
-(CGFloat)zd_bottom
{
    return self.frame.origin.y + self.frame.size.height;
}
- (CGFloat)zd_width
{
    return self.frame.size.width;
}
-(CGFloat)zd_height
{
    return self.frame.size.height;
}
- (CGSize)zd_size
{
    return self.frame.size;
}
-(CGFloat)zd_centerX
{
    return self.center.x;
}
- (CGFloat)zd_centerY
{
    return self.center.y;
}
- (CGPoint)zd_origin
{
    return self.frame.origin;
}
#pragma mark -- setter
-(void)setZd_x:(CGFloat)zd_x
{
    CGRect frame = self.frame;
    frame.origin.x = zd_x;
    self.frame = frame;
}
- (void)setZd_y:(CGFloat)zd_y
{
    CGRect frame = self.frame;
    frame.origin.y = zd_y;
    self.frame = frame;
}
-(void)setZd_right:(CGFloat)zd_right
{
    CGRect frame = self.frame;
    frame.origin.x = zd_right - frame.size.width;
    self.frame = frame;
}
- (void)setZd_bottom:(CGFloat)zd_bottom
{
    CGRect frame = self.frame;
    frame.origin.y = zd_bottom - frame.size.height;
    self.frame = frame;
}
-(void)setZd_width:(CGFloat)zd_width
{
    CGRect frame = self.frame;
    frame.size.width = zd_width;
    self.frame = frame;
}
-(void)setZd_height:(CGFloat)zd_height
{
    CGRect frame = self.frame;
    frame.size.height = zd_height;
    self.frame = frame;
}
-(void)setZd_size:(CGSize)zd_size
{
    CGRect frame = self.frame;
    frame.size = zd_size;
    self.frame = frame;
}
- (void)setZd_centerX:(CGFloat)zd_centerX
{
    self.center = CGPointMake(zd_centerX, self.center.y);
}
-(void)setZd_centerY:(CGFloat)zd_centerY
{
    self.center = CGPointMake(self.center.x, zd_centerY);
}
- (void)setZd_origin:(CGPoint)zd_origin
{
    CGRect frame = self.frame;
    frame.origin = zd_origin;
    self.frame = frame;
}
- (void)zd_removeAllSubViews;
{
    while (self.subviews.count) {
        [self.subviews.lastObject removeFromSuperview];
    }
}
@end
