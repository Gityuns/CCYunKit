//
//  NSString+Regular.m
//  CCYunKit
//
//  Created by mac on 2022/8/3.
//

#import "NSString+Regular.h"

@implementation NSString (Regular)

BOOL validateString(NSString *string){
    if (string == nil) {
        return NO;
    }
    if ([string isEqual:@""]) {
        return NO;
    }
    return YES;
}

BOOL validateMobile(NSString *mobile){
    NSString *regular = @"^1[3-9]\\d{9}$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regular];
    return [predicate evaluateWithObject:mobile];
}

BOOL validateEmail(NSString *email){
    NSString *regular = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regular];
    return [predicate evaluateWithObject:email];
}

//车型
BOOL validateCarType(NSString *carType)
{
    NSString *carTypeRegex = @"^[\u4E00-\u9FFF]+$";
    NSPredicate *carTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",carTypeRegex];
    return [carTest evaluateWithObject:carType];
}
  
//密码
BOOL validatePassword(NSString *passWord)
{
    NSString *passWordRegex = @"^[a-zA-Z0-9]{6,20}+$";
    NSPredicate *passWordPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",passWordRegex];
    return [passWordPredicate evaluateWithObject:passWord];
}
  
//昵称
BOOL validateNickname(NSString *nickname)
{
    NSString *nicknameRegex = @"^[\u4e00-\u9fa5]{4,8}$";
    NSPredicate *passWordPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",nicknameRegex];
    return [passWordPredicate evaluateWithObject:nickname];
}
  
//身份证号
BOOL validateIdentityCard(NSString *identityCard)
{
    BOOL flag;
    if (identityCard.length <= 0) {
        flag = NO;
        return flag;
    }
    NSString *regex2 = @"^(\\d{14}|\\d{17})(\\d|[xX])$";
    NSPredicate *identityCardPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex2];
    return [identityCardPredicate evaluateWithObject:identityCard];
}
@end
