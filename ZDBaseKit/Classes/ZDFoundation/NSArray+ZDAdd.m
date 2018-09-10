//
//  NSArray+ZDAdd.m
//  ZDFoundation_Example
//
//  Created by qrh on 2018/9/10.
//  Copyright © 2018年 zdq1179169386. All rights reserved.
//

#import "NSArray+ZDAdd.h"
#import "NSDictionary+ZDAdd.h"
@implementation NSArray (ZDAdd)

-(NSMutableArray *)zd_removeNull
{
    NSMutableArray *marraySelf = nil;
    if([self isKindOfClass:[NSMutableArray class]] || [self isKindOfClass:[NSArray class]]){
        if([self isKindOfClass:[NSArray class]]){
            marraySelf = [[NSMutableArray alloc] initWithArray:self];
        }
        else{
            marraySelf = (NSMutableArray *)self;
        }
        for (NSInteger i=0; i<[marraySelf count]; i++) {
            NSDictionary *dictItem = marraySelf[i];
            dictItem = [dictItem zd_removeNull];
            [marraySelf replaceObjectAtIndex:i withObject:dictItem];
        }
    }
    return marraySelf;
}
- (NSString *)zd_toJson
{
    if(self.count<=0){
        return nil;
    }
    NSError *error = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:&error];
    if(!jsonData || error){
        NSLog(@"err:%@",[error description]);
        return nil;
    }
    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    jsonString = [jsonString stringByReplacingOccurrencesOfString:@"\n  " withString:@""];
    jsonString = [jsonString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    return jsonString;
}
@end


#pragma --mark NSMutableArray setter
@implementation NSMutableArray (ZDAdd)
-(void)zd_addObject:(id)anObject
{
    if(anObject!=nil) {
        [self addObject:anObject];
    }
}
@end
