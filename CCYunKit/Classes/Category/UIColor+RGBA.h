//
//  UIColor+RGBA.h
//  CCYunKit
//
//  Created by mac on 2022/8/3.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (RGBA)

UIColor* UIColorFromRGBA(int red, int green, int blue, CGFloat alpha);

UIColor* UIColorFromRGB(int red, int green, int blue);

UIColor* UIColorFromHexa(int rgbValue,CGFloat a);

UIColor* UIColorFromHex(int rgbValue);

UIColor* UIColorFromRadom(void);
@end

NS_ASSUME_NONNULL_END
