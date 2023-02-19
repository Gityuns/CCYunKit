//
//  UIViewController+Property.m
//  CCYunKit
//
//  Created by 赵郧陕 on 2023/1/5.
//

#import "UIViewController+Property.h"
#import "objc/runtime.h"
#import "UIImage+Color.h"
#import "CCConstantDefine.h"

@implementation UIViewController (Property)

-(CCBaseViewModel *)viewModel{
    return (CCBaseViewModel *)objc_getAssociatedObject(self, "viewModel");
}

-(void)setViewModel:(id)viewModel{
    objc_setAssociatedObject(self, "viewModel", viewModel, OBJC_ASSOCIATION_RETAIN);
}

-(BOOL)enablePanGestureBack{
    return [objc_getAssociatedObject(self, "enablePanGestureBack") boolValue];
}

-(void)setEnablePanGestureBack:(BOOL)enablePanGestureBack{
    objc_setAssociatedObject(self, "enablePanGestureBack", @(enablePanGestureBack), OBJC_ASSOCIATION_ASSIGN);
}

-(void)setNavigationColor:(UIColor *)color{
    UIImage *image = [UIImage imageFromColor:color size:CGSizeMake(SCREEN_WIDTH, NAV_HEIGHT)];
    if (@available(iOS 13.0, *)) {
        UINavigationBarAppearance *appearance = [[UINavigationBarAppearance alloc] init];
        appearance.backgroundColor = color;
        appearance.backgroundEffect = nil;
        self.navigationController.navigationBar.scrollEdgeAppearance = appearance;
        self.navigationController.navigationBar.standardAppearance = appearance;
        [self.navigationController.navigationBar.subviews.firstObject.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            if ([obj isKindOfClass:NSClassFromString(@"_UIBarBackgroundShadowContentImageView")]||
                [obj isKindOfClass:NSClassFromString(@"_UIBarBackgroundShadowView")]) {
                obj.hidden = YES;
            }
        }];
    }else{
        self.navigationController.navigationBar.shadowImage = [UIImage new];
        [self.navigationController.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    }
}

-(void)setTitleTextAttributes:(NSDictionary *)attributes{
    if (@available(iOS 13.0, *)) {
        UINavigationBarAppearance *appearance = self.navigationController.navigationBar.scrollEdgeAppearance;
        [appearance setTitleTextAttributes:attributes];
        self.navigationController.navigationBar.scrollEdgeAppearance = appearance;
        self.navigationController.navigationBar.standardAppearance = appearance;
    }else{
        self.navigationController.navigationBar.titleTextAttributes = attributes;
    }
}
@end
