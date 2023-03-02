import 'package:bryan_portfolio_dev/device/domain/domain/device_settings_entity.dart';

import '../services/i_device_service.dart';

/// Caso-de-uso responsável por recuperar as especificações do dispositivo.
abstract class IGetDeviceSpecsUsecase {
  Future<DeviceDTO> call();
}

class GetDeviceUsecaseImpl implements IGetDeviceSpecsUsecase {
  GetDeviceUsecaseImpl(this._service);

  /// Serviço que administra informações sobre o Hardware.
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

/// Data Transfer Object (DTO) baseado em dados recuperados pelo serviço de informações do Hardware.
class DeviceDTO {
  DeviceDTO(
      {required this.platform,
      required this.osVersion,
      required this.deviceId,
      required this.deviceName,
      required this.manufacturer});

  /// Construtor que adquire as informações contidas na entidade e gera um novo DTO.
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
