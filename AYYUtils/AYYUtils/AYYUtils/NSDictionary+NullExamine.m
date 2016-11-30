//
//  NSDictionary+NullExamine.m
//  AYYUtils
//
//  Created by AYY on 16/11/30.
//  Copyright © 2016年 none. All rights reserved.
//

#import "NSDictionary+NullExamine.h"

@implementation NSDictionary (NullExamine)

/**
 *  获取字典中指定的数组对象
 *
 *  @param aKey key
 *
 *  @return key 或 value 为空时,返回空数组
 */
- (NSArray *)arrayObjectForKey:(id)aKey {
    
    id value = [self objectForKey:aKey];
    
    if (value == nil || [value isKindOfClass:[NSNull class]]) {
        return [NSArray array];
    }
    
    return value;
}


/**
 *  获取字典中指定对象
 *
 *  @param aKey          key
 *  @param defaultObject 默认对象
 *
 *  @return key 或 value 为空时,返回默认值
 */
- (id)objectexamineForKey:(id)aKey defaultObject:(id)defaultObject {
    
    id value = [self objectForKey:aKey];
    if (value == nil || [value isKindOfClass:[NSNull class]]) {
        return defaultObject;
    }
    
    return value;
}

/**
 *  获取字典中指定的字符串
 *
 *  @param aKey key
 *
 *  @return key 或 value 为空时,返回空字符串
 */
- (NSString *)stringForKey:(id)aKey {
    return [self objectexamineForKey:aKey defaultObject:@""];
}

/**
 *  获取字典中指定的 NSNumber 对象
 *
 *  @param aKey key
 *
 *  @return key 或 value 为空时,返回 @0
 */
- (NSNumber *)numberForKey:(id)aKey {
    return [self objectexamineForKey:aKey defaultObject:@0];
}

@end
