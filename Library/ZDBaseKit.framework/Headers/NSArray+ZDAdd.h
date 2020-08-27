//
//  NSArray+ZDAdd.h
//  ZDFoundation_Example
//
//  Created by qrh on 2018/9/10.
//  Copyright © 2018年 zdq1179169386. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (ZDAdd)

#pragma mark - 去除null

/**
 去除null 数据
 
 @return NSDictionary
 */
-(NSMutableArray *)zd_removeNull;

/**
 转成json string
 
 @return return value description
 */
- (NSString *)zd_toJson;
@end


#pragma --mark NSMutableArray setter

@interface NSMutableArray(ZDAdd)

/**
 安全的addObject，先判断nil
 
 @param anObject anObject description
 */
-(void)zd_addObject:(id)anObject;


@end
