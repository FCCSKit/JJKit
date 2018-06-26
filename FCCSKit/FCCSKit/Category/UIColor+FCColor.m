//
//  UIColor+FCColor.m
//  FCCSKit
//
//  Created by MC on 2018/6/14.
//  Copyright © 2018年 浙江房超信息科技有限公司. All rights reserved.
//

#import "UIColor+FCColor.h"

@implementation UIColor (FCColor)
+ (UIColor *)fc_colorWithHex:(NSString *)hex {
    
    NSString *cString = [[hex stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]
                         uppercaseString];
    
    if ([cString length] < 6) {
        return [UIColor clearColor];
    }
    
    if ([cString hasPrefix:@"0X"] || [cString hasPrefix:@"0x"]) {
        cString = [cString substringFromIndex:2];
    } else if ([cString hasPrefix:@"x"] || [cString hasPrefix:@"X"]) {
        cString = [cString substringFromIndex:1];
    } else if ([cString hasPrefix:@"#"]) {
        cString = [cString substringFromIndex:1];
    }
    
    if ([cString length] != 6) {
        return [UIColor clearColor];
    }
    
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:cString];
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16) / 255.0
                           green:((rgbValue & 0xFF00) >> 8) / 255.0
                            blue:(rgbValue & 0xFF) / 255.0
                           alpha:1.0];
}

+ (UIColor *)fc_colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:alpha];
}

@end
