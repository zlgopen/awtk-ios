//
//  awtk_ios.m
//  awtk-ios
//
//  Created by 李先静 on 2020/1/18.
//  Copyright © 2020 awtk. All rights reserved.
//

#import "awtk_ios.h"

void awtk_ios_log(const char *message,...)
{
    va_list args;
    va_start(args, message);
    NSLog(@"%@",[[NSString alloc] initWithFormat:[NSString stringWithUTF8String:message] arguments:args]);
    va_end(args);
}

