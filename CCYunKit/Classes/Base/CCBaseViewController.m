//
//  CCBaseViewController.m
//  CCYunKit
//
//  Created by mac on 2022/8/8.
//

#import "CCBaseViewController.h"
#import "UIViewController+Property.h"

@interface CCBaseViewController ()

@end

@implementation CCBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.enablePanGestureBack = YES;
    [self loadUI];
    [self configNavigationView];
    [self configTableView];
    [self configCollectionView];
}

-(void)loadUI{
    
}

-(void)configNavigationView{
    
}

-(void)configTableView{
    
}

-(void)configCollectionView{
    
}
@end
