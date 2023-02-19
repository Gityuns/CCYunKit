//
//  UIAlertController+AttributedText.m
//  CCYunKit
//
//  Created by mac on 2022/8/3.
//

#import "UIAlertController+AttributedText.h"

@implementation UIAlertController (AttributedText)

-(void)setAttributedTitle:(NSMutableAttributedString *)attributedTitle{
    [self setValue:attributedTitle forKey:@"attributedTitle"];
}
-(void)setAttributedMessage:(NSMutableAttributedString *)attributedMessage{
    [self setValue:attributedMessage forKey:@"attributedMessage"];
}
@end


@implementation UIAlertAction (Color)

-(void)setTitleTextColor:(UIColor *)color{
    [self setValue:color forKey:@"titleTextColor"];
}

@end
