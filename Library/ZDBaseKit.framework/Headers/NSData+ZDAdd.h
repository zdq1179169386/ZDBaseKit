//
//  NSData+ZDAdd.h
//  ZDFoundation_Example
//
//  Created by qrh on 2018/9/10.
//  Copyright © 2018年 zdq1179169386. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (ZDAdd)

/**
 MD5编码
 
 @return NSString
 */
- (NSString *)md5String;
/**
 base64编码
 
 @return NSString
 */

- (nullable NSString *)base64EncodedString;

@end
