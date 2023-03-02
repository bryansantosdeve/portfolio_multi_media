import 'package:bryan_portfolio_dev/device/domain/domain/device_settings_entity.dart';
import 'package:device_info_plus/device_info_plus.dart';

class DeviceSettingsModel extends DeviceSettingsEntity {
  DeviceSettingsModel.android(AndroidDeviceInfo android)
      : super(
            platform: 'Android',
            deviceName: android.device,
            deviceId: android.id,
            osVersion: android.version.codename,
            manufacturer: android.manufacturer);
}
