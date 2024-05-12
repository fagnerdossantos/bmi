import 'package:flutter/widgets.dart';

class WeightController extends ValueNotifier<String> {
  WeightController() : super("");

  update(String v) => value += v;
  clear() {
    // Treatment
    int len = (value.length > 3) ? 3 : value.length;

    if (value.length > 1) {
      value = value.substring(0, len - 1);
    } else {
      value = "";
    }
  }
}
