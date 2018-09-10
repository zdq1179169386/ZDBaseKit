//
//  UINavigationController+ZDAdd.m
//  ZDUIKit_Example
//
//  Created by qrh on 2018/9/10.
//  Copyright © 2018年 zdq1179169386. All rights reserved.
//

#import "UINavigationController+ZDAdd.h"

@implementation UINavigationController (ZDAdd)

+(instancetype)zd_initWithRootController:(NSString *)vcClassName;
{
    Class  rootVC = NSClassFromString(vcClassName);
    if (!rootVC) {
        return nil;
    }
    UIViewController * vc = [rootVC new];
    UINavigationController * nav = [[[self class] alloc] initWithRootViewController:vc];
    return nav;
}
- (void)zd_pushController:(NSString *)controllerName animated:(BOOL)animated;
{
    Class  controllerClass = NSClassFromString(controllerName);
    if (!controllerClass) {
        return;
    }
    UIViewController * vc = [[controllerClass alloc] init];
    [self pushViewController:vc animated:animated];
}
@end
