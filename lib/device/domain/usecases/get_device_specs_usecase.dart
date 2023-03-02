import 'package:bryan_portfolio_dev/device/domain/domain/device_settings_entity.dart';

import '../services/i_device_service.dart';

abstract class IGetDeviceSpecsUsecase {
  Future<DeviceDTO> call();
}

class GetDeviceUsecaseImpl implements IGetDeviceSpecsUsecase {
  GetDeviceUsecaseImpl(this._service);
  final IDeviceService _service;

  @override
  Future<DeviceDTO> call() async {
    try {
      final entityFromService = await _service.getDeviceSpecs();
      return DeviceDTO.fromEntity(entityFromService);
    } on Exception {
      rethrow;
    }
  }
}

class DeviceDTO {
  DeviceDTO(
      {required this.platform,
      required this.osVersion,
      required this.deviceId,
      required this.deviceName,
      required this.manufacturer});

  DeviceDTO.fromEntity(DeviceSettingsEntity entity)
      : this(
            platform: entity.platform,
            osVersion: entity.osVersion,
            deviceId: entity.deviceId,
            deviceName: entity.deviceName,
            manufacturer: entity.manufacturer);

  final String platform;

  final String osVersion;

  final String deviceId;

  final String deviceName;

  final String manufacturer;
}
