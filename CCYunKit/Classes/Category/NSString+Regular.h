//
//  NSString+Regular.h
//  CCYunKit
//
//  Created by mac on 2022/8/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Regular)

/// 判断字符串是否为空
/// @param string <#string description#>
BOOL validateString(NSString *string);

/// 验证手机号是否合法
/// @param mobile 手机号码
BOOL validateMobile(NSString *mobile);

/// 判断邮箱是否合法
/// @param email 邮箱
BOOL validateEmail(NSString *email);

//车型
BOOL validateCarType(NSString *carType);


/// 判断密码是否符合
/// @param passWord 6-20位 字母或数字
BOOL validatePassword(NSString *passWord);
  
/// 昵称长度4-8
/// @param nickname <#nickname description#>
BOOL validateNickname(NSString *nickname);
  

/// 判断身份证是否有效
/// @param identityCard 身份证号
BOOL validateIdentityCard(NSString *identityCard);
@end

NS_ASSUME_NONNULL_END
