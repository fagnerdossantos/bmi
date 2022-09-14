import 'package:bmi/src/logic/models/people_model.dart';

class BMIModel {
  // BMI
  PeopleModel? _result;
  PeopleModel? get result => _result;

  void calculate(double height, double weight) {
    // Calculating  __formula weight / height²
    double bmi = weight / (height * height);
    String stats = _status(bmi);

    // Object instance
    final instance = PeopleModel(
      height: height,
      weight: weight,
      bmi: bmi,
      result: stats,
    );

    // Saving the instance
    _result = instance;
  }

  String _status(double bmi) {
    //
    if (bmi < 18.5) {
      return "Abaixo do peso";
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      return "Peso normal";
    } else if (bmi >= 25.0 && bmi <= 29.9) {
      return "Sobrepeso";
    } else if (bmi >= 30.0 && bmi <= 34.9) {
      return "Obesidade I";
    } else if (bmi >= 35.0 && bmi <= 39.9) {
      return "Obesidade II";
    } else {
      return "Obesidade grave III";
    }
  }
}

// IMC: ${bmi.toStringAsPrecision(3)}
