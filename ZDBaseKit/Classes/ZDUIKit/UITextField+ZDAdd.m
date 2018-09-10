//
//  UITextField+Add.m
//  8.16Demo
//
//  Created by qrh on 2018/8/16.
//  Copyright © 2018年 zdq. All rights reserved.
//

#import "UITextField+ZDAdd.h"
#import <objc/runtime.h>
@implementation UITextField (ZDAdd)

- (void)setZd_placeholderFont:(UIFont *)zd_placeholderFont
{
    objc_setAssociatedObject(self, @selector(zd_placeholderFont), zd_placeholderFont, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self zd_updatePlaceholder];
}
- (UIFont *)zd_placeholderFont
{
    return  objc_getAssociatedObject(self, @selector(zd_placeholderFont));
}
- (void)setZd_placeholderColor:(UIColor *)zd_placeholderColor
{
    objc_setAssociatedObject(self, @selector(zd_placeholderColor), zd_placeholderColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self zd_updatePlaceholder];
}
- (UIColor *)zd_placeholderColor{
  return   objc_getAssociatedObject(self, @selector(zd_placeholderColor));
}
#pragma mark - 更新 Placeholder
- (void)zd_updatePlaceholder
{
    if(self.placeholder.length<=0){
        return;
    }
    NSMutableDictionary *mdictProptery = [[NSMutableDictionary alloc] init];
    if(self.zd_placeholderFont){
        mdictProptery[NSFontAttributeName] = [self zd_placeholderFont];
    }
    else{
        mdictProptery[NSFontAttributeName] = self.font;
    }
    mdictProptery[NSForegroundColorAttributeName] = [self zd_placeholderColor];
    NSAttributedString *attrString = [[NSAttributedString alloc] initWithString:self.placeholder attributes:mdictProptery];
    [self setAttributedPlaceholder:attrString];
}

@end
