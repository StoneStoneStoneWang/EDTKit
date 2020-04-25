//
//  EDTLoadingViewController.h
//  TSUIKit
//
//  Created by three stone 王 on 2018/7/10.
//  Copyright © 2018年 three stone 王. All rights reserved.
//

@import EDTTransition;
typedef NS_ENUM(NSInteger,EDTLoadingStatus) {
    
    EDTLoadingStatusBegin,
    
    EDTLoadingStatusLoading,
    
    EDTLoadingStatusSucc,
    
    EDTLoadingStatusFail,
    
    EDTLoadingStatusReload
};

@protocol EDTLoadingViewDelegate <NSObject>

- (void)onReloadItemClick;

@end

@interface EDTLoadingView : UIView

+ (instancetype)loadingWithContentViewController:(EDTTViewController *)contentViewController;

/*
 设置加载状态
 EDTLoadingStatusBegin 请在viewwillappear里
 EDTLoadingStatusLoading 请在设置begin之后 viewwillappear里
 EDTLoadingStatusSucc 加载成功
 EDTLoadingStatusFail 加载失败
 EDTLoadingStatusReload 重新加载 屏幕上有 点击屏幕重新加载按钮
 */
@property (nonatomic ,assign ,readonly) BOOL isLoading;

@property (nonatomic ,assign)EDTLoadingStatus status;

- (void)changeLoadingStatus:(EDTLoadingStatus )status;

@property (nonatomic ,weak) id<EDTLoadingViewDelegate> mDelegate;


@end


@interface EDTLoadingViewController : EDTTViewController

@property (nonatomic ,strong ,readonly) EDTLoadingView *loadingView;

@property (nonatomic ,assign) EDTLoadingStatus loadingStatus;

// 重新加载
- (void)onReloadItemClick;

@end
