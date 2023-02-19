//
//  CCLoadingView.h
//  CCYunKit
//
//  Created by mac on 2022/8/5.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


typedef NS_ENUM(NSInteger, CCLoadingState) {
    CCLoadingStateLoading = 1, /// 正在加载
    CCLoadingStateError,   /// 加载失败
    CCLoadingStateEmpty,   /// 没有数据
    CCLoadingStateDone,    /// 加载成功
};

@interface CCLoadingView : UIView
/// 当前页面状态
@property (nonatomic, assign) CCLoadingState state;
/// 点击刷新后回调
@property (nonatomic, copy) void (^onOperateBtnClickCallback)(void);

-(void)setNotice:(NSString *)notice forState:(CCLoadingState)state;
-(void)setAttributedNotice:(NSAttributedString *)attributedNotice forState:(CCLoadingState)state;
-(void)setImage:(UIImage *)image forState:(CCLoadingState)state;
-(void)setCustomView:(UIView *)customView forState:(CCLoadingState)state;

@end

NS_ASSUME_NONNULL_END
