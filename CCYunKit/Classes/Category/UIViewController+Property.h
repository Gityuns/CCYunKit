//
//  UIViewController+Property.h
//  CCYunKit
//
//  Created by 赵郧陕 on 2023/1/5.
//

#import <UIKit/UIKit.h>
#import "CCBaseViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (Property)

@property (nonatomic, strong) CCBaseViewModel *viewModel;

@property (nonatomic, assign) BOOL enablePanGestureBack;

-(void)setNavigationColor:(UIColor *)color;

-(void)setTitleTextAttributes:(NSDictionary *)attributes;
@end

NS_ASSUME_NONNULL_END
