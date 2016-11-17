//
//  AYYAppRate.h
//  AYYUtils
//
//  Created by 艾呦呦 on 16/11/17.
//  Copyright © 2016年 AYY. All rights reserved.
//  给应用评分 (支持iOS7及以上)

#import <UIKit/UIKit.h>

@interface AYYAppRate : NSObject

/**
 *  应用评分
 *
 *  @param appID app在iTunes中的id
 */
+ (void)rateApp:(NSString *)appID;

@end
