//
//  EDTLoadingViewController.h
//  TSUIKit
//
//  Created by three stone 王 on 2018/7/10.
//  Copyright © 2018年 three stone 王. All rights reserved.
//

@import EDTTransition;
#import "EDTLoadingView.h"
@interface EDTLoadingViewController : EDTTViewController

@property (nonatomic ,strong ,readonly) EDTLoadingView *loadingView;

@property (nonatomic ,assign) EDTLoadingStatus loadingStatus;

// 重新加载
- (void)onReloadItemClick;

@end
