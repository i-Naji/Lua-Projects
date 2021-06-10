import 'package:get_it/get_it.dart';

import '../utils/const.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
}
