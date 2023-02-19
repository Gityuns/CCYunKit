//
//  UIButton+Position.m
//  CCYunKit
//
//  Created by mac on 2022/8/3.
//

#import "UIButton+Style.h"
#import <objc/runtime.h>

@implementation UIButton (Style)

- (void)setButtonStyle:(UIButtonStyle)buttonStyle{
    objc_setAssociatedObject(self, "buttonStyle", @(buttonStyle), OBJC_ASSOCIATION_ASSIGN);
    UIImage *image = self.imageView.image;
    CGSize imageSize = image.size;
    NSString *title = self.titleLabel.text;
    UIFont *font = self.titleLabel.font;
    CGSize textSize = [title boundingRectWithSize:CGSizeMake(200, 90) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: font} context:nil].size;
    UIEdgeInsets titleEdgeInset = UIEdgeInsetsZero;
    UIEdgeInsets imageEdgeInset = UIEdgeInsetsZero;
    CGFloat textHeight = textSize.height;
    CGFloat textWidth = textSize.width;
    CGFloat imageWidth = imageSize.width;
    CGFloat imageHeight = imageSize.height;
    CGFloat midWidth = (textWidth+imageWidth)/2;
    CGFloat midHeight = (textHeight + imageHeight)/2;
    switch (buttonStyle) {
        case UIButtonStyleRight:
            titleEdgeInset = UIEdgeInsetsMake(0, -imageWidth, 0, imageWidth);
            imageEdgeInset = UIEdgeInsetsMake(0, textWidth, 0, -textWidth);
            break;
        case UIButtonStyleTop:{
            titleEdgeInset = UIEdgeInsetsMake(midHeight-textHeight/2, -(midWidth - textWidth/2), -(midHeight-textHeight/2), (midWidth - textWidth/2));
            imageEdgeInset = UIEdgeInsetsMake(-(midHeight - textHeight/2), midWidth-imageWidth/2, (midHeight - textHeight/2), imageWidth/2-midWidth);
        }break;
        case UIButtonStyleBottom:{
            titleEdgeInset = UIEdgeInsetsMake(-(midHeight-textHeight/2), -(midWidth - textWidth/2), (midHeight-textHeight/2), (midWidth - textWidth/2));
            imageEdgeInset = UIEdgeInsetsMake((midHeight - textHeight/2), midWidth-imageWidth/2, -(midHeight - textHeight/2), imageWidth/2-midWidth);
        } break;
        default:
            break;
    }
    [self setTitleEdgeInsets:titleEdgeInset];
    [self setImageEdgeInsets:imageEdgeInset];
}

-(UIButtonStyle)buttonStyle{
    return (NSInteger)objc_getAssociatedObject(self, "buttonStyle");
}
@end
