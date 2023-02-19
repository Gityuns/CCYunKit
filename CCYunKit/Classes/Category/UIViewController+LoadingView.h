//
//  UIViewController+LoadingView.h
//  CCYunKit
//
//  Created by mac on 2022/8/5.
//

#import <UIKit/UIKit.h>
#import "CCLoadingView.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (LoadingView)

@property (nonatomic, strong) CCLoadingView *loadingView;

@property (nonatomic, assign) CCLoadingState loadingState;

-(void)showEmptyViewIn:(UIView *)container;

-(CGRect)loadingViewFrame;
@end

NS_ASSUME_NONNULL_END
