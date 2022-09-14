import 'package:bmi/src/logic/models/bmi_model.dart';
import 'package:bmi/src/logic/models/people_model.dart';

class BMIController {
  // Dependencie
  BMIModel model;

  // Values
  double _height = 0;
  double _weight = 0;

  // Setter
  set height(double height) => _height = height;
  set weight(double weight) => _weight = weight;

  // Calculate BMI
  PeopleModel calculateBMI() {
    model.calculate(_height, _weight);

    return model.result!;
  }

  // Contructor
  BMIController({
    required this.model,
  });
}
