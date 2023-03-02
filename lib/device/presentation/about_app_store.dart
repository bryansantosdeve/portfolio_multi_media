// ignore_for_file: library_private_types_in_public_api

import 'package:bryan_portfolio_dev/device/domain/usecases/get_device_specs_usecase.dart';
import 'package:mobx/mobx.dart';

part 'about_app_store.g.dart';

/// Store responsável pelo processamento da página "AboutAppPage".
///
/// Possui relação direta com o gerenciamento de estado delagado ao MobX.
///
/// Informações adicionais:
/// - [Pacote mobx](https://pub.dev/packages/mobx).
/// - [Pacote mobx_codegen](https://pub.dev/packages/mobx_codegen).
/// - [Pacote flutter_mobx](https://pub.dev/packages/flutter_mobx).
class AboutAppStore = _AboutAppStoreBase with _$AboutAppStore;

abstract class _AboutAppStoreBase with Store {
  _AboutAppStoreBase(this._getDeviceSpecsUsecase);

  /// Caso-de-uso responsável por recuperar as especificações do dispositivo.
  final IGetDeviceSpecsUsecase _getDeviceSpecsUsecase;

  @readonly
  String? _platform;

  @readonly
  String? _deviceId;

  @readonly
  String? _osVersion;

  @readonly
  String? _deviceName;

  @readonly
  String? _manufacturer;

  /// Efetua o processo de recuperação das configurações do dispositivo por meio do caso-de-uso [IGetDeviceSpecsUsecase].
  @action
  Future<void> load() async {
    try {
      final deviceInfo = await _getDeviceSpecsUsecase.call();
      _platform = deviceInfo.platform;
      _deviceId = deviceInfo.deviceId;
      _osVersion = deviceInfo.osVersion;
      _deviceName = deviceInfo.deviceName;
      _manufacturer = deviceInfo.manufacturer;
    } on Exception {
      rethrow;
    }
  }
}
