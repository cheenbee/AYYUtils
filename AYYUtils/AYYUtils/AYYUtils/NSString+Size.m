//
//  NSString+Size.m
//  AYYUtils
//
//  Created by 艾呦呦 on 16/9/26.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "NSString+Size.h"

@implementation NSString (Size)

- (CGSize)sizeWithStringAttributes:(NSDictionary<NSString *,id> *)attrs {
    return [self sizeWithAttributes:attrs];
}

- (CGFloat)widthWithStringAttributes:(NSDictionary<NSString *,id> *)attrs {
    CGSize size = [self sizeWithStringAttributes:attrs];
    return size.width;
}

- (CGFloat)heightWithStringAttributes:(NSDictionary<NSString *,id> *)attrs {
    CGSize size = [self sizeWithStringAttributes:attrs];
    return size.height;
}

- (CGSize)boundingStringSizeWithSize:(CGSize)size
                             options:(NSStringDrawingOptions)options
                          attributes:(NSDictionary<NSString *,id> *)attributes
                             context:(NSStringDrawingContext *)context {
    CGRect boundingRect = [self boundingRectWithSize:size options:options attributes:attributes context:context];
    return boundingRect.size;
}

- (CGFloat)boundingStringWidthWithSize:(CGSize)size
                              options:(NSStringDrawingOptions)options
                           attributes:(NSDictionary<NSString *,id> *)attributes
                              context:(NSStringDrawingContext *)context {
    CGSize boundingSize = [self boundingStringSizeWithSize:size options:options attributes:attributes context:context];
    return boundingSize.width;
}

- (CGFloat)boundingStringHeightWithSize:(CGSize)size
                               options:(NSStringDrawingOptions)options
                            attributes:(NSDictionary<NSString *,id> *)attributes
                               context:(NSStringDrawingContext *)context {
    CGSize boundingSize = [self boundingStringSizeWithSize:size options:options attributes:attributes context:context];
    return boundingSize.height;
}

@end
