//
//  NSNotificationCenter+ZDAdd.m
//  ZDFoundation_Example
//
//  Created by qrh on 2018/9/10.
//  Copyright © 2018年 zdq1179169386. All rights reserved.
//

#import "NSNotificationCenter+ZDAdd.h"

@implementation NSNotificationCenter (ZDAdd)
- (void)zd_postNotificationOnMainThread:(NSNotification *)notification;
{
    if ([NSThread isMainThread]) {
        [self postNotification:notification];
    }else{
        [[self class] performSelectorOnMainThread:@selector(zd_postNotification:) withObject:notification waitUntilDone:NO];
    }
}
+ (void)zd_postNotification:(NSNotification *)notification{
    [[[self class] defaultCenter] postNotification:notification];
}
@end
