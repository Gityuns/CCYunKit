//
//  CCConstantDefine.h
//  Pods
//
//  Created by 赵郧陕 on 2023/1/7.
//

#ifndef CCConstantDefine_h
#define CCConstantDefine_h

#pragma mark - UI 常量

// 屏幕宽度
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
// 屏幕高度
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)
// 顶部高度
#define NAV_STATUS_HEIGHT statusHeight()
// 导航栏高度
#define NAV_BAR_HEIGHT (44.f)
// 导航底部到顶部距离
#define NAV_HEIGHT (NAV_BAR_HEIGHT)+(NAV_STATUS_HEIGHT)
// 底部tabbar高度
#define TAB_BAR_HEIGHT (49.f)
// 底部安全区域距离
#define BOTTOM_SAFE_HEIGHT (NAV_STATUS_HEIGHT>20?34:0)

static CGFloat statusHeight(){
    if (@available(iOS 13.0, *)) {
        return [[(UIWindowScene *)[[UIApplication sharedApplication].connectedScenes anyObject] statusBarManager] statusBarFrame].size.height;
    }
    return [UIApplication sharedApplication].statusBarFrame.size.height;
}
#endif /* CCConstantDefine_h */
