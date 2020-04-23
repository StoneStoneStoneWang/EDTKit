//
//  EDTTableViewController.h
//  EDTTable
//
//  Created by 王磊 on 2020/4/23.
//  Copyright © 2020 王磊. All rights reserved.
//

@import EDTLoading;
@import MJRefresh;
#import "EDTTableViewComponent.h"
NS_ASSUME_NONNULL_BEGIN

@interface EDTTableLoadingViewController : EDTLoadingViewController

@property (nonatomic ,strong) UITableView *tableView;

- (UITableViewCell *)configTableViewCell:(id)data forIndexPath:(NSIndexPath *)ip ;

- (UIView *)configTableViewSectionHeader:(id)data forSection:(NSInteger)section ;

- (CGFloat )caculateForCell:(id )data forIndexPath:(NSIndexPath *)ip ;

- (void)tableViewSelectData:(id)data forIndexPath:(NSIndexPath *)ip;

- (void)tableViewEmptyShow;

- (void)tableViewEmptyHidden;
@end

@interface EDTTableNoLoadingViewController : EDTTViewController

@property (nonatomic ,strong) UITableView *tableView;

- (UITableViewCell *)configTableViewCell:(id)data forIndexPath:(NSIndexPath *)ip ;

- (UIView *)configTableViewSectionHeader:(id)data forSection:(NSInteger)section ;

- (CGFloat )caculateForCell:(id )data forIndexPath:(NSIndexPath *)ip;

- (void)tableViewSelectData:(id)data forIndexPath:(NSIndexPath *)ip;

@property (nonatomic ,strong) EDTTableHeaderView *headerView;

@end
NS_ASSUME_NONNULL_END
