//
//  UIView+ZDAdd.h
//  ZDUIKit_Example
//
//  Created by qrh on 2018/9/3.
//  Copyright © 2018年 zdq1179169386. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ZDAdd)

@property (nonatomic) CGFloat zd_x;        ///< Shortcut for frame.origin.x.
@property (nonatomic) CGFloat zd_y;         ///< Shortcut for frame.origin.y
@property (nonatomic) CGFloat zd_right;       ///< Shortcut for frame.origin.x + frame.size.width
@property (nonatomic) CGFloat zd_bottom;      ///< Shortcut for frame.origin.y + frame.size.height
@property (nonatomic) CGFloat zd_width;       ///< Shortcut for frame.size.width.
@property (nonatomic) CGFloat zd_height;      ///< Shortcut for frame.size.height.
@property (nonatomic) CGFloat zd_centerX;     ///< Shortcut for center.x
@property (nonatomic) CGFloat zd_centerY;     ///< Shortcut for center.y
@property (nonatomic) CGPoint zd_origin;      ///< Shortcut for frame.origin.
@property (nonatomic) CGSize  zd_size;        ///< Shortcut for frame.size.


/**
 删除子视图
 */
- (void)zd_removeAllSubViews;
@end
