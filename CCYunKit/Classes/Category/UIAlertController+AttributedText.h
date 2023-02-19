//
//  UIAlertController+AttributedText.h
//  CCYunKit
//
//  Created by mac on 2022/8/3.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIAlertController (AttributedText)

-(void)setAttributedTitle:(NSMutableAttributedString *)attributedTitle;

-(void)setAttributedMessage:(NSMutableAttributedString *)attributedMessage;
@end

@interface UIAlertAction (Color)

-(void)setTitleTextColor:(UIColor *)color;
@end

NS_ASSUME_NONNULL_END
