//
//  EDTImage.h
//  EDTImage
//
//  Created by 王磊 on 2020/4/25.
//  Copyright © 2020 王磊. All rights reserved.
//

#import <Foundation/Foundation.h>

//! Project version number for EDTImage.
FOUNDATION_EXPORT double EDTImageVersionNumber;

//! Project version string for EDTImage.
FOUNDATION_EXPORT const unsigned char EDTImageVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <EDTImage/PublicHeader.h>


#import <EDTImage/EDTImageCata.h>

#define EDTIMAGECREATE(name) [UIImage imageNamed: name]
