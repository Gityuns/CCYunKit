//
//  UIColor+RGBA.m
//  CCYunKit
//
//  Created by mac on 2022/8/3.
//

#import "UIColor+RGBA.h"

@implementation UIColor (RGBA)

UIColor* UIColorFromRGBA(int red, int green, int blue, CGFloat alpha){
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}

UIColor* UIColorFromRGB(int red, int green, int blue){
    return UIColorFromRGBA(red, green, blue, 1);
}

UIColor* UIColorFromHexa(int rgbValue,CGFloat a){
    return [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:(a)];
}

UIColor* UIColorFromHex(int rgbValue){
    return UIColorFromHexa(rgbValue, 1);
}

UIColor* UIColorFromRadom(void){
    int red = arc4random()%255;
    int green = arc4random()%255;
    int blue = arc4random()%255;
    return UIColorFromRGB(red, green, blue);
}
@end
