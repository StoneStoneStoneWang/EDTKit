//
//  EDTLocation.h
//  WLThirdUtilDemo
//
//  Created by three stone 王 on 2019/5/27.
//  Copyright © 2019 three stone 王. All rights reserved.
//

#import <Foundation/Foundation.h>
@import AMapLocationKit;
@import CoreLocation;

NS_ASSUME_NONNULL_BEGIN

typedef void(^EDTLocationBlock)(CLLocation *_Nullable location);

@interface EDTLocation : NSObject

@property (nonatomic ,strong ,readonly) AMapLocationManager *EDTAmlocation;

@property (nonatomic ,strong ,readonly) CLLocationManager *cllocation;

- (void)requestLocationWithReGeocodeWithCompletionBlock:(AMapLocatingCompletionBlock)completionBlock;

@property (nonatomic ,assign) CLAuthorizationStatus authStatus;

// 开始定位
- (void)EDTStartLocation:(EDTLocationBlock )location;

// 停止定位
- (void)EDTStopLocation;

@end

NS_ASSUME_NONNULL_END
