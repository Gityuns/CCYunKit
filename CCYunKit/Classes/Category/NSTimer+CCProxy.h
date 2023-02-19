//
//  NSTimer+CCProxy.h
//  CCYunKit
//
//  Created by mac on 2022/8/5.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSTimer (CCProxy)

+ (NSTimer *)start:(NSTimeInterval)timeInterval repeat:(BOOL)repeat block:(void (^)(NSTimer * _Nonnull))block;

+ (NSTimer *)sa_start:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(nullable id)userInfo repeats:(BOOL)yesOrNo;
@end

NS_ASSUME_NONNULL_END
