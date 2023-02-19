//
//  CCBaseNavigationController.m
//  CCYunKit
//
//  Created by mac on 2022/8/8.
//

#import "CCBaseNavigationController.h"
#import "UIViewController+Property.h"

@interface CCBaseNavigationController ()<UIGestureRecognizerDelegate>

@end

@implementation CCBaseNavigationController

- (instancetype)initWithRootViewController:(UIViewController *)rootViewController{
    self = [super initWithRootViewController:rootViewController];
    if (self) {
        self.rootViewController = rootViewController;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.interactivePopGestureRecognizer.delegate = self;
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return [self.topViewController preferredStatusBarStyle];
}


-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{
    BOOL enablePanGestureBack = self.topViewController.enablePanGestureBack;
    if (self.childViewControllers.count <= 1) {
        return NO;
    }
    return enablePanGestureBack;
}

@end
