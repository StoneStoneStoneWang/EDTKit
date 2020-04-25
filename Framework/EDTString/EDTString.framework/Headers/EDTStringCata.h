//
//  NSString+EDT.h
//  EDTString
//
//  Created by 王磊 on 2020/4/25.
//  Copyright © 2020 王磊. All rights reserved.
//


@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface NSString (EDTQR)

+ (CIImage *)createQRCodeWithUrlString:(NSString *)urlString;

+ (UIImage *)createNonInterpolatedUIImageWithCIImage:(CIImage *)image
                                             andSize:(CGFloat) size;

@end

@interface NSString (EDTEmpty)

- (BOOL)EDTEmpty;

//bool EDTisEmpty(NSString *argu);

- (BOOL)EDTEmptyByTrimming;

@end

@interface NSString (EDTValid)
/*
 @param phone
 @result 长度11 首位为1的手机号为真
 */
+ (BOOL)EDTValidPhone:(NSString *)phone;

- (BOOL)EDTValidPhone;

/*
 @param email
 @result 正则表达式
 */
+ (BOOL)EDTValidEmail:(NSString *)email;

- (BOOL)EDTValidEmail;


@end

typedef NS_ENUM(NSInteger ,EDTDateType) {

    EDTDateTypeFull , // yyyy-MM-dd hh:mm:ss

    EDTDateTypeLong, // yyyy-MM-dd hh:mm

    EDTDateTypeDate  // 下一个是时间 几分钟前。。 昨天 几天前
};

@interface NSString (EDTDateConvert)

- (NSString *)EDTConvertToDate;

- (NSString *)EDTConvertToDate:(EDTDateType )type;


@end
NS_ASSUME_NONNULL_END
