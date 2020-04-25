//
//  EDTShareManager.h
//  EDTShare
//
//  Created by 王磊 on 2020/4/25.
//  Copyright © 2020 王磊. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

NS_ASSUME_NONNULL_BEGIN
NS_SWIFT_NAME(EDTShare)
@interface EDTShareManager : NSObject

+ (void)EDTShareDownloadWithFrom:(UIViewController * _Nonnull)from
                      andAppleId:(NSString * _Nonnull)appleId
                    andShareIcon:(NSString * _Nonnull)shareIcon;


+ (void)EDTShareWithFrom:(UIViewController * _Nonnull)from
            andUrlString:(NSString * _Nonnull)urlString
            andShareIcon:(NSString * _Nonnull)shareIcon;
@end

NS_ASSUME_NONNULL_END
