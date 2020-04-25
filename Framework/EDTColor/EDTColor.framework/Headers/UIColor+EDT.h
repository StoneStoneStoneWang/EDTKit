//
//  UIColor+EDT.h
//  EDTColor
//
//  Created by 王磊 on 2020/4/25.
//  Copyright © 2020 王磊. All rights reserved.
//


@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (EDT)

+ (NSArray <NSNumber *>*)EDT_transformByHexValue:(NSString *)hexValue;

+ (UIColor *)EDT_transformToColorByHexValue:(NSString *)hexValue;

+ (UIColor *)EDT_transformTo_AlphaColorByHexValue:(NSString *)hexValue;

@end

NS_ASSUME_NONNULL_END
