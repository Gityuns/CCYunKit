//
//  CCNavigationBar.h
//  CCYunKit
//
//  Created by 赵郧陕 on 2023/1/10.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCNavigationBar : UIView

@property (nonatomic, strong) UIView *leftView;

@property (nonatomic, strong) UIView *rightView;

@property (nonatomic, strong) UIView *titleView;

-(void)resetLeftView:(UIView *)leftView padding:(UIEdgeInsets)padding;

-(void)resetCenterView:(UIView *)centerView;

-(void)resetRightView:(UIView *)rightView padding:(UIEdgeInsets)padding;
@end

NS_ASSUME_NONNULL_END
