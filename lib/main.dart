import 'package:bmi/src/providers/app_provider.dart';
import 'package:flutter/material.dart';

import 'package:bmi/app_widget.dart';

void main() {
  AppProvider().register();
  runApp(const AppWidget());
}
