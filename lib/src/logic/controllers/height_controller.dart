import 'package:flutter/widgets.dart';

class HeightController extends ValueNotifier<double> {
  HeightController() : super(165.0);

  update(double v) => value = v;
}
