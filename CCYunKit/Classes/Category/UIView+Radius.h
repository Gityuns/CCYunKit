//
//  UIView+Radius.h
//  CCYunKit
//
//  Created by mac on 2022/8/3.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Radius)

/// 设置圆角
-(void)cornerWithRadius:(CGFloat)radius color:(UIColor*_Nullable)color width:(CGFloat)width;

/// 设置圆角
-(void)cornerWithRadius:(CGFloat)radius;

/// 设置指定圆角
-(void)cornerWithRadius:(CGFloat)radius size:(CGSize)size corners:(UIRectCorner)corners;

/// 设置指定圆角
-(void)cornerWithRadius:(CGFloat)radius size:(CGSize)size corners:(UIRectCorner)corners color:(UIColor *)color;

// 设置阴影
-(void)shadowColor:(UIColor *)color size:(CGSize)size cornerRadius:(CGFloat)raduis;

// 设置阴影
-(void)shadowColor:(UIColor *)color size:(CGSize)size cornerRadius:(CGFloat)raduis opacity:(CGFloat)opacity;
@end

NS_ASSUME_NONNULL_END
