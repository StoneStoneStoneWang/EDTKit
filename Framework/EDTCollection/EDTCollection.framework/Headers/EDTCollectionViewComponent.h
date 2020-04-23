//
//  EDTCollectionViewComponent.h
//  EDTCollection
//
//  Created by 王磊 on 2020/4/23.
//  Copyright © 2020 王磊. All rights reserved.
//

@import UIKit;
NS_ASSUME_NONNULL_BEGIN

@interface EDTBaseCollectionViewCell : UICollectionViewCell

- (void)commitInit;

@end

@interface EDTCollectionFooterView : UICollectionReusableView

@end

@interface EDTCollectionHeaderView : UICollectionReusableView

@end

@interface EDTCollectionEmptyView : UIView

- (void)emptyShow;

- (void)emptyHidden;

@end

NS_ASSUME_NONNULL_END
