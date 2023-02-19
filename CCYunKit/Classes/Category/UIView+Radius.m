//
//  UIView+Radius.m
//  CCYunKit
//
//  Created by mac on 2022/8/3.
//

#import "UIView+Radius.h"

@implementation UIView (Radius)

-(void)cornerWithRadius:(CGFloat)radius color:(UIColor*_Nullable)color width:(CGFloat)width{
    self.layer.cornerRadius = radius;
    if (color) {
        self.layer.borderColor = color.CGColor;
        self.layer.borderWidth = width;
    }
    self.layer.masksToBounds = YES;
}

-(void)cornerWithRadius:(CGFloat)radius{
    [self cornerWithRadius:radius color:nil width:1];
   
}

-(void)cornerWithRadius:(CGFloat)radius size:(CGSize)size corners:(UIRectCorner)corners color:(UIColor *)color{
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:corners cornerRadii:CGSizeMake(radius, radius)];
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.frame = rect;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
    
    CAShapeLayer *borderLayer = [CAShapeLayer layer];
    borderLayer.frame = rect;
    borderLayer.lineWidth = 1;
    borderLayer.fillColor = [UIColor clearColor].CGColor;
    borderLayer.strokeColor = color.CGColor;
    borderLayer.path = maskPath.CGPath;
    [self.layer insertSublayer:borderLayer atIndex:0];
}

-(void)cornerWithRadius:(CGFloat)radius size:(CGSize)size corners:(UIRectCorner)corners{
    [self cornerWithRadius:radius size:size corners:corners color:[UIColor clearColor]];
}

-(void)shadowColor:(UIColor *)color size:(CGSize)size cornerRadius:(CGFloat)raduis{
    [self shadowColor:color size:size cornerRadius:raduis opacity:1];
}

-(void)shadowColor:(UIColor *)color size:(CGSize)size cornerRadius:(CGFloat)raduis opacity:(CGFloat)opacity{
    self.layer.shadowColor = color.CGColor;
    self.layer.shadowOffset = size;
    self.layer.shadowRadius =  raduis;
    self.layer.shadowOpacity = opacity;
}
@end
