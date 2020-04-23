//
//  EDTAMapViewController.h
//  ZFragment
//
//  Created by three stone 王 on 2019/8/29.
//  Copyright © 2019 three stone 王. All rights reserved.
//
#import <MAMapKit/MAMapKit.h>
@import EDTTransition;
#import "EDTConfig.h"
NS_ASSUME_NONNULL_BEGIN

@class EDTAMapView;
@class EDTLocation;

NS_SWIFT_NAME(EDTAMapViewController)
@interface EDTAMapTViewController : EDTTViewController <MAMapViewDelegate>

+ (instancetype)createAMapWithLat:(CLLocationDegrees )lat andLon:(CLLocationDegrees)lon;

@property (nonatomic ,strong ,readonly) EDTAMapView *EDTMapView;

@property (nonatomic ,strong ,readonly) EDTLocation *EDTLocation;

@property (nonatomic ,assign) CLLocationDegrees lat;

@property (nonatomic ,assign) CLLocationDegrees lon;

- (void)mapView:(MAMapView *)mapView didUpdateUserLocation:(MAUserLocation *)userLocation updatingLocation:(BOOL)updatingLocation;

- (void)mapView:(MAMapView *)mapView regionWillChangeAnimated:(BOOL)animated;

- (void)mapView:(MAMapView *)mapView didAddAnnotationViews:(NSArray *)views;

- (void)EDTFetchLocaiton:(CLLocation *)Location;

@end

NS_ASSUME_NONNULL_END
