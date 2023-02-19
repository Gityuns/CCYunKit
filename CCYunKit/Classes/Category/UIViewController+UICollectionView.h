//
//  UIViewController+UICollectionView.h
//  CCYunKit
//
//  Created by 赵郧陕 on 2023/1/5.
//

#import <UIKit/UIKit.h>
#import "UIViewController+MJRefresh.h"
#import "UIViewController+Property.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (UICollectionView)<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (nonatomic,strong) UICollectionView *collectionView;

-(UICollectionViewLayout *)flowLayout;
// 设置collectionView 的frame
-(CGRect)collectionViewFrame;

// cell 大小
#pragma mark - UICollectionView
-(NSObject *)collectionViewModelAtIndexPath:(NSIndexPath *)indexPath;
-(CGSize)itemSizeForIndexPath:(NSIndexPath *)indexPath;
// 点击cell上的按钮事件
-(void)didClickCollectionViewCellWithTag:(NSInteger)tag attaches:(id)attaches;
#pragma mark -- 注册cell
-(void)registerCollectionViewCellWithClassName:(NSString *)className;
-(void)regisetrCollectionViewCellWithNibName:(NSString *)NibName;

@end

NS_ASSUME_NONNULL_END
