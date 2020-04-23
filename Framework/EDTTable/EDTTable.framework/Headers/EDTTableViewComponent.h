//
//  EDTTableView.h
//  EDTTable
//
//  Created by 王磊 on 2020/4/23.
//  Copyright © 2020 王磊. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface EDTEmptyView : UIView

- (void)emptyShow;

- (void)emptyHidden;

@end


typedef NS_ENUM(NSInteger ,EDTBottomLineType) {
    
    EDTBottomLineTypeNormal NS_SWIFT_NAME(normal),
    
    EDTBottomLineTypeNone NS_SWIFT_NAME(none) ,
    
    EDTBottomLineTypeCustom NS_SWIFT_NAME(custom)
};

@interface EDTBaseTableViewCell : UITableViewCell

@property (nonatomic ,strong ,readonly) UIImageView *bottomView;

@property (nonatomic ,assign) EDTBottomLineType bottomLineType;

- (void)commitInit;
@end

@interface EDTTableHeaderView : UIView

- (void)commitInit;

@end
NS_ASSUME_NONNULL_END
