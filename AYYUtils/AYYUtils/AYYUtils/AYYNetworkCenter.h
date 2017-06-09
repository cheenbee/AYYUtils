//
//  AYYNetworkCenter.h
//  GW
//
//  Created by 艾呦呦 on 2017/5/15.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^AYYNetworkStatusChangeBlock)();
typedef void (^AYYNetworkStatusChange2ReachableBlock)();

@interface AYYNetworkCenter : NSObject

+ (instancetype)defaultCenter;

/**
 Method to get current network reachablity status.
 
 @return The network is reachable or not.
 */
+ (BOOL)isNetworkReachable;

/**
 *  start monitoring network
 */
- (void)startMonitoring;

/**
 *  实时监测网络状态改变
 */
- (void)networkReachabilityStatusChanged2Reachable:(AYYNetworkStatusChangeBlock)networkStatusChange2ReachableBlock
                              changed2NotReachable:(AYYNetworkStatusChangeBlock)networkStatusChange2NotReachableBlock;


@end
