// ignore_for_file: library_private_types_in_public_api

import 'package:bryan_portfolio_dev/device/domain/usecases/get_device_specs_usecase.dart';
import 'package:mobx/mobx.dart';

part 'about_app_store.g.dart';

class AboutAppStore = _AboutAppStoreBase with _$AboutAppStore;

abstract class _AboutAppStoreBase with Store {
  _AboutAppStoreBase(this._getDeviceSpecsUsecase);

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
