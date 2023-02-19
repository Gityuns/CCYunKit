//
//  CCBaseViewModel.h
//  CCYunKit
//
//  Created by 赵郧陕 on 2023/1/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCBaseViewModel : NSObject

@property (nonatomic, strong) NSMutableArray *datas;

-(void)initData;

-(void)requestData:(void (^)(void))success failure:(void(^)(NSString *errMsg))failure;
@end

NS_ASSUME_NONNULL_END
