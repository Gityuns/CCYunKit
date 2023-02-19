//
//  CCProxy.h
//  CCYunKit
//
//  Created by mac on 2022/8/4.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCProxy : NSProxy

@property (nonatomic,weak) id target;
@end

NS_ASSUME_NONNULL_END
