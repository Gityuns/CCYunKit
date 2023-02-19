//
//  CCProxy.m
//  CCYunKit
//
//  Created by mac on 2022/8/4.
//

#import "CCProxy.h"

@implementation CCProxy

-(id)forwardingTargetForSelector:(SEL)aSelector{
    return _target;
}

-(NSMethodSignature *)methodSignatureForSelector:(SEL)sel{
    return [NSObject methodSignatureForSelector:@selector(init)];
}

-(void)forwardInvocation:(NSInvocation *)invocation{
    void *null = NULL;
    [invocation setReturnValue:&null];
}
@end
