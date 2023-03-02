import 'package:bryan_portfolio_dev/device/data/driver/i_device_settings_driver.dart';
import 'package:bryan_portfolio_dev/device/data/services/device_service_impl.dart';
import 'package:bryan_portfolio_dev/device/domain/services/i_device_service.dart';
import 'package:bryan_portfolio_dev/device/domain/usecases/get_device_specs_usecase.dart';
import 'package:bryan_portfolio_dev/device/external/device_settings_driver.dart';
import 'package:bryan_portfolio_dev/device/presentation/about_app_store.dart';
import 'package:get_it/get_it.dart';

class AppModule {
  static void init() {
    final getIt = GetIt.instance;

    // datasource
    getIt.registerLazySingleton<IDeviceSettingsDriver>(
        () => DeviceSettingsDriver());

    // services or repository
    getIt.registerLazySingleton<IDeviceService>(
      () => DeviceServiceImpl(getIt()),
    );

    // usecase
    getIt.registerLazySingleton<IGetDeviceSpecsUsecase>(
      () => GetDeviceUsecaseImpl(getIt()),
    );

    // stores or controllers
    getIt.registerFactory<AboutAppStore>(
      () => AboutAppStore(getIt()),
    );
  }
}
