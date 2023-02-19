//
//  UIButton+Position.h
//  CCYunKit
//
//  Created by mac on 2022/8/3.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, UIButtonStyle) {
    UIButtonStyleLeft = 0,
    UIButtonStyleRight,
    UIButtonStyleTop,
    UIButtonStyleBottom,
};

@interface UIButton (Style)

/// button 图片 和标题样式， 使用时需要先设置标题 和 图片
@property (nonatomic, assign) UIButtonStyle buttonStyle;

@end

NS_ASSUME_NONNULL_END
