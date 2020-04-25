//
//  EDTImageCata.h
//  EDTImage
//
//  Created by 王磊 on 2020/4/26.
//  Copyright © 2020 王磊. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (EDTCast)

+ (UIImage *)EDTTransformToImageForView:(UIView *)view;

+ (UIImage *)EDTTransformFromHexValue:(NSString *)hexValue;

+ (UIImage *)EDTTransformFromAlphaHexValue:(NSString *)hexValue;

+ (UIImage *)EDTTransformFromColor:(UIColor *)color;

@end

NS_ASSUME_NONNULL_END
