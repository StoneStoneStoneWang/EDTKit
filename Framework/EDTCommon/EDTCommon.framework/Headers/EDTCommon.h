//
//  EDTCommon.h
//  EDTCommon
//
//  Created by 王磊 on 2020/4/25.
//  Copyright © 2020 王磊. All rights reserved.
//

#import <Foundation/Foundation.h>

//! Project version number for EDTCommon.
FOUNDATION_EXPORT double EDTCommonVersionNumber;

//! Project version string for EDTCommon.
FOUNDATION_EXPORT const unsigned char EDTCommonVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <EDTCommon/PublicHeader.h

#define EDT_SCREEN [UIScreen mainScreen]

#define EDT_SCREEN_BOUNDS [UIScreen mainScreen].bounds

#define EDT_SCREEN_SIZE EDT_SCREEN_BOUNDS.size

#define EDT_SCREEN_WIDTH EDT_SCREEN_SIZE.width

#define EDT_SCREEN_HEIGHT EDT_SCREEN_SIZE.height

#define EDT_ISIPHONEX_UP (EDT_SCREEN_HEIGHT >= 812)

#define EDT_STATUSBAR_HEIGHT (EDT_ISIPHONEX_UP ? 44 : 20)

#define EDT_TOPLAYOUTGUARD (EDT_STATUSBAR_HEIGHT + 44)

#define EDT_TABBAR_HEIGHT (EDT_ISIPHONEX_UP ? 83 : 49)

#define EDT_SCREEN [UIScreen mainScreen]

#define EDT_VIEWCONTROLLER_HEIGHT CGRectGetHeight(self.view.bounds)

#define EDT_VIEWCONTROLLER_WIDTH CGRectGetWidth(self.view.bounds)

#define EDT_VIEW_HEIGHT CGRectGetHeight(self.bounds)

#define EDT_VIEW_WIDTH CGRectGetWidth(self.bounds)

#define EDT_DEVICE [UIDevice currentDevice]

#define EDT_DEVICE_NAME EDT_DEVICE.name

#define EDT_DEVICEOS EDT_DEVICE.systemName

#define EDT_DEVICEID EDT_DEVICE.identifierForVendor.UUIDString

#define EDT_IMAGEVIEW [UIImageView new]

#define EDT_LABEL [UILabel new]

#define EDT_VIEW [UIView new]

