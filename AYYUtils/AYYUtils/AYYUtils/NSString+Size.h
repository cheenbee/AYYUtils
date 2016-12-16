//
//  NSString+Size.h
//  GW
//
//  Created by 艾呦呦 on 16/9/26.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Size)

- (CGFloat)widthWithStringAttributes:(NSDictionary<NSString *,id> *)attrs;
- (CGFloat)heightWithStringAttributes:(NSDictionary<NSString *,id> *)attrs;
- (CGSize)sizeWithStringAttributes:(NSDictionary<NSString *,id> *)attrs;

- (CGSize)boundingStringSizeWithSize:(CGSize)size
                             options:(NSStringDrawingOptions)options
                          attributes:(NSDictionary<NSString *,id> *)attributes
                             context:(NSStringDrawingContext *)context;

- (CGFloat)boundingStringWidthWithSize:(CGSize)size
                             options:(NSStringDrawingOptions)options
                          attributes:(NSDictionary<NSString *,id> *)attributes
                             context:(NSStringDrawingContext *)context;

- (CGFloat)boundingStringHeightWithSize:(CGSize)size
                             options:(NSStringDrawingOptions)options
                          attributes:(NSDictionary<NSString *,id> *)attributes
                             context:(NSStringDrawingContext *)context;

@end
