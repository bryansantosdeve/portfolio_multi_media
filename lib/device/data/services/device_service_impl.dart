import 'package:bryan_portfolio_dev/device/data/driver/i_device_settings_driver.dart';

import 'package:bryan_portfolio_dev/device/domain/domain/device_settings_entity.dart';
import 'package:bryan_portfolio_dev/device/domain/services/i_device_service.dart';

import 'package:flutter/foundation.dart';

class DeviceServiceImpl implements IDeviceService {
  DeviceServiceImpl(this._driver);

  final IDeviceSettingsDriver _driver;
  @override
  Future<DeviceSettingsEntity> getDeviceSpecs() async {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return _driver.onAndroidPlatform;

      default:
        throw Exception('OS NÃO SUPORTADO');
    }
  }
}
