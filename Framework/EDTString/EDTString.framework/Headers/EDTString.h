//
//  EDTString.h
//  EDTString
//
//  Created by 王磊 on 2020/4/25.
//  Copyright © 2020 王磊. All rights reserved.
//

#import <Foundation/Foundation.h>

//! Project version number for EDTString.
FOUNDATION_EXPORT double EDTStringVersionNumber;

//! Project version string for EDTString.
FOUNDATION_EXPORT const unsigned char EDTStringVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <EDTString/PublicHeader.h>


#import <EDTString/EDTStringExtensions.h>

#define EDT_COLOR_FORMAT_STRING(arg1,arg2) [NSString stringWithFormat:@"%@%@",arg1,arg2]
