//
//  EDTTextInnerViewController.h
//  ZTextInner
//
//  Created by three stone 王 on 2020/3/26.
//  Copyright © 2020 three stone 王. All rights reserved.
//

@import EDTLoading;

NS_ASSUME_NONNULL_BEGIN

@interface EDTTextInnerViewController : EDTLoadingViewController

- (void)EDTLoadHtmlString:(NSString *)htmlString NS_SWIFT_NAME(EDTLoadHtmlString(htmlString:));

@property (nonatomic ,strong ,readonly) UITextView *textView;

@end

NS_ASSUME_NONNULL_END
