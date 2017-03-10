//
//  ReactNativeSMSSdk.m
//  ReactNativeSMSSdk
//
//  Created by Symond on 2017/3/10.
//  Copyright © 2017年 WZC. All rights reserved.
//

#import "ReactNativeSMSSdk.h"
//#import <SMS_SDK/SMSSDK.h>
#import <SMS_SDK/SMSSDK.h>

@implementation ReactNativeSMSSdk


RCT_EXPORT_MODULE(ReactNativeSMSSdk)

RCT_EXPORT_METHOD(registerApp:(NSString *)appKey withSecret:(NSString *)secretKey) {
   // [SMSSDK registerApp:appKey withSecret:secretKey];
    [SMSSDK registerApp:appKey withSecret:secretKey];
}

RCT_EXPORT_METHOD(hello) {
    // [SMSSDK registerApp:appKey withSecret:secretKey];
    NSLog(@"hello123123");
}

@end
