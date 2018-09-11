//
//  NSNotificationCenter+ZDAdd.h
//  ZDFoundation_Example
//
//  Created by qrh on 2018/9/10.
//  Copyright © 2018年 zdq1179169386. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNotificationCenter (ZDAdd)

/**
 在主线程发送通知

 @param notification notification
 */
- (void)zd_postNotificationOnMainThread:(NSNotification *)notification;
@end
