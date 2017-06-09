//
//  AYYNetworkCenter.m
//  GW
//
//  Created by 艾呦呦 on 2017/5/15.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "AYYNetworkCenter.h"
#import "AFNetworking.h"

@interface AYYNetworkCenter ()

@property (nonatomic, copy) AYYNetworkStatusChangeBlock networkStatusChange2ReachableBlock;
@property (nonatomic, copy) AYYNetworkStatusChangeBlock networkStatusChange2NotReachableBlock;

@end

@implementation AYYNetworkCenter

+ (instancetype)center {
    return [[[self class] alloc] init];
}

+ (instancetype)defaultCenter {
    static id sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [self center];
    });
    return sharedInstance;
}

/**
 Method to get current network reachablity status.
 
 @return The network is reachable or not.
 */
+ (BOOL)isNetworkReachable {
    
    return [AFNetworkReachabilityManager sharedManager].networkReachabilityStatus != 0;
}

/**
 *  start monitoring network
 */
- (void)startMonitoring {
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
}

/**
 *  实时监测网络状态改变
 */
- (void)networkReachabilityStatusChanged2Reachable:(AYYNetworkStatusChangeBlock)networkStatusChange2ReachableBlock
                              changed2NotReachable:(AYYNetworkStatusChangeBlock)networkStatusChange2NotReachableBlock {
    self.networkStatusChange2ReachableBlock = networkStatusChange2ReachableBlock;
    self.networkStatusChange2NotReachableBlock = networkStatusChange2NotReachableBlock;
    __weak __typeof(self)weakSelf = self;
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        __strong __typeof(weakSelf)strongSelf = weakSelf;
        if (status != 0) {
            strongSelf.networkStatusChange2ReachableBlock();
            
        } else {
            strongSelf.networkStatusChange2NotReachableBlock();
        }
    }];
}

@end
