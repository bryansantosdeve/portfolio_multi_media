import 'package:bryan_portfolio_dev/device/data/driver/i_device_settings_driver.dart';
import 'package:bryan_portfolio_dev/device/data/models/device_settings_model.dart';
import 'package:bryan_portfolio_dev/device/domain/domain/device_settings_entity.dart';
import 'package:device_info_plus/device_info_plus.dart';

class DeviceSettingsDriver implements IDeviceSettingsDriver {
  final DeviceInfoPlugin driver = DeviceInfoPlugin();

  @override
  Future<DeviceSettingsEntity> get onAndroidPlatform async {
    try {
      return DeviceSettingsModel.android(await driver.androidInfo);
    } on Exception {
      rethrow;
    }
  }
}
