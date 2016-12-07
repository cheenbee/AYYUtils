//
//  UIView+ViewController.h
//  AYYUtils
//
//  Created by 艾呦呦 on 16/12/7.
//  Copyright © 2016年 none. All rights reserved.
//  通过 UIView 获取 UIViewController

#import <UIKit/UIKit.h>

@interface UIView (ViewController)

/**
 *  获取 view 的 viewController
 *
 */
+ (UIViewController *)attachedViewControllerWithView:(UIView *)view;

@end
