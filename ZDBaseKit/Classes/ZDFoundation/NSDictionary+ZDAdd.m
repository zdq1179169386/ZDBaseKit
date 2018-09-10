//
//  NSDictionary+ZDAdd.m
//  ZDFoundation_Example
//
//  Created by qrh on 2018/9/10.
//  Copyright © 2018年 zdq1179169386. All rights reserved.
//

#import "NSDictionary+ZDAdd.h"
#import "NSArray+ZDAdd.h"
@implementation NSDictionary (ZDAdd)

-(NSString *)zd_toJsonString
{
    NSData *dataJson = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:nil];
    NSString *jsonString = [[NSString alloc]initWithData:dataJson encoding:NSUTF8StringEncoding];
    jsonString = [jsonString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    return jsonString;
}

#pragma mark - 去除null
-(NSDictionary *)zd_removeNull
{
    NSMutableDictionary *mdictSelf = nil;
    if([self isKindOfClass:[NSMutableDictionary class]] || [self isKindOfClass:[NSDictionary class]]){
        if([self isKindOfClass:[NSDictionary class]]){
            mdictSelf = [[NSMutableDictionary alloc] initWithDictionary:self];
        }
        else{
            mdictSelf = (NSMutableDictionary *)self;
        }
        for(NSString *key in [mdictSelf allKeys]) {
            id object = mdictSelf[key];
            if([object isKindOfClass:[NSNull class]]) {
                mdictSelf[key] = nil;
            }
            else if ([object isKindOfClass:[NSString class]]){
                NSString *strobj = (NSString*)object;
                if ([strobj isEqualToString:@"<null>"]) {
                    mdictSelf[key] = nil;
                }
            }
            else if ([object isKindOfClass:[NSArray class]]){
                NSArray *subArray = (NSArray*)object;
                subArray = [subArray zd_removeNull];
                mdictSelf[key] = subArray;
            }
            else if ([object isKindOfClass:[NSDictionary class]]){
                NSDictionary *subDict = (NSDictionary*)object;
                subDict = [subDict zd_removeNull];
                mdictSelf[key] = subDict;
            }
        }
    }
    return mdictSelf;
}
@end

