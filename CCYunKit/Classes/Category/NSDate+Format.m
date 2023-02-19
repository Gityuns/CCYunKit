//
//  NSDate+Format.m
//  CCYunKit
//
//  Created by mac on 2022/8/3.
//

#import "NSDate+Format.h"

@implementation NSDate (Format)

-(NSString *)timeWithFormat:(NSString *)format{
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = format;
    return [formatter stringFromDate:self];
}

+(NSDate *)dateFromTime:(NSString *)time format:(NSString *)format{
    NSDateFormatter *formtter = [[NSDateFormatter alloc]init];
    formtter.dateFormat = format;
    return [formtter dateFromString:time];
}

+(NSString *)dateFromNow:(NSString *)time format:(NSString *)format{
    NSDate *past = [NSDate dateFromTime:time format:format];
    NSDate *now = [NSDate date];
    NSInteger timeInterval = [now timeIntervalSinceDate:past];
    NSInteger day = timeInterval/(24 * 3600);
    NSInteger hour = timeInterval % (24 * 3600)/3600;
    NSInteger minute = (timeInterval - hour * 3600)/60;
    if (day>0) {
        return [NSString stringWithFormat:@"%ld天前",day];
    }else{
        if (hour > 0) {
            return [NSString stringWithFormat:@"%ld小时前",hour];
        }else{
            if (minute > 0) {
                return [NSString stringWithFormat:@"%ld分钟前",minute];;
            }
        }
    }
    return @"刚刚";
}
@end
