//
//  NSTimer+ZDAdd.h
//  ZDFoundation_Example
//
//  Created by qrh on 2018/9/10.
//  Copyright © 2018年 zdq1179169386. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (ZDAdd)

/**
 定时器

 @param seconds
 @param repeats
 @param block
 @return
 */
+ (NSTimer *)zd_scheduledTimerWithTimeInterval:(NSTimeInterval)seconds repeats:(BOOL)repeats block:(void (^)(NSTimer *timer))block;

/**
 定时器

 @param seconds
 @param repeats
 @param block
 @return
 */
+ (NSTimer *)zd_timerWithTimeInterval:(NSTimeInterval)seconds repeats:(BOOL)repeats block:(void (^)(NSTimer *timer))block;

@end
