//
//  UIColor+FCColor.h
//  FCCSKit
//
//  Created by MC on 2018/6/14.
//  Copyright © 2018年 浙江房超信息科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (FCColor)
+ (UIColor *)fc_colorWithHex:(NSString *)hex;

+ (UIColor *)fc_colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;
@end
