import 'package:flutter/widgets.dart';

class ValuesController extends ChangeNotifier {
  // Values
  double _height = 0;
  int _weight = 0;
  int _age = 18;

  // Getters
  double get height => _height;
  int get weight => _weight;
  int get age => _age;

  // height
  void newHeight(double height) {
    _height = height;
    notifyListeners();
  }

  // Weight
  void newWeight(int weight) {
    _weight = weight;
    notifyListeners();
  }

  // Age
  void ageLess() {
    _age--;
    notifyListeners();
  }

  void ageMore() {
    _age++;
    notifyListeners();
  }
}
