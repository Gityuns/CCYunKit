//
//  UIViewController+UITableView.h
//  ShanLib
//
//  Created by mac on 2022/8/2.
//

#import <UIKit/UIKit.h>
#import "UIViewController+MJRefresh.h"
#import "UIViewController+Property.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (UITableView)<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

// 设置table的frame
-(CGRect)tableFrame;
#pragma mark -- tableView
// 获取对应的model
-(NSObject *)tableViewModelAtIndexPath:(NSIndexPath *)indexPath;
// 点击cell上的按钮的回调事件
-(void)clickTableViewCellWithTag:(NSInteger)tag attaches:(id)attaches;
#pragma mark -- 注册cell
-(void)registerTableViewCellWithClassName:(NSString *)className;
-(void)regisetrTableViewCellWithNibName:(NSString *)nibName;
@end

NS_ASSUME_NONNULL_END


