//
//  UIViewController+ZDAdd.m
//  Pods-ZDBaseKit_Example
//
//  Created by qrh on 2018/9/28.
//

#import "UIViewController+ZDAdd.h"
#import <objc/runtime.h>
#import "RSSwizzle.h"

@implementation UIViewController (ZDAdd)

+(void)load
{
    RSSwizzleInstanceMethod([UIViewController class], @selector(viewDidLoad), RSSWReturnType(void), RSSWArguments(), RSSWReplacement({
        [self zd_viewDidLoad];
        RSSWCallOriginal();
    }), RSSwizzleModeAlways, NULL);
    RSSwizzleInstanceMethod([UIViewController class], @selector(viewWillDisappear:), RSSWReturnType(void), RSSWArguments(BOOL animated), RSSWReplacement({
        [self zd_viewWillDisappear:animated];
        RSSWCallOriginal(animated);
    }), RSSwizzleModeAlways, NULL);
}

- (void)zd_viewDidLoad{
    self.zd_firstAppear = YES;
}
- (void)zd_viewWillDisappear:(BOOL )animated{
    self.zd_firstAppear = NO;
}
-(BOOL)zd_firstAppear
{
    return [objc_getAssociatedObject(self, @selector(zd_firstAppear)) boolValue];
}
- (void)setZd_firstAppear:(BOOL)zd_firstAppear{
    objc_setAssociatedObject(self, @selector(zd_firstAppear), @(zd_firstAppear), OBJC_ASSOCIATION_ASSIGN);
}

@end
