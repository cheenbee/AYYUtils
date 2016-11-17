//
//  AYYAppRate.m
//  AYYUtils
//
//  Created by 艾呦呦 on 16/11/17.
//  Copyright © 2016年 AYY. All rights reserved.
//  Rate App

#import "AYYAppRate.h"

@implementation AYYAppRate
/**
 *  应用评分
 *
 *  @param appID appID
 */
+ (void)rateApp:(NSString *)appID {
    NSString *itunesUrlStr = [NSString stringWithFormat:@"itms-apps://itunes.apple.com/app/id%@", appID];
    UIApplication *application = [UIApplication sharedApplication];
    NSURL *itunesUrl = [NSURL URLWithString:itunesUrlStr];
    if ([application canOpenURL:itunesUrl]) {
        [application openURL:itunesUrl];
    }
}
@end
