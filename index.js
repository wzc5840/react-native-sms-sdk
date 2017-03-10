/**
 * @flow
 */
'use strict';

import {
  NativeModules,
  Platform,
} from 'react-native';

const MobSMSSdk = NativeModules.ReactNativeSMSSdk;


const AliyunOSS = {

  hello() {
    MobSMSSdk.hello();
  },
};

module.exports = MobSMSSdk;
