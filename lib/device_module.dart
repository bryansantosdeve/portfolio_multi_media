import 'package:bryan_portfolio_dev/device/data/driver/i_device_settings_driver.dart';
import 'package:bryan_portfolio_dev/device/data/services/device_service_impl.dart';
import 'package:bryan_portfolio_dev/device/domain/services/i_device_service.dart';
import 'package:bryan_portfolio_dev/device/domain/usecases/get_device_specs_usecase.dart';
import 'package:bryan_portfolio_dev/device/external/device_settings_driver.dart';
import 'package:bryan_portfolio_dev/device/presentation/about_app_store.dart';
import 'package:get_it/get_it.dart';

/// Módulo do dispositivo responsável por injetar dependências durante a execução da aplicação.
class DeviceModule {
  static void init() {
    final getIt = GetIt.instance;

    // datasources ou drivers.
    getIt.registerLazySingleton<IDeviceSettingsDriver>(
        () => DeviceSettingsDriver());

    // serviços e repositórios.
    getIt.registerLazySingleton<IDeviceService>(
      () => DeviceServiceImpl(getIt()),
    );

    // casos-de-uso.
    getIt.registerLazySingleton<IGetDeviceSpecsUsecase>(
      () => GetDeviceUsecaseImpl(getIt()),
    );

    // stores.
    getIt.registerFactory<AboutAppStore>(
      () => AboutAppStore(getIt()),
    );
  }
}
