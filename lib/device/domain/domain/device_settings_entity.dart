class DeviceSettingsEntity {
  DeviceSettingsEntity(
      {required this.platform,
      required this.osVersion,
      required this.deviceId,
      required this.deviceName,
      required this.manufacturer});

  final String platform;

  final String osVersion;

  final String deviceId;

  final String deviceName;

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
