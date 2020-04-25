//
//  EDTColor.h
//  EDTColor
//
//  Created by 王磊 on 2020/4/25.
//  Copyright © 2020 王磊. All rights reserved.
//

#import <Foundation/Foundation.h>

//! Project version number for EDTColor.
FOUNDATION_EXPORT double EDTColorVersionNumber;

//! Project version string for EDTColor.
FOUNDATION_EXPORT const unsigned char EDTColorVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <EDTColor/PublicHeader.h>

#import <EDTColor/UIColor+EDT.h>

#define EDTColorCreate(hexValue) [UIColor EDT_transformToColorByHexValue:hexValue]

#define EDTAlphaColorCreate(hexValue) [UIColor EDT_transformTo_AlphaColorByHexValue:hexValue]
