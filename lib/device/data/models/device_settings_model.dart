import 'package:bryan_portfolio_dev/device/domain/domain/device_settings_entity.dart';
import 'package:device_info_plus/device_info_plus.dart';

/// Modelo de dados que representa as configurações do dispositivo baseado em [DeviceSettingsEntity].
///
/// Os construtores desse classe são capazes de retornar uma entidade baseado na transferência de dados e podem ser manipulados, sem que haja impacto negativo na arquitetura do programa.
class DeviceSettingsModel extends DeviceSettingsEntity {
  DeviceSettingsModel.android(AndroidDeviceInfo android)
      : super(
            platform: 'Android',
            deviceName: android.device,
            deviceId: android.id,
            osVersion: android.version.codename,
            manufacturer: android.manufacturer);
}
