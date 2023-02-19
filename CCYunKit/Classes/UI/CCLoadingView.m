//
//  CCLoadingView.m
//  CCYunKit
//
//  Created by mac on 2022/8/5.
//

#import "CCLoadingView.h"
#import "Masonry/Masonry.h"

@interface CCLoadingView ()
@property (nonatomic, strong) UIView *container;
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UILabel *noticeLabel;
@property (nonatomic, strong) UIView *customView;
@property (nonatomic, strong) UIButton *refreshBtn;
@property (nonatomic, strong) NSMutableDictionary *statusNotices;
@property (nonatomic, strong) NSMutableDictionary *statusImages;
@property (nonatomic, strong) NSMutableDictionary *statusViews;
@property (nonatomic, strong) NSMutableDictionary *statusAttributedNotices;
@end

@implementation CCLoadingView

-(NSMutableDictionary *)statusNotices{
    if (_statusNotices == nil) {
        _statusNotices = [[NSMutableDictionary alloc]initWithDictionary:@{
            @(CCLoadingStateLoading).description: @"正在加载···",
            @(CCLoadingStateEmpty).description: @"呀！啥也没有哦~",
            @(CCLoadingStateError).description: @"呜呜，网络开小差哦",
            @(CCLoadingStateDone).description: @""
        }];
    }
    return _statusNotices;
}

-(NSMutableDictionary *)statusAttributedNotices{
    if (_statusAttributedNotices == nil) {
        _statusAttributedNotices = [[NSMutableDictionary alloc]init];
    }
    return _statusAttributedNotices;
}

-(NSMutableDictionary *)statusImages{
    if (_statusImages == nil) {
        _statusImages = [[NSMutableDictionary alloc]initWithDictionary:@{
            @(CCLoadingStateLoading).description: [self imageWithName:@"icon_loading_loading"],
            @(CCLoadingStateEmpty).description: [self imageWithName:@"icon_loading_empty"],
            @(CCLoadingStateError).description: [self imageWithName:@"icon_loading_error"],
        }];
    }
    return _statusImages;
}

-(NSMutableDictionary *)statusViews{
    if (_statusViews == nil) {
        _statusViews = [[NSMutableDictionary alloc]initWithDictionary:@{
            @(CCLoadingStateError).description: self.refreshBtn,
        }];
    }
    return _statusViews;
}

-(instancetype)init{
    return [self initWithFrame:CGRectZero];
}

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self loadSubViews];
    }
    return self;
}

-(void)loadSubViews{
    
    UIView *container = [[UIView alloc]init];
    [self addSubview:container];
    self.container = container;
    
    self.imageView = [[UIImageView alloc]init];
    [container addSubview:self.imageView];
    
    self.noticeLabel = [[UILabel alloc]init];
    self.noticeLabel.textAlignment = NSTextAlignmentCenter;
    self.noticeLabel.font = [UIFont systemFontOfSize:14];
    self.noticeLabel.textColor = [UIColor grayColor];
    self.noticeLabel.numberOfLines = 0;
    [container addSubview:self.noticeLabel];
    
    self.customView = [[UIView alloc]init];
    [container addSubview:self.customView];
    
    self.refreshBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.refreshBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    [self.refreshBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.refreshBtn setTitle:@"刷新一下" forState:UIControlStateNormal];
    [self.refreshBtn addTarget:self action:@selector(refreshBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [container mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
        make.left.mas_greaterThanOrEqualTo(50);
        make.right.mas_lessThanOrEqualTo(-50);
    }];
    
    [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(0);
        make.centerX.equalTo(container);
        make.left.mas_greaterThanOrEqualTo(0);
        make.right.mas_lessThanOrEqualTo(0);
    }];
    
    [self.noticeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.top.equalTo(self.imageView.mas_bottom).offset(20);
    }];
    
    [self.customView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.bottom.right.mas_equalTo(0);
        make.top.equalTo(self.noticeLabel.mas_bottom).offset(20);
        make.height.mas_equalTo(20);
    }];
}

-(void)setState:(CCLoadingState)state{
    self.hidden = NO;
    if (state == CCLoadingStateDone) {
        self.hidden = YES;
    }
    self.hidden = NO;
    NSString *notice = [self.statusNotices objectForKey:@(state).description];
    UIImage *image = [self.statusImages objectForKey:@(state).description];
    NSAttributedString *attributedNotice = [self.statusAttributedNotices objectForKey:@(state).description];
    if (attributedNotice) {
        self.noticeLabel.attributedText = attributedNotice;
    }else{
        NSMutableAttributedString *attributedText = [[NSMutableAttributedString alloc]initWithString:notice];
        NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc]init];
        style.alignment = NSTextAlignmentCenter;
        style.lineSpacing = 5;
        [attributedText addAttributes:@{
                    NSParagraphStyleAttributeName: style
        } range:NSMakeRange(0, notice.length)];
        self.noticeLabel.attributedText = attributedText;
    }
    self.imageView.image = image;
    for (UIView *subView in self.customView.subviews) {
        [subView removeFromSuperview];
    }
    UIView *customView = [self.statusViews objectForKey:@(state).description];
    if (customView) {
        [self.customView addSubview:customView];
        [customView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(UIEdgeInsetsZero);
        }];
    }
}

-(UIImage *)imageWithName:(NSString *)name{
    NSBundle *bundle = [NSBundle bundleForClass:self.class];
    NSString *imgName = [NSString stringWithFormat:@"CCYunKit.bundle/%@",name];
    UIImage *image = [UIImage imageNamed:imgName
                              inBundle:bundle compatibleWithTraitCollection:nil];
    return image;
}

-(void)setNotice:(NSString * _Nonnull)notice forState:(CCLoadingState)state{
    [self.statusNotices setObject:notice forKey:@(state).description];
}
-(void)setAttributedNotice:(NSAttributedString *)attributedNotice forState:(CCLoadingState)state{
    [self.statusAttributedNotices setObject:attributedNotice forKey:@(state).description];
}

-(void)setImage:(UIImage *)image forState:(CCLoadingState)state{
    [self.statusImages setObject:image forKey:@(state).description];
}
-(void)setCustomView:(UIView *)customView forState:(CCLoadingState)state{
    [self.statusViews setObject:customView forKey:@(state).description];
}

-(void)refreshBtnAction:(UIButton *)button{
    if (self.onOperateBtnClickCallback) {
        self.onOperateBtnClickCallback();
    }
}
@end
