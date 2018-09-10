//
//  NSDate+ZDAdd.h
//  ZDFoundation_Example
//
//  Created by qrh on 2018/9/10.
//  Copyright © 2018年 zdq1179169386. All rights reserved.
//   第三库 DateTools 功能比较丰富

#import <Foundation/Foundation.h>

@interface NSDate (ZDAdd)


/**
 
 @param format @"yyyy-MM-dd HH:mm:ss"
 
 @return NSString
 */
- (nullable NSString *)zd_stringWithFormat:(NSString *)format;

/**
 @param format    String representing the desired date format.
 e.g. @"yyyy-MM-dd HH:mm:ss"
 @param timeZone  Desired time zone.
 @param locale    Desired locale.
 @return NSString representing the formatted date string.
 */
- (nullable NSString *)zd_stringWithFormat:(NSString *)format
                               timeZone:(nullable NSTimeZone *)timeZone
                                 locale:(nullable NSLocale *)locale;


/**
 

 @param dateString
 @param format NSDate
 @return
 */
+ (nullable NSDate *)zd_dateWithString:(NSString *)dateString format:(NSString *)format;

/**
 

 @param dateString
 @param format
 @param timeZone
 @param locale
 @return NSDate
 */
+ (nullable NSDate *)zd_dateWithString:(NSString *)dateString
                             format:(NSString *)format
                           timeZone:(nullable NSTimeZone *)timeZone
                             locale:(nullable NSLocale *)locale;

@end
