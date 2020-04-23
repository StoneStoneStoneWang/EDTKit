//
//  EDTCollectionViewController.h
//  EDTCollection
//
//  Created by 王磊 on 2020/4/23.
//  Copyright © 2020 王磊. All rights reserved.
//
@import EDTLoading;
@import MJRefresh;
#import "EDTCollectionViewComponent.h"
NS_ASSUME_NONNULL_BEGIN

@interface EDTCollectionNoLoadingViewController : EDTTViewController

@property (nonatomic ,strong ,readonly) UICollectionView *collectionView;

- (UICollectionView *)createCollectionWithLayout:(UICollectionViewFlowLayout *)layout;

- (UICollectionViewCell *)configCollectionViewCell:(id)data forIndexPath:(NSIndexPath *)ip ;

- (void)collectionViewSelectData:(id)data forIndexPath:(NSIndexPath *)ip ;

- (EDTCollectionHeaderView *)configCollectionViewHeader:(id)data forIndexPath:(NSIndexPath *)ip;

- (EDTCollectionFooterView *)configCollectionViewFooter:(id)data forIndexPath:(NSIndexPath *)ip;
@end

@interface EDTCollectionLoadingViewController : EDTLoadingViewController

@property (nonatomic ,strong ,readonly) UICollectionView *collectionView;

- (UICollectionView *)createCollectionWithLayout:(UICollectionViewFlowLayout *)layout;

- (UICollectionViewCell *)configCollectionViewCell:(id)data forIndexPath:(NSIndexPath *)ip ;

- (void)collectionViewSelectData:(id)data forIndexPath:(NSIndexPath *)ip ;

- (void)collectionEmptyShow;

- (void)collectionEmptyHidden;

- (EDTCollectionHeaderView *)configCollectionViewHeader:(id)data forIndexPath:(NSIndexPath *)ip;

- (EDTCollectionFooterView *)configCollectionViewFooter:(id)data forIndexPath:(NSIndexPath *)ip;

@end

NS_ASSUME_NONNULL_END
