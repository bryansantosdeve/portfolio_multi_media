import 'package:bryan_portfolio_dev/device/domain/domain/device_settings_entity.dart';

/// Driver responsável por recuperar diretamente as configurações e especificações gerais do dispositivo. A atuação dessa classe é semelhante à de um Datasource, porém, difere-se
/// no contexto em que ambas se adequam. Toda classe com nomeclatura "Driver" nesta aplicação se refere à abstração de informações provindas do Hardware.
abstract class IDeviceSettingsDriver {
  /// Driver para dispositivos Android.
  Future<DeviceSettingsEntity> get onAndroidPlatform;
}
