//
//  UIView+ViewController.m
//  AYYUtils
//
//  Created by 艾呦呦 on 16/12/7.
//  Copyright © 2016年 none. All rights reserved.
//

#import "UIView+ViewController.h"

@implementation UIView (ViewController)

+ (UIViewController *)attachedViewControllerWithView:(UIView *)view {
    
    for (UIView *next = view.superview; next; next = next.superview) {
        UIResponder *nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)nextResponder;
        }
    }
    
    return nil;
}

@end

/**
 - nextResponder
 Returns the receiver's next responder, or nil if it has none.
 
 Declaration
 - (UIResponder *)nextResponder
 Return Value
 The next object in the responder chain to be presented with an event for handling.
 
 Discussion
 The UIResponder class does not store or set the next responder automatically, instead returning nil by default. Subclasses must override this method to set the next responder. UIView implements this method by returning the UIViewController object that manages it (if it has one) or its superview (if it doesn’t); UIViewController implements the method by returning its view’s superview; UIWindow returns the application object, and UIApplication returns nil.
 
 UIResponder 类不会自动存储和设置下一个响应者,默认返回 nil. 子类必须重写此方法设置 next responder. UIView 重写实现此方法,如果有一个 UIViewController 对象直接管理这个 UIView 就会返回管理它的 UIViewController对象, 相反返回这个 UIView 的 superView; UIViewController 重写实现此方法返回视图控制器 view 的 superView; UIWindow 会返回 application 对象, 还有 UIApplication 则会返回 nil.
 
 Availability
 Available in iOS 2.0 and later.
 */