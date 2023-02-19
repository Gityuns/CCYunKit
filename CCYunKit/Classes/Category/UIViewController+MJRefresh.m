//
//  UIViewController+MJRefresh.m
//  CCYunKit
//
//  Created by mac on 2022/8/5.
//

#import "UIViewController+MJRefresh.h"
#import "MJRefresh/MJRefresh.h"
#import "UIViewController+UITableView.h"
#import <objc/runtime.h>

static const char * headerRefresh = "enableHeaderRefresh";

static const char * footerLoadMore = "enableFooterLoadMore";

@implementation UIViewController (MJRefresh)

-(void)setEnableHeaderRefresh:(BOOL)enableHeaderRefresh{
    if (enableHeaderRefresh) {
        [self configHeaderRefresh];
    }
    objc_setAssociatedObject(self, headerRefresh, @(enableHeaderRefresh), OBJC_ASSOCIATION_ASSIGN);
}

-(BOOL)enableHeaderRefresh{
    return [objc_getAssociatedObject(self, headerRefresh) boolValue];
}

-(void)setEnableFooterLoadMore:(BOOL)enableFooterLoadMore{
    if (enableFooterLoadMore) {
        [self configFooterLoadMore];
    }
    objc_setAssociatedObject(self, footerLoadMore, @(enableFooterLoadMore), OBJC_ASSOCIATION_ASSIGN);
}

-(BOOL)enableFooterLoadMore{
    return [objc_getAssociatedObject(self, footerLoadMore) boolValue];
}

-(void)setScrollView:(UIScrollView *)scrollView{
    objc_setAssociatedObject(self, "scrollView", scrollView, OBJC_ASSOCIATION_ASSIGN);
}

-(UIScrollView *)scrollView{
    return (UIScrollView *)objc_getAssociatedObject(self, "scrollView");
}

-(void)configHeaderRefresh{
    self.scrollView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(refreshData)];
}

-(void)configFooterLoadMore{
    self.scrollView.mj_footer = [MJRefreshAutoNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(requestMoreData)];
}


/// 刷新
-(void)refreshData{
    
}
/// 加载更多
-(void)requestMoreData{
    
}

@end
