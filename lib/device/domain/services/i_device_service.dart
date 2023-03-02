import 'package:bryan_portfolio_dev/device/domain/domain/device_settings_entity.dart';

/// Serviço que administra informações sobre o Hardware.
abstract class IDeviceService {
  /// Recupera dados que indicam características do dispositivo baseado na plataforma.
  Future<DeviceSettingsEntity> getDeviceSpecs();
}
