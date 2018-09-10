//
//  NSDictionary+ZDAdd.h
//  ZDFoundation_Example
//
//  Created by qrh on 2018/9/10.
//  Copyright © 2018年 zdq1179169386. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (ZDAdd)
/**
 转成json字符串
 
 @return NSString
 */
-(NSString *)zd_toJsonString;

#pragma mark - 去除null

/**
 去除null 数据
 
 @return NSDictionary
 */
-(NSDictionary *)zd_removeNull;

@end
