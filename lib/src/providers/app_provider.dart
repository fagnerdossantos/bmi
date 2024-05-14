import 'package:bmi/src/logic/controllers/bmi_calculator.dart';
import 'package:bmi/src/logic/controllers/height_controller.dart';
import 'package:bmi/src/logic/controllers/weight_controller.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

class AppProvider {
  void register() {
    getIt.registerLazySingleton(() => HeightController());
    getIt.registerLazySingleton(() => WeightController());
    getIt.registerLazySingleton(() => BMICalculator());
  }
}
