import 'package:bryan_portfolio_dev/device/domain/domain/device_settings_entity.dart';

abstract class IDeviceService {
  Future<DeviceSettingsEntity> getDeviceSpecs();
}
