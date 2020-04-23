//
//  EDTNavigationController.h
//  ZNavi
//
//  Created by three stone 王 on 2019/8/22.
//  Copyright © 2019 three stone 王. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UINavigationBar+EDT.h"
#import "UIBarButtonItem+EDT.h"

NS_ASSUME_NONNULL_BEGIN

@protocol EDTNavigationConfig <NSObject>

@property (nonatomic ,assign) CGFloat EDTFontSize;

@property (nonatomic ,strong) UIColor *EDTNormalTitleColor;

@property (nonatomic ,strong) UIColor *EDTLoginTitleColor;

@property (nonatomic ,strong) UIColor *EDTNormalBackgroundColor;

@property (nonatomic ,strong) UIColor *EDTLoginBackgroundColor;

@property (nonatomic ,copy) NSString *EDTNormalBackImage;

@property (nonatomic ,copy) NSString *EDTLoginBackImage;

@end

@interface EDTNavigationController : UINavigationController

+ (void)initWithConfig:(id <EDTNavigationConfig>) config;

@end

NS_ASSUME_NONNULL_END
