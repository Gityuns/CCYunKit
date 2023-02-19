//
//  UIViewController+LoadingView.m
//  CCYunKit
//
//  Created by mac on 2022/8/5.
//

#import "UIViewController+LoadingView.h"
#import "UIViewController+MJRefresh.h"
#import <objc/runtime.h>
#import "Masonry/Masonry.h"
#import "CCMethodDefine.h"

@implementation UIViewController (LoadingView)

-(CCLoadingView *)loadingView{
    CCLoadingView *loadingView =(CCLoadingView *)objc_getAssociatedObject(self, "loadingView");
    if (loadingView == nil) {
        loadingView = [[CCLoadingView alloc]initWithFrame:[self loadingViewFrame]];
        [self.view addSubview:loadingView];
        @weakify(self);
        loadingView.onOperateBtnClickCallback = ^{
            @strongify(self);
            [self refreshData];
        };
        self.loadingView = loadingView;
    }
    return loadingView;
}

-(void)setLoadingView:(CCLoadingView *)loadingView{
    objc_setAssociatedObject(self, "loadingView", loadingView, OBJC_ASSOCIATION_RETAIN);
}

-(CCLoadingState)loadingState{
    return [objc_getAssociatedObject(self, "loadingState") integerValue];
}

-(void)setLoadingState:(CCLoadingState)loadingState{
    objc_setAssociatedObject(self, "loadingState", @(loadingState), OBJC_ASSOCIATION_ASSIGN);
    self.loadingView.state = loadingState;
}


-(CGRect)loadingViewFrame{
    return self.view.bounds;
}

-(void)showEmptyViewIn:(UIView *)container{
    self.loadingView = [[CCLoadingView alloc]initWithFrame:container.bounds];
    [container addSubview:self.loadingView];
    [self.loadingView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(UIEdgeInsetsZero);
    }];
}
@end
