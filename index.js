/**
 * @flow
 */
'use strict';

import {
  NativeModules,
  Platform,
} from 'react-native';

const NativeMobSMSSdk = NativeModules.ReactNativeSMSSdk;


const MobSMSSdk = {

  registerApp(appKey,secretKey) {
    return NativeMobSMSSdk.registerApp(appKey,secretKey);
  },


  //methodType
  // SMSGetCodeMethodSMS = 0,  //文本短信方式
  // SMSGetCodeMethodVoice = 1 //语音方式

  getVerificationCodeByMethodType(methodType,phoneNumber,zoneNumber,customIdentifier): Promise{

    return NativeMobSMSSdk.getVerificationCodeByMethodType(methodType,phoneNumber,zoneNumber,customIdentifier);
  },



};

module.exports = MobSMSSdk;
