import 'package:get_it/get_it.dart';
import 'package:mobile_account_app/core/services/api.dart';
import 'package:mobile_account_app/core/viewmodels/detail_model.dart';

import 'core/viewmodels/account_model.dart';


final GetIt locator = GetIt.instance;

void setupLocator() {
  print("locator ran");
  locator.registerLazySingleton<Api>(() => Api());
  locator.registerFactory<AccountModel>(() => AccountModel());
  locator.registerFactory<DetailModel>(() => DetailModel());
}