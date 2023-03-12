// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: always_use_package_imports, prefer_const_constructors, cascade_invocations, comment_references, require_trailing_commas

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as i1;
import 'package:injectable/injectable.dart' as i2;

import 'package:structure/core/navigator/flutter_navigator.dart';
import 'package:structure/core/navigator/iflutter_navigator.dart';

/// initializes the registration of provided dependencies inside of [GetIt]

i1.GetIt $initGetIt(i1.GetIt sl,
    {String? environment, i2.EnvironmentFilter? environmentFilter}) {
  final gh = i2.GetItHelper(sl, environment, environmentFilter);

  gh.lazySingleton<IFlutterNavigator>(() => FlutterNavigator());

  // gh.lazySingleton(() => GetStorage());
  // gh.lazySingleton<LocalStorageRepo>(() => LocalStorageRepoImpl(sl()));

  // gh.lazySingleton(() => ImagePicker());

  // gh.lazySingleton(() => InternetConnectionChecker());
  // gh.lazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  // gh.lazySingleton<ApiRepo>(() => ApiRepoImpl(sl()));

  // gh.lazySingleton<GetLocationRepo>(() => GetLocationRepoImpl());

  // gh.lazySingleton(() => DashboardBloc(sl(), sl(), sl()));

  // gh.lazySingleton(() => TodaysVisitPlanBloc(sl(), sl()));
  // gh.lazySingleton(() => TodaysVisitPlanBlocOwn(sl(), sl(), sl()));
  // gh.lazySingleton(() => TodaysVisitPlanBlocSupervisor(sl(), sl(), sl()));

  // gh.lazySingleton(() => EmergencyIssueBloc(sl(), sl()));
  // gh.lazySingleton(() => EmergencyIssueBlocOwn(sl(), sl(), sl()));
  // gh.lazySingleton(() => EmergencyIssueBlocSupervisor(sl(), sl(), sl()));

  return sl;
}
