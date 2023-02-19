//
//  UIImage+Color.h
//  CCYunKit
//
//  Created by mac on 2022/8/3.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Color)

/// 生成指定颜色大小纯色图片
/// @param color 颜色
/// @param size 大小
+(UIImage *)imageFromColor:(UIColor *)color size:(CGSize)size;

/// 生成渐变色图片
/// @param from 起始颜色
/// @param to 终止颜色
/// @param size 大小
+(UIImage *)imageFromColor:(UIColor *)from toColor:(UIColor *)to size:(CGSize)size;


/// 生成二维码
/// @param content 二维码内容
+(UIImage *)createQRImageWithContent:(NSString *)content size:(CGSize)size red:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue withLogo:(UIImage *)logo;

+ (UIImage *)createQRImageWithContent:(NSString *)content size:(CGSize)size;

+ (UIImage *)createQRImageWithContent:(NSString *)content size:(CGSize)size red:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue;
@end

NS_ASSUME_NONNULL_END
