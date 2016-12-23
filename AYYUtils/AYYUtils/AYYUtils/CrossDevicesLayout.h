//
//  CrossDevicesLayout.h
//  AYYUtils
//
//  Created by 艾呦呦 on 16/12/23.
//  Copyright © 2016年 apple. All rights reserved.
//  跨设备的尺寸转换

#ifndef CrossDevicesLayout_h
#define CrossDevicesLayout_h


// 设计屏幕尺寸 iPhone6
#define kDesignWidth                        (375.0f)
#define kDesignHeight                       (667.0f)

// 当前主屏幕尺寸
#define kScreenWidth                        [[UIScreen mainScreen] bounds].size.width
#define kScreenHeight                       [[UIScreen mainScreen] bounds].size.height

// 缩放因子 (当前屏幕宽高与设计屏幕宽高比)
#define kHorizontalScaleFactor              (kScreenWidth / kDesignWidth)
#define kVerticalScaleFactor                (kScreenHeight / kDesignHeight)

// 传入设计图上的数值 转换成跨设备的数值(向下取浮点数)
#define CGCrossDevicesX(x)                  floorf(x * kHorizontalScaleFactor)
#define CGCrossDevicesY(y)                  floorf(y * kVerticalScaleFactor)
#define CGCrossDevicesWidth(w)              floorf(w * kHorizontalScaleFactor)
#define CGCrossDevicesHeight(h)             floorf(h * kVerticalScaleFactor)
#define CGCrossDevicesPointMake(x, y)       CGPointMake(CGCrossDevicesX(x), CGCrossDevicesY(y))
#define CGCrossDevicesSizeMake(w, h)        CGSizeMake(CGCrossDevicesWidth(w), CGCrossDevicesHeight(h))
// 由于开发中的坐标原点不确定,所以设置 frame 时,使用 CGRectMake(x, y, w, h), 根据需求对其中的数值进行跨设备转换


#endif /* CrossDevicesLayout_h */