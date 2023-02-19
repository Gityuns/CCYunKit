//
//  NSDate+Format.h
//  CCYunKit
//
//  Created by mac on 2022/8/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (Format)

/// 根据时间格式返回字符串
/// @param format 时间格式
-(NSString *)timeWithFormat:(NSString *)format;

/// 根据实际转换成日期
/// @param time 时间
/// @param format 日期格式
+(NSDate *)dateFromTime:(NSString *)time format:(NSString *)format;

/// 转换为过去时间
/// @param time <#time description#>
/// @param format <#format description#>
+(NSString *)dateFromNow:(NSString *)time format:(NSString *)format;
@end

NS_ASSUME_NONNULL_END
