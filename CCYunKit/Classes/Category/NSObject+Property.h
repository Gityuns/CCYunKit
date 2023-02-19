//
//  NSObject+ReuseIdentifer.h
//  CCYunKit
//
//  Created by 赵郧陕 on 2023/1/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (Property)

@property (nonatomic,copy) NSString *reuseIdentifer;

@property (nonatomic, copy) NSString *routePath;

@property (nonatomic, strong) NSDictionary *routeParams;
@end

NS_ASSUME_NONNULL_END
