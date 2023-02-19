//
//  UIViewController+MJRefresh.h
//  CCYunKit
//
//  Created by mac on 2022/8/5.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (MJRefresh)

@property (nonatomic, weak) UIScrollView *scrollView;

/// 展示下拉刷新
@property (nonatomic, assign) BOOL enableHeaderRefresh;
/// 展示上拉加载更多
@property (nonatomic, assign) BOOL enableFooterLoadMore;

/// 刷新
-(void)refreshData;
/// 加载更多
-(void)requestMoreData;

@end

NS_ASSUME_NONNULL_END
