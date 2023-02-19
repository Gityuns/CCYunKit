//
//  CCBaseViewController.h
//  CCYunKit
//
//  Created by mac on 2022/8/8.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCBaseViewController : UIViewController

-(void)loadUI;

-(void)configNavigationView;

-(void)configTableView;

-(void)configCollectionView;
@end

NS_ASSUME_NONNULL_END
