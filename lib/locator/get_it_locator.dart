import 'package:get_it/get_it.dart';
import 'package:qualtrics_digit/qualtrics/qualtrics_manager.dart';
import 'package:qualtrics_digital_flutter_plugin/qualtrics_digital_flutter_plugin.dart';

import '../qualtrics/qualtric_ops.dart';

final sl = GetIt.I;

void setupLocator() {
  sl.registerLazySingleton<QualtricsOps>(() => QualtricsManagerImpl(sl()));
  sl.registerLazySingleton(() => QualtricsDigitalFlutterPlugin());
}
