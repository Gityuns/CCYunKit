//
//  CCNavigationBar.m
//  CCYunKit
//
//  Created by 赵郧陕 on 2023/1/10.
//

#import "CCNavigationBar.h"
#import "CCConstantDefine.h"

@implementation CCNavigationBar

-(instancetype)init{
    return [self initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, NAV_HEIGHT)];
}
-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self loadUI];
    }
    return self;
}

-(void)loadUI{
    
}

-(void)resetLeftView:(UIView *)leftView padding:(UIEdgeInsets)padding{
    
}

-(void)resetCenterView:(UIView *)centerView{
    
}

-(void)resetRightView:(UIView *)rightView padding:(UIEdgeInsets)padding{
    
}
@end
