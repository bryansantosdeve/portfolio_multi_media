/// Entidade responsável por representar as configurações de um dispositivo mobile.
class DeviceSettingsEntity {
  DeviceSettingsEntity(
      {required this.platform,
      required this.osVersion,
      required this.deviceId,
      required this.deviceName,
      required this.manufacturer});

  /// Sistema operacional do dispositivo.
  final String platform;

  /// Versão do sistema operacional do dispositivo.
  final String osVersion;

  /// Identificação do dispositivo.
  final String deviceId;

  /// Nome do dispositivo.
  final String deviceName;

  /// Empresa responsável pela produção do dispositivo.
  final String manufacturer;

  /// HashCode individual de cada objeto para identificar identicidade entre dois ou mais.
  @override
  int get hashCode =>
      platform.hashCode ^
      osVersion.hashCode ^
      deviceId.hashCode ^
      deviceName.hashCode ^
      manufacturer.hashCode;

  /// Compara individualmente a equivalencia das propriedades, ou seja, objetos diferentes podem ter os mesmos valores.
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DeviceSettingsEntity) &&
            other.platform == platform &&
            other.osVersion == osVersion &&
            other.deviceId == deviceId &&
            other.deviceName == deviceName &&
            other.manufacturer == manufacturer;
  }
}
