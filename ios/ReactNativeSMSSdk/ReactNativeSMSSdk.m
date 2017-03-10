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


RCT_EXPORT_METHOD(getVerificationCodeByMethodType:(NSInteger)methodType
                  phoneNumber:(NSString *)phoneNumber
                  zone:(NSString *)zone
                  customIdentifier:(NSString *)customIdentifier
                  resolver:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject) {
    
    
  //  reject(@"-1",@"hello",nil);
    
    [SMSSDK getVerificationCodeByMethod:methodType phoneNumber:phoneNumber zone:zone customIdentifier:customIdentifier result:^(NSError *error) {
        if(!error){
            resolve([NSNumber numberWithBool:YES]);
        }else{
            NSString *strTel = [NSString stringWithFormat:@"send to %@ failed!",phoneNumber];
            reject(@"-1",strTel,error);
        }
    }];
}

@end
