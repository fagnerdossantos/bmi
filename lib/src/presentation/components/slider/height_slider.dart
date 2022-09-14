import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:bmi/src/logic/controllers/values_controller.dart';

class HeightSlider extends StatelessWidget {
  const HeightSlider({super.key});

  @override
  Widget build(BuildContext context) {
    // Controller
    final controller = context.watch<ValuesController>();

    return Slider(
      value: controller.height,
      min: 0,
      max: 3,
      divisions: 300,
      activeColor: Colors.black,
      onChanged: (value) {
        controller.newHeight(value);
      },
    );
  }
}
