import 'package:bryan_portfolio_dev/device/domain/domain/device_settings_entity.dart';

abstract class IDeviceSettingsDriver {
  Future<DeviceSettingsEntity> get onAndroidPlatform;
}
