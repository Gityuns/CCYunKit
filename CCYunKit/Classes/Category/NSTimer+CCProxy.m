//
//  NSTimer+CCProxy.m
//  CCYunKit
//
//  Created by mac on 2022/8/5.
//

#import "NSTimer+CCProxy.h"
#import "CCProxy.h"

@implementation NSTimer (CCProxy)

+ (NSTimer *)start:(NSTimeInterval)timeInterval repeat:(BOOL)repeat block:(void (^)(NSTimer * _Nonnull))block{
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:timeInterval repeats:repeat block:block];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];
    return timer;
}

+ (NSTimer *)sa_start:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(nullable id)userInfo repeats:(BOOL)yesOrNo{
    CCProxy *proxy = [CCProxy alloc];
    proxy.target = aTarget;
    
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:ti target:proxy selector:aSelector userInfo:userInfo repeats:yesOrNo];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];
    return timer;
}

@end
